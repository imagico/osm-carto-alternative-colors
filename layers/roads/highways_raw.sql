                SELECT
                    way,
                    ('highway_' || highway) AS feature, -- only motorway to tertiary links are accepted later on
                    highway,
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
                    CASE WHEN (tags->'cycleway') IN ('lane') OR (tags->'cycleway:right') IN ('lane') THEN 'cycle'::text ELSE NULL END AS int_lane_right,
                    CASE WHEN (tags->'cycleway') IN ('lane') OR (tags->'cycleway:left') IN ('lane') THEN 'cycle'::text ELSE NULL END AS int_lane_left,
                    CASE
                      WHEN highway IN ('steps') THEN
                        CASE
                          WHEN (tags @> 'ramp:bicycle=>yes') THEN 'ramp_bicycle'::text
                          WHEN (tags @> 'ramp:stroller=>yes') THEN 'ramp_stroller'::text
                          WHEN (tags @> 'ramp:wheelchair=>yes') THEN 'ramp_wheelchair'::text
                          WHEN (tags @> 'handrail:center=>yes') THEN 'handrail'::text
                        ELSE ''::text END
                      WHEN (tags->'lanes') IN ('1', '2', '3', '4', '5', '6') THEN (tags->'lanes')::text
                      ELSE
                        CASE
                          WHEN highway IN ('motorway', 'trunk') THEN '2'::text
                          WHEN (oneway IS NULL OR NOT (oneway IN ('no', 'reversible'))) THEN '1'::text
                          WHEN highway IN ('residential', 'tertiary', 'secondary', 'primary') THEN '2'::text
                          ELSE '1'::text
                        END
                    END ||
                    CASE WHEN (tags @> 'lane_markings=>no') THEN 'u'::text ELSE ''::text END AS int_lanes,
                    CASE
                      WHEN (tags->'sidewalk') IN ('yes', 'both', 'right') OR (tags->'sidewalk:right') IN ('yes') THEN 
                        CASE WHEN (tags->'cycleway') IN ('track') OR (tags->'cycleway:right') IN ('track') THEN 'both'::text ELSE 'foot'::text END
                      ELSE
                        CASE WHEN (tags->'cycleway') IN ('track') OR (tags->'cycleway:right') IN ('track') THEN 'cycle'::text
                        ELSE
                          CASE WHEN (tags->'handrail') IN ('yes') OR (tags->'handrail:right') IN ('yes') THEN 'handrail'::text
                          ELSE
                            NULL
                          END
                        END
                    END AS int_side_right,
                    CASE
                      WHEN (tags->'sidewalk') IN ('yes', 'both', 'left') OR (tags->'sidewalk:left') IN ('yes') THEN 
                        CASE WHEN (tags->'cycleway') IN ('track') OR (tags->'cycleway:left') IN ('track') THEN 'both'::text ELSE 'foot'::text END
                      ELSE
                        CASE WHEN (tags->'cycleway') IN ('track') OR (tags->'cycleway:left') IN ('track') THEN 'cycle'::text
                        ELSE
                          CASE WHEN (tags->'handrail') IN ('yes') OR (tags->'handrail:left') IN ('yes') THEN 'handrail'::text
                          ELSE
                            NULL
                          END
                        END
                    END AS int_side_left,
                    carto_road_access(highway, access, tags->'vehicle', tags->'motor_vehicle', tags->'motorcar', bicycle, horse, foot, tags->'bus', tags->'psv') AS int_access,
                    construction,
                    CASE
                      WHEN service IN ('parking_aisle', 'drive-through', 'driveway') OR leisure IN ('slipway') THEN 'INT-minor'::text
                      ELSE 'INT-normal'::text
                    END AS service,
                    CASE
                      WHEN substr(highway, length(highway)-4, 5) = '_link' THEN 'yes'
                      ELSE 'no'
                    END AS link,
                    carto_highway_line_width(highway, service, z(!scale_denominator!)) AS width_nominal,
                    carto_highway_line_width_mapped(highway, tags->'width', tags->'lanes', !bbox!, !scale_denominator!) AS width_tagged,
                    COALESCE(layer,0) AS layernotnull,
                    osm_id,
                    z_order
                  FROM planet_osm_line
                  WHERE highway IS NOT NULL AND way && !bbox!
