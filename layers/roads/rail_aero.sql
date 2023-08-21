                SELECT -- begin of rail/aero select
                    way,
                    COALESCE(
                      ('railway_' || (CASE WHEN railway = 'preserved' AND service IN ('spur', 'siding', 'yard') THEN 'INT-preserved-ssy'::text 
                                           WHEN (railway = 'rail' AND service IN ('spur', 'siding', 'yard')) THEN 'INT-spur-siding-yard'  
                                           WHEN (railway = 'tram' AND service IN ('spur', 'siding', 'yard')) THEN 'tram-service' ELSE railway END)),
                      ('aeroway_' || aeroway)
                    ) AS feature,
                    'null' AS path_type,
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
                    'no' AS int_junction,
                    NULL AS int_access,
                    construction,
                    CASE
                      WHEN service IN ('parking_aisle', 'drive-through', 'driveway') OR leisure IN ('slipway') THEN 'INT-minor'::text
                      ELSE 'INT-normal'::text
                    END AS service,
                    'no' AS link,
                    carto_highway_line_width(COALESCE(railway, aeroway), z(!scale_denominator!)) AS width_nominal,
                    CASE
                      WHEN aeroway IS NOT NULL THEN
                        carto_aeroway_line_width_mapped(aeroway, tags->'width', way, !bbox!, !scale_denominator!)
                      ELSE
                        carto_highway_line_width_mapped(railway, tags->'width', tags->'lanes', !bbox!, !scale_denominator!)
                    END AS width_tagged,
                    carto_casing_line_width(
                       COALESCE(railway, aeroway),
                       CASE
                         WHEN (bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct')) THEN 'yes'::text
                         WHEN (tags @> 'ford=>yes' OR tags @> 'ford=>stepping_stones') THEN 'ford'::text
                         ELSE 'no'::text
                       END,
                       z(!scale_denominator!)) AS casing_width,
                    COALESCE(layer,0) AS layernotnull,
                    osm_id,
                    z_order
                  FROM planet_osm_line
                  WHERE (railway IS NOT NULL OR aeroway IS NOT NULL)
                    AND way && !bbox! -- end of rail/aero select
