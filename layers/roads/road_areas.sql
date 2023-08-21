            SELECT
                way,
                COALESCE(
                  ('highway_' || (CASE WHEN highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'cycleway', 'living_street', 
                                                    'track', 'path', 'platform', 'services') THEN highway ELSE NULL END)),
                  ('railway_' || (CASE WHEN railway IN ('platform') THEN railway ELSE NULL END)),
                  ('aeroway_' || (CASE WHEN aeroway IN ('runway', 'taxiway', 'helipad') THEN aeroway ELSE NULL END))
                ) AS feature,
                carto_path_type(foot, bicycle, horse) AS path_type,
                CASE
                  WHEN surface IN ('unpaved', 'compacted', 'dirt', 'earth', 'fine_gravel', 'grass', 'grass_paver', 'gravel', 'ground',
                                   'mud', 'pebblestone', 'salt', 'sand', 'woodchips', 'clay') THEN 'unpaved'::text
                  WHEN surface IN ('paved', 'asphalt', 'cobblestone', 'cobblestone:flattened', 'sett', 'concrete', 'concrete:lanes',
                                   'concrete:plates', 'paving_stones', 'metal', 'wood') THEN 'paved'::text
                  ELSE NULL
                END AS int_surface,
                CASE
                  WHEN (tunnel IN ('yes', 'building_passage', 'avalanche_protector') OR covered = 'yes') THEN 'yes'::text
                  WHEN (covered = 'yes') THEN 'yes'::text
                  ELSE 'no'::text
                END AS int_tunnel,
                CASE
                  WHEN (bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct')) THEN 'yes'::text
                  WHEN (tags @> 'ford=>yes' OR tags @> 'ford=>stepping_stones') THEN 'ford'::text
                  ELSE 'no'::text
                END AS int_bridge,
                'null' AS int_lane_right,
                'null' AS int_lane_left,
                NULL AS int_lanes,
                carto_road_access(highway, access, tags->'vehicle', tags->'motor_vehicle', tags->'motorcar', bicycle, horse, foot, tags->'bus', tags->'psv') AS int_access,
                construction,
                CASE
                  WHEN service IN ('parking_aisle', 'drive-through', 'driveway') OR leisure IN ('slipway') THEN 'INT-minor'::text
                  ELSE 'INT-normal'::text
                END AS service,
                'no' AS link,
                0 AS width_nominal,
                0 AS width_max,
                0 AS width,
                carto_casing_line_width(
                  highway,
                  CASE
                    WHEN (bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct')) THEN 'yes'::text
                    WHEN (tags @> 'ford=>yes' OR tags @> 'ford=>stepping_stones') THEN 'ford'::text
                    ELSE 'no'::text
                  END,
                  z(!scale_denominator!)) AS casing_width,
                COALESCE(layer,0) AS layernotnull,
                osm_id,
                z_order
              FROM planet_osm_polygon
              WHERE (highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform')
                OR railway IN ('platform')
                OR aeroway IN ('runway', 'taxiway', 'helipad'))
                AND way && !bbox!
                AND z(!scale_denominator!) >= 14
