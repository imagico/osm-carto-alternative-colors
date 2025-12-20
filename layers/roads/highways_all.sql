                WITH highways_ends AS
                  (SELECT
                      -- these are cutting circles around the unconnected start and end points
                      CASE
                        WHEN start_open != 0 AND end_open != 0 THEN
                          COALESCE(
                            ST_Buffer(ST_Union(ST_StartPoint(way), ST_EndPoint(way)), (1.5*width_max + 2.0*casing_width)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          )
                        WHEN start_open != 0 THEN
                          COALESCE(
                            ST_Buffer(ST_StartPoint(way), (1.5*width_max + 2.0*casing_width)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          )
                        WHEN end_open != 0 THEN
                          COALESCE(
                            ST_Buffer(ST_EndPoint(way), (1.5*width_max + 2.0*casing_width)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          )
                      ELSE
                        NULL
                      END AS end_cuts,
                      -- these are reduced cutting circles for the ends to ensure continuous drawing of lanes
                      CASE
                        WHEN start_open != 0 AND end_open != 0 THEN
                          COALESCE(
                            ST_Buffer(ST_Union(ST_StartPoint(way), ST_EndPoint(way)), (1.5*width_max + 2.0*casing_width + 2.0*width_lane)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          )
                        WHEN start_open != 0 THEN
                          COALESCE(
                            ST_Buffer(ST_StartPoint(way), (1.5*width_max + 2.0*casing_width + 2.0*width_lane)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          )
                        WHEN end_open != 0 THEN
                          COALESCE(
                            ST_Buffer(ST_EndPoint(way), (1.5*width_max + 2.0*casing_width + 2.0*width_lane)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          )
                      ELSE
                        NULL
                      END AS end_cuts_ext,
                      way,
                      -- these are modified way geometries for the different types of start and end
                      CASE
                        WHEN start_open = 1 AND end_open = 1 THEN
                          ST_LineSubstring(way, casing_width/length_px, 1.0-casing_width/length_px)
                        WHEN start_open = 2 AND end_open = 1 THEN
                          ST_LineSubstring(way, 2.5*casing_width/length_px, 1.0-casing_width/length_px)
                        WHEN start_open = 1 AND end_open = 2 THEN
                          ST_LineSubstring(way, casing_width/length_px, 1.0-2.5*casing_width/length_px)
                        WHEN start_open = 2 AND end_open = 2 THEN
                          ST_LineSubstring(way, 2.5*casing_width/length_px, 1.0-2.5*casing_width/length_px)
                        WHEN start_open = 2 THEN
                          ST_LineSubstring(way, 2.5*casing_width/length_px, 1.0)
                        WHEN end_open = 2 THEN
                          ST_LineSubstring(way, 0.0, 1.0-2.5*casing_width/length_px)
                        WHEN start_open = 1 THEN
                          ST_LineSubstring(way, casing_width/length_px, 1.0)
                        WHEN end_open = 1 THEN
                          ST_LineSubstring(way, 0.0, 1.0-casing_width/length_px)
                      ELSE
                        way
                      END AS way_fill,
                      CASE
                        WHEN start_open = 3 AND end_open = 3 THEN
                          ST_LineSubstring(way, casing_width/length_px, 1.0-casing_width/length_px)
                        WHEN start_open = 3 THEN
                          ST_LineSubstring(way, casing_width/length_px, 1.0)
                        WHEN end_open = 3 THEN
                          ST_LineSubstring(way, 0.0, 1.0-casing_width/length_px)
                      ELSE
                        way
                      END AS way_casing,
                      way_orig,
                      clip,
                      feature,
                      highway,
                      path_type,
                      int_surface,
                      int_tunnel,
                      int_bridge,
                      int_lane_right,
                      int_lane_left,
                      int_lanes,
                      int_side_right,
                      int_side_left,
                      int_access,
                      construction,
                      service,
                      link,
                      width_lane,
                      width_lane_cycle,
                      width_nominal,
                      width_tagged,
                      casing_width,
                      length_px,
                      layernotnull,
                      osm_id,
                      z_order
                  FROM
                    (SELECT
                        way,
                        way_orig,
                        CASE
                          WHEN highway = 'steps'
                            THEN  0
                          WHEN (width_max < 4.0) AND (z(!scale_denominator!) < 15)  -- skip very narrow roads at low zooms
                            THEN 0
                          WHEN length_px < 3.0*casing_width -- too short for splitting
                            THEN 0
                          WHEN highway IN ('track', 'path', 'footway', 'cycleway', 'bridleway') -- narrow line highway
                            THEN
                              CASE WHEN (width_tagged > width_nominal) AND int_tunnel != 'yes' -- with background
                                THEN
                                  CASE WHEN EXISTS
                                    (SELECT 1 FROM planet_osm_line h2
                                      WHERE ST_DWithin(h2.way, ST_StartPoint(hwj.way), 0.1) AND hwj.osm_id != h2.osm_id
                                        AND carto_road_tunnel(h2.tunnel, h2.covered) != 'yes'
                                        AND (h2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'platform', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps') OR h2.railway IN ('platform') OR h2.aeroway IN ('runway', 'taxiway')))
                                    THEN 0
                                  WHEN EXISTS
                                    (SELECT 1 FROM planet_osm_polygon p
                                      WHERE ST_DWithin(p.way, ST_StartPoint(hwj.way), 0.1)
                                        AND (hwj.int_tunnel = 'yes' OR carto_road_tunnel(p.tunnel, p.covered) != 'yes')
                                        AND (p.highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform') OR p.railway IN ('platform') OR p.aeroway IN ('runway', 'taxiway')))
                                    THEN 0
                                  WHEN highway = 'track' AND EXISTS
                                    (SELECT 1 FROM planet_osm_point p
                                      WHERE ST_DWithin(p.way, ST_StartPoint(hwj.way), 0.1)
                                        AND p.highway IN ('turning_circle', 'turning_loop', 'mini_roundabout', 'passing_place'))
                                    THEN 0
                                  WHEN EXISTS
                                    (SELECT 1 FROM planet_osm_point p
                                      WHERE ST_DWithin(p.way, ST_StartPoint(hwj.way), 0.1)
                                        AND p.tags->'noexit' IN ('yes'))
                                    THEN 2
                                  WHEN EXISTS
                                    (SELECT 1 FROM planet_osm_point p
                                      WHERE ST_DWithin(p.way, ST_StartPoint(hwj.way), 0.1)
                                        AND p.tags->'fixme' IN ('continue'))
                                    THEN 3
                                  ELSE 1
                                  END
                              ELSE 0
                              END
                          WHEN int_bridge = 'yes' AND EXISTS -- direct tunnel to bridge connections are drawn without a (bridge) casing line
                            (SELECT 1 FROM planet_osm_line h2
                              WHERE ST_DWithin(h2.way, ST_StartPoint(hwj.way), 0.1) AND hwj.osm_id != h2.osm_id
                                AND (carto_road_tunnel(h2.tunnel, h2.covered) = 'yes')
                                AND (h2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'platform') OR h2.railway IN ('platform') OR h2.aeroway IN ('runway', 'taxiway')))
                            THEN 3
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_line h2
                              WHERE ST_DWithin(h2.way, ST_StartPoint(hwj.way), 0.1) AND hwj.osm_id != h2.osm_id
                                AND (hwj.int_tunnel = 'yes' OR carto_road_tunnel(h2.tunnel, h2.covered) != 'yes')
                                AND (h2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'platform') OR h2.railway IN ('platform') OR h2.aeroway IN ('runway', 'taxiway')))
                            THEN 0
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_polygon p
                              WHERE ST_DWithin(p.way, ST_StartPoint(hwj.way), 0.1)
                                AND (hwj.int_tunnel = 'yes' OR carto_road_tunnel(p.tunnel, p.covered) != 'yes')
                                AND (p.highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform') OR p.railway IN ('platform') OR p.aeroway IN ('runway', 'taxiway')))
                            THEN 0
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_point p
                              WHERE ST_DWithin(p.way, ST_StartPoint(hwj.way), 0.1)
                                AND p.highway IN ('turning_circle', 'turning_loop', 'mini_roundabout', 'passing_place'))
                            THEN 0
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_point p
                              WHERE ST_DWithin(p.way, ST_StartPoint(hwj.way), 0.1)
                                AND p.tags->'noexit' IN ('yes'))
                            THEN 2
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_point p
                              WHERE ST_DWithin(p.way, ST_StartPoint(hwj.way), 0.1)
                                AND p.tags->'fixme' IN ('continue'))
                            THEN 3
                        ELSE 1
                        END AS start_open,
                        CASE
                          WHEN highway = 'steps'
                            THEN  0
                          WHEN (width_max < 4.0) AND (z(!scale_denominator!) < 15)  -- skip very narrow roads at low zooms
                            THEN 0
                          WHEN length_px < 3.0*casing_width -- too short for splitting
                            THEN 0
                          WHEN highway IN ('track', 'path', 'footway', 'cycleway', 'bridleway') -- narrow line highway
                            THEN
                              CASE WHEN (width_tagged > width_nominal) AND int_tunnel != 'yes' -- with background
                                THEN
                                  CASE WHEN EXISTS
                                    (SELECT 1 FROM planet_osm_line h2
                                      WHERE ST_DWithin(h2.way, ST_EndPoint(hwj.way), 0.1) AND hwj.osm_id != h2.osm_id
                                        AND carto_road_tunnel(h2.tunnel, h2.covered) != 'yes'
                                        AND (h2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'platform', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps') OR h2.railway IN ('platform') OR h2.aeroway IN ('runway', 'taxiway')))
                                    THEN 0
                                  WHEN EXISTS
                                    (SELECT 1 FROM planet_osm_polygon p
                                      WHERE ST_DWithin(p.way, ST_EndPoint(hwj.way), 0.1)
                                        AND (hwj.int_tunnel = 'yes' OR carto_road_tunnel(p.tunnel, p.covered) != 'yes')
                                        AND (p.highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform') OR p.railway IN ('platform') OR p.aeroway IN ('runway', 'taxiway')))
                                    THEN 0
                                  WHEN highway = 'track' AND EXISTS
                                    (SELECT 1 FROM planet_osm_point p
                                      WHERE ST_DWithin(p.way, ST_EndPoint(hwj.way), 0.1)
                                        AND p.highway IN ('turning_circle', 'turning_loop', 'mini_roundabout', 'passing_place'))
                                    THEN 0
                                  WHEN EXISTS
                                    (SELECT 1 FROM planet_osm_point p
                                      WHERE ST_DWithin(p.way, ST_EndPoint(hwj.way), 0.1)
                                        AND p.tags->'noexit' IN ('yes'))
                                    THEN 2
                                  WHEN EXISTS
                                    (SELECT 1 FROM planet_osm_point p
                                      WHERE ST_DWithin(p.way, ST_EndPoint(hwj.way), 0.1)
                                        AND p.tags->'fixme' IN ('continue'))
                                    THEN 3
                                  ELSE 1
                                  END
                              ELSE 0
                              END
                          WHEN int_bridge = 'yes' AND EXISTS -- direct tunnel to bridge connections are drawn without a (bridge) casing line
                            (SELECT 1 FROM planet_osm_line h2
                              WHERE ST_DWithin(h2.way, ST_EndPoint(hwj.way), 0.1) AND hwj.osm_id != h2.osm_id
                                AND (carto_road_tunnel(h2.tunnel, h2.covered) = 'yes')
                                AND (h2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'platform') OR h2.railway IN ('platform') OR h2.aeroway IN ('runway', 'taxiway')))
                            THEN 3
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_line h2
                              WHERE ST_DWithin(h2.way, ST_EndPoint(hwj.way), 0.1) AND hwj.osm_id != h2.osm_id
                                AND (hwj.int_tunnel = 'yes' OR carto_road_tunnel(h2.tunnel, h2.covered) != 'yes')
                                AND (h2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'platform') OR h2.railway IN ('platform') OR h2.aeroway IN ('runway', 'taxiway')))
                            THEN 0
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_polygon p
                              WHERE ST_DWithin(p.way, ST_EndPoint(hwj.way), 0.1)
                                AND (hwj.int_tunnel = 'yes' OR carto_road_tunnel(p.tunnel, p.covered) != 'yes')
                                AND (p.highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform') OR p.railway IN ('platform') OR p.aeroway IN ('runway', 'taxiway')))
                            THEN 0
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_point p
                              WHERE ST_DWithin(p.way, ST_EndPoint(hwj.way), 0.1)
                                AND p.highway IN ('turning_circle', 'turning_loop', 'mini_roundabout', 'passing_place'))
                            THEN 0
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_point p
                              WHERE ST_DWithin(p.way, ST_EndPoint(hwj.way), 0.1)
                                AND p.tags->'noexit' IN ('yes'))
                            THEN 2
                          WHEN EXISTS
                            (SELECT 1 FROM planet_osm_point p
                              WHERE ST_DWithin(p.way, ST_EndPoint(hwj.way), 0.1)
                                AND p.tags->'fixme' IN ('continue'))
                            THEN 3
                        ELSE 1
                        END AS end_open,
                        clip,
                        feature,
                        highway,
                        path_type,
                        int_surface,
                        int_tunnel,
                        int_bridge,
                        int_lane_right,
                        int_lane_left,
                        int_lanes,
                        int_side_right,
                        int_side_left,
                        int_access,
                        construction,
                        service,
                        link,
                        width_lane,
                        width_lane_cycle,
                        width_nominal,
                        width_tagged,
                        width_max,
                        casing_width,
                        length_px,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM
                        (SELECT
                            way,
                            way_orig,
                            clip,
                            feature,
                            highway,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            int_lane_right,
                            int_lane_left,
                            int_lanes,
                            int_side_right,
                            int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_lane,
                            width_lane_cycle,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            ST_Length(way)/NULLIF(!scale_denominator!*0.001*0.28,0) AS length_px,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM
                            (SELECT
                                ST_Difference(
                                  h.way,
                                  COALESCE(
                                    j.bounds,
                                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                  )
                                ) AS way,
                                h.way AS way_orig,
                                j.clip AS clip,
                                h.feature AS feature,
                                h.highway AS highway,
                                h.path_type AS path_type,
                                h.int_surface AS int_surface,
                                h.int_tunnel AS int_tunnel,
                                h.int_bridge AS int_bridge,
                                h.int_lane_right AS int_lane_right,
                                h.int_lane_left AS int_lane_left,
                                h.int_lanes AS int_lanes,
                                h.int_side_right AS int_side_right,
                                h.int_side_left AS int_side_left,
                                h.int_access AS int_access,
                                h.construction AS construction,
                                h.service AS service,
                                h.link AS link,
                                h.width_lane AS width_lane,
                                h.width_lane_cycle AS width_lane_cycle,
                                h.width_nominal AS width_nominal,
                                h.width_tagged AS width_tagged,
                                GREATEST(h.width_nominal, h.width_tagged) AS width_max,
                                carto_casing_line_width(h.highway, h.int_bridge, z(!scale_denominator!)) AS casing_width,
                                h.layernotnull AS layernotnull,
                                h.osm_id AS osm_id,
                                h.z_order AS z_order
                              FROM highways_raw h
                              LEFT JOIN
                                (SELECT
                                    ST_Union(bounds) AS bounds,
                                    ST_Union(clip) AS clip,
                                    osm_id
                                  FROM junctions GROUP BY osm_id
                                ) AS j
                                ON j.osm_id = h.osm_id
                            UNION ALL
                            SELECT
                                way,
                                way AS way_orig,
                                NULL AS clip,
                                feature,
                                highway,
                                path_type,
                                int_surface,
                                int_tunnel,
                                int_bridge,
                                int_lane_right,
                                int_lane_left,
                                int_lanes,
                                int_side_right,
                                int_side_left,
                                int_access,
                                construction,
                                service,
                                link,
                                width_lane,
                                width_lane_cycle,
                                width_nominal,
                                width_tagged,
                                GREATEST(width_nominal, width_tagged) AS width_max,
                                carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)) AS casing_width,
                                layernotnull,
                                osm_id,
                                z_order
                              FROM aeroways_raw
                            ) AS hwj2
                        ) AS hwj
                    ) AS _
                  )
                SELECT -- roads with both start and end point connected - use as is
                    way,
                    way_orig,
                    NULL::GEOMETRY AS way_ext,
                    clip,
                    feature,
                    highway,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane_right,
                    int_lane_left,
                    int_lanes,
                    int_side_right,
                    int_side_left,
                    int_access,
                    construction,
                    service,
                    link,
                    CASE WHEN end_cuts IS NULL THEN
                      'null'
                    ELSE
                      'line_separate'
                    END AS connect_type,
                    width_lane,
                    width_lane_cycle,
                    width_nominal,
                    width_tagged,
                    casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM highways_ends
                  WHERE end_cuts IS NULL OR highway IN ('track', 'path', 'footway', 'cycleway', 'bridleway')
                UNION ALL
                SELECT -- roads with open starts or ends - cut these off so the remainder can be drawn normally with round line caps
                    ST_Difference(way, end_cuts) AS way,
                    ST_Difference(way_orig, end_cuts) AS way_orig,
                    NULL::GEOMETRY AS way_ext,
                    clip,
                    feature,
                    highway,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane_right,
                    int_lane_left,
                    int_lanes,
                    int_side_right,
                    int_side_left,
                    int_access,
                    construction,
                    service,
                    link,
                    CASE WHEN highway IN ('track', 'path', 'footway', 'cycleway', 'bridleway') THEN
                      'background'
                    ELSE
                      'null'
                    END AS connect_type,
                    width_lane,
                    width_lane_cycle,
                    width_nominal,
                    width_tagged,
                    casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM highways_ends
                  WHERE end_cuts IS NOT NULL
                UNION ALL
                SELECT -- roads with open starts or ends - ends only, to be rendered with flat line caps - fill version trimmed by casing width
                    ST_Intersection(way_fill, end_cuts) AS way,
                    ST_Intersection(way_fill, end_cuts) AS way_orig, -- way_orig should be same as way here because open end means no junction
                    ST_Intersection(way_fill, end_cuts_ext) AS way_ext,
                    clip,
                    feature,
                    highway,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane_right,
                    int_lane_left,
                    int_lanes,
                    int_side_right,
                    int_side_left,
                    int_access,
                    construction,
                    service,
                    link,
                    CASE WHEN highway IN ('track', 'path', 'footway', 'cycleway', 'bridleway') THEN
                      'flat_end_fill_background'
                    ELSE
                      'flat_end_fill'
                    END AS connect_type,
                    width_lane,
                    width_lane_cycle,
                    width_nominal,
                    width_tagged,
                    casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM highways_ends
                  WHERE end_cuts IS NOT NULL
                UNION ALL
                SELECT -- roads with open starts or ends - ends only, to be rendered with flat line caps - casing version has full length
                    ST_Intersection(way_casing, end_cuts) AS way,
                    ST_Intersection(way_casing, end_cuts) AS way_orig, -- way_orig should be same as way here because open end means no junction
                    NULL::GEOMETRY AS way_ext,
                    clip,
                    feature,
                    highway,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane_right,
                    int_lane_left,
                    int_lanes,
                    int_side_right,
                    int_side_left,
                    int_access,
                    construction,
                    service,
                    link,
                    CASE WHEN highway IN ('track', 'path', 'footway', 'cycleway', 'bridleway') THEN
                      'flat_end_casing_background'
                    ELSE
                      'flat_end_casing'
                    END AS connect_type,
                    width_lane,
                    width_lane_cycle,
                    width_nominal,
                    width_tagged,
                    casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM highways_ends
                  WHERE end_cuts IS NOT NULL
