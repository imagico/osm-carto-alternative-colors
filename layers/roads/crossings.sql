                SELECT -- begin of crossing point pseudo-line select
                    CASE WHEN marking = 'no' THEN
                      CASE WHEN crossing_length < 8.0 THEN
                        ST_Collect(
                          ST_LineSubstring(way, GREATEST(0, position-length*0.5*crossing_length), GREATEST(0, position-length*0.25*crossing_length)),
                          ST_LineSubstring(way, LEAST(1, position+length*0.25*crossing_length), LEAST(1, position+length*0.5*crossing_length))
                        )
                      ELSE
                        ST_Collect(ARRAY[
                          ST_LineSubstring(way, GREATEST(0, position-length*0.5*crossing_length), GREATEST(0, position-length*0.35*crossing_length)),
                          ST_LineSubstring(way, GREATEST(0, position-length*0.075*crossing_length), LEAST(1, position+length*0.075*crossing_length)),
                          ST_LineSubstring(way, LEAST(1, position+length*0.35*crossing_length), LEAST(1, position+length*0.5*crossing_length))
                        ])
                      END
                    ELSE
                      ST_LineSubstring(way, GREATEST(0, position-length*0.5*crossing_length), LEAST(1, position+length*0.5*crossing_length))
                    END AS way,
                    feature,
                    NULL AS path_type,
                    'paved' AS int_surface,
                    int_tunnel,
                    int_bridge,
                    'no' AS int_lane,
                    island AS int_lanes,
                    int_access,
                    NULL AS construction,
                    NULL AS service,
                    'no' AS link,
                    'crossing' AS connect_type,
                    0 AS width_lane,
                    width_nominal,
                    width_tagged,
                    carto_casing_line_width(highway, 'no', z(!scale_denominator!)) AS casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                    (SELECT
                        way,
                        ST_LineLocatePoint(way, point) AS position, -- this is the position along the way
                        NULLIF(!scale_denominator!*0.001*0.28,0)/ST_Length(way) AS length, -- this is the pixel size as a fraction of the way length
                        GREATEST(width_nominal*0.35, LEAST(GREATEST(width_max, 2.0), LEAST(width_max*0.65, 5.0/NULLIF(!scale_denominator!*0.001*0.28,0)))) AS crossing_length, -- at least 2 pixel wide, at max 5 meter and 0.65 road width, but in any case at least 0.35 times nominal drawing width
                        feature,
                        highway,
                        int_tunnel,
                        int_bridge,
                        int_access,
                        width_nominal,
                        width_tagged,
                        marking,
                        island,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM
                        (SELECT
                            (ST_Dump(way)).geom AS way,
                            point,
                            feature,
                            highway,
                            int_tunnel,
                            int_bridge,
                            int_access,
                            width_nominal,
                            width_tagged,
                            GREATEST(width_nominal, width_tagged) AS width_max,
                            marking,
                            island,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM
                            (SELECT
                                ST_LineMerge(ST_Collect(way)) AS way,
                                point,
                                feature,
                                highway,
                                MIN(int_tunnel) AS int_tunnel,
                                MAX(int_bridge) AS int_bridge,
                                MAX(int_access) AS int_access,
                                AVG(width_nominal) AS width_nominal,
                                AVG(width_tagged) AS width_tagged,
                                marking,
                                island,
                                MAX(layernotnull) AS layernotnull,
                                MAX(osm_id) AS osm_id,
                                MAX(z_order) AS z_order
                              FROM
                                (SELECT
                                    l.way AS way, -- this is the highway intersecting the crossing node
                                    p.way AS point,
                                    ('highway_' || l.highway) AS feature,
                                    l.highway AS highway,
                                    carto_road_tunnel(l.tunnel, l.covered) AS int_tunnel,
                                    carto_road_bridge(l.bridge, l.tags->'ford') AS int_bridge,
                                    int_access,
                                    carto_highway_line_width(l.highway, l.service, z(!scale_denominator!)) AS width_nominal,
                                    carto_highway_line_width_mapped(
                                      l.highway,
                                      l.tags->'width:carriageway',
                                      l.tags->'width',
                                      l.tags->'lanes',
                                      l.tags->'parking:both',
                                      l.tags->'parking:right',
                                      l.tags->'parking:left',
                                      !bbox!,
                                      !scale_denominator!
                                    ) AS width_tagged,
                                    CASE
                                      WHEN p.tags->'crossing' IN ('unmarked', 'informal') THEN 'no'
                                      WHEN p.tags->'crossing:marking' = 'no' THEN 'no'
                                      ELSE 'yes'
                                    END AS marking,
                                    CASE WHEN p.tags->'crossing:island' = 'yes' THEN 'yes' ELSE 'no' END AS island,
                                    COALESCE(l.layer,0) AS layernotnull,
                                    p.osm_id AS osm_id,
                                    l.z_order AS z_order
                                  FROM planet_osm_point p
                                    JOIN LATERAL
                                      -- this picks a road identified to be crossed (either one or two ways) in case the crossing is ambiguously at a junction.
                                      -- which to pick is determined by the ORDER BY statement below
                                      (WITH lines_crossing AS
                                        (SELECT
                                            way,
                                            ltype,
                                            ROW_NUMBER() OVER (
                                              ORDER BY
                                                CASE
                                                  WHEN highway IN ('track', 'path', 'footway', 'cycleway', 'bridleway', 'steps') THEN 0
                                                  WHEN highway IN ('pedestrian') THEN 1
                                                  WHEN highway IN ('living_street') THEN 2
                                                  WHEN int_access IN ('foot') THEN z_order
                                                  WHEN int_access IN ('no', 'bus', 'bicycle', 'foot', 'horse') THEN z_order+1000
                                                  WHEN int_access IN ('foot+light') THEN z_order+2000
                                                  WHEN int_access IN ('light', 'bus+light', 'bicycle+light', 'horse+light') THEN z_order+3000
                                                ELSE z_order+4000
                                                END DESC,
                                                ltype DESC,
                                                (tags->'width')::NUMERIC DESC NULLS LAST,
                                                (tags->'width:carriageway')::NUMERIC DESC NULLS LAST,
                                                carto_highway_lane_count (highway, tags->'lanes', oneway) DESC NULLS LAST,
                                                ST_Length(way) DESC,
                                                osm_id
                                            ) AS row_number,
                                            tags,
                                            highway,
                                            tunnel,
                                            covered,
                                            bridge,
                                            int_access,
                                            service,
                                            layer,
                                            z_order,
                                            osm_id
                                        FROM
                                          (SELECT
                                              way,
                                              CASE WHEN ST_DWithin(p.way, ST_Collect(ST_StartPoint(l.way), ST_EndPoint(l.way)), 0.1) THEN 1 ELSE 2 END AS ltype, 
                                              tags,
                                              highway,
                                              tunnel,
                                              covered,
                                              bridge,
                                              carto_road_access(highway, access, tags->'vehicle', tags->'motor_vehicle', tags->'motorcar', bicycle, horse, foot, tags->'bus', tags->'psv') AS int_access,
                                              oneway,
                                              service,
                                              layer,
                                              z_order,
                                              osm_id
                                            FROM planet_osm_line l
                                            WHERE ST_DWithin(p.way, l.way, 0.1) -- Assumes Mercator
                                              AND l.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'pedestrian', 'living_street', 'service')
                                          ) AS _
                                        ORDER BY row_number
                                        LIMIT 2)
                                      -- this is the actual query for the join which picks either one or two road lines - if two they are later merged with ST_LineMerge()
                                      SELECT
                                          *
                                        FROM lines_crossing
                                        ORDER BY row_number
                                        LIMIT
                                          CASE
                                            WHEN (SELECT ltype FROM lines_crossing ORDER BY row_number LIMIT 1) = 2 THEN 1 -- first has crossing mid way - use only that
                                            WHEN (SELECT MAX(highway) = MIN(highway) FROM lines_crossing) = TRUE THEN 2 -- both have same highway tag - use both
                                            ELSE 1 -- otherwise use only first
                                          END
                                      ) l ON TRUE
                                  WHERE (p.highway = 'crossing' AND p.tags->'crossing' IN ('uncontrolled', 'unmarked', 'marked', 'traffic_signals', 'zebra', 'informal'))
                                    AND p.way && !bbox!
                                    AND (z(!scale_denominator!) >= 15)
                                ) AS crossings_raw
                              GROUP BY point, marking, island, highway, feature
                            ) AS crossings_merged
                        ) AS crossings_flat
                    ) AS crossings_mod
                -- end of crossings point pseudo-line select
