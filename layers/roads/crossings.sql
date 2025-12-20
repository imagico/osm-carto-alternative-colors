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
                        GREATEST(width_nominal*0.35, LEAST(GREATEST(width_max, 2.0), LEAST(width_max*0.65, 5.0/NULLIF(!scale_denominator!*0.001*0.28,0)))) AS crossing_length, -- at least 2 pixel wide, at max 5 meter or 0.65 road width wide, but in any case at least 0.4 times nominal drawing width
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
                                    CASE
                                      WHEN (l.tunnel IN ('yes', 'building_passage', 'avalanche_protector') OR l.covered = 'yes') THEN 'yes'::text
                                      WHEN (l.covered = 'yes') THEN 'yes'::text
                                      ELSE 'no'::text
                                    END AS int_tunnel,
                                    CASE
                                      WHEN (l.bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct')) THEN 'yes'::text
                                      WHEN (l.tags @> 'ford=>yes' OR l.tags @> 'ford=>stepping_stones') THEN 'ford'::text
                                      ELSE 'no'::text
                                    END AS int_bridge,
                                    carto_road_access(l.highway, l.access, l.tags->'vehicle', l.tags->'motor_vehicle', l.tags->'motorcar', l.bicycle, l.horse, l.foot, l.tags->'bus', l.tags->'psv') AS int_access,
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
                                    JOIN planet_osm_line l ON ST_DWithin(p.way, l.way, 0.1) -- Assumes Mercator
                                  WHERE (p.highway = 'crossing' AND p.tags->'crossing' IN ('uncontrolled', 'unmarked', 'marked', 'traffic_signals', 'zebra', 'informal'))
                                    AND p.way && !bbox!
                                    AND (z(!scale_denominator!) >= 15)
                                    AND l.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'pedestrian', 'living_street', 'service')
                                ) AS crossings_raw
                              GROUP BY point, marking, island, highway, feature
                            ) AS crossings_merged
                        ) AS crossings_flat
                    ) AS crossings_mod
                -- end of crossings point pseudo-line select
