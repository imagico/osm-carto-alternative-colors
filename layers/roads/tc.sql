            SELECT
                way,
                (CASE WHEN substr(feature, length(feature)-4, 5) = '_link' THEN substr(feature, 0, length(feature)-4) ELSE feature END) AS feature,
                path_type,
                int_surface,
                int_tunnel,
                int_bridge,
                int_lane_right,
                int_lane_left,
                int_lanes,
                int_access,
                construction,
                service,
                link,
                tc_type,
                width,
                carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)) AS casing_width,
                layernotnull,
                osm_id,
                z_order
              FROM
                (WITH tc_combos AS
                  (SELECT DISTINCT ON (p.way)
                      p.way AS way,
                      p.highway AS tc_type,
                      l.way AS lway,
                      ('highway_' || l.highway) AS feature,
                      l.highway AS highway,
                      carto_path_type(l.foot, l.bicycle, l.horse) AS path_type,
                      CASE
                        WHEN surface IN ('unpaved', 'compacted', 'dirt', 'earth', 'fine_gravel', 'grass', 'grass_paver', 'gravel', 'ground',
                                         'mud', 'pebblestone', 'salt', 'sand', 'woodchips', 'clay') THEN 'unpaved'::text
                        WHEN surface IN ('paved', 'asphalt', 'cobblestone', 'cobblestone:flattened', 'sett', 'concrete', 'concrete:lanes',
                                         'concrete:plates', 'paving_stones', 'metal', 'wood') THEN 'paved'::text
                        ELSE NULL
                      END AS int_surface,
                      CASE
                        WHEN (l.tunnel IN ('yes', 'building_passage', 'avalanche_protector') OR covered = 'yes') THEN 'yes'::text
                        WHEN (l.covered = 'yes') THEN 'yes'::text
                        ELSE 'no'::text
                      END AS int_tunnel,
                      CASE
                        WHEN (l.bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct')) THEN 'yes'::text
                        WHEN (l.tags @> 'ford=>yes' OR l.tags @> 'ford=>stepping_stones') THEN 'ford'::text
                        ELSE 'no'::text
                      END AS int_bridge,
                      'null' AS int_lane_right,
                      'null' AS int_lane_left,
                      NULL AS int_lanes,
                      carto_road_access(l.highway, l.access, l.tags->'vehicle', l.tags->'motor_vehicle', l.tags->'motorcar', l.bicycle, l.horse, l.foot, l.tags->'bus', l.tags->'psv') AS int_access,
                      l.construction AS construction,
                      CASE WHEN l.service IN ('parking_aisle', 'drive-through', 'driveway')
                        THEN 'INT-minor'::text
                        ELSE 'INT-normal'::text
                      END AS service,
                      CASE
                        WHEN substr(l.highway, length(l.highway)-4, 5) = '_link' THEN 'yes'
                        ELSE 'no'
                      END AS link,
                      GREATEST(
                        GREATEST(
                          CASE
                            WHEN l.highway = 'track' THEN
                              CASE z(!scale_denominator!)
                                WHEN 15 THEN 5.75
                                WHEN 16 THEN 6.75
                                WHEN 17 THEN 7.75
                                ELSE 8.75
                              END
                            ELSE carto_highway_line_width(l.highway, l.service, z(!scale_denominator!))*1.7
                          END,
                          carto_highway_line_width_mapped(l.highway, l.tags->'width', l.tags->'lanes', !bbox!, !scale_denominator!)*1.375
                        ),
                        CASE WHEN p.tags->'diameter' ~ '^-?\d{1,4}(\.\d+)?$' THEN (p.tags->'diameter')::NUMERIC / NULLIF(scale_factor(p.way)*!scale_denominator!*0.001*0.28,0) ELSE 0.0 END
                      ) AS width,
                      COALESCE(l.layer,0) AS layernotnull,
                      l.osm_id AS osm_id,
                      l.z_order AS z_order
                    FROM planet_osm_point p
                      JOIN planet_osm_line l ON ST_DWithin(p.way, l.way, 0.1) -- Assumes Mercator
                    WHERE p.highway IN ('turning_circle', 'turning_loop', 'mini_roundabout', 'passing_place')
                      AND l.highway IN ('trunk', 'trunk_link', 'primary', 'primary_link', 'secondary', 'secondary_link',
                                        'tertiary', 'tertiary_link', 'residential', 'unclassified', 'service',
                                        'living_street', 'track', 'busway', 'bus_guideway')
                      AND p.way && !bbox!
                      AND z(!scale_denominator!) >= 15
                  )
                SELECT
                    ST_MakeLine(way, ST_Translate(way, 0, 0.01)) AS way,
                    feature,
                    highway,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane_right,
                    int_lane_left,
                    int_lanes,
                    int_access,
                    construction,
                    service,
                    link,
                    tc_type,
                    width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM tc_combos
                  WHERE tc_type IN ('turning_circle', 'turning_loop', 'mini_roundabout')
                UNION ALL
                SELECT
                    ST_LineSubstring(way, GREATEST(0, position-length*0.25*width), LEAST(1, position+length*0.25*width)) AS way,
                    feature,
                    highway,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane_right,
                    int_lane_left,
                    int_lanes,
                    int_access,
                    construction,
                    service,
                    link,
                    tc_type,
                    width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                    (SELECT
                        lway AS way, -- this is the highway intersecting the passing_place node
                        ST_LineLocatePoint(lway, way) AS position, -- this is the position along the way
                        NULLIF(!scale_denominator!*0.001*0.28,0)/ST_Length(lway) AS length, -- this is the pixel size as a fraction of the way length
                        feature,
                        highway,
                        path_type,
                        int_surface,
                        int_tunnel,
                        int_bridge,
                        int_lane_right,
                        int_lane_left,
                        int_lanes,
                        int_access,
                        construction,
                        service,
                        link,
                        tc_type,
                        width,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM tc_combos
                      WHERE tc_type IN ('passing_place')) AS pp_combos
                ) AS turning_circle_features
