                SELECT -- begin of ford/mountain_pass point pseudo-line select
                    ST_LineSubstring(way, GREATEST(0, position-length*0.5*pass_length), LEAST(1, position+length*0.5*pass_length)) AS way,
                    feature,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    'no' AS int_lane,
                    NULL AS int_lanes,
                    'no' AS int_junction,
                    int_access,
                    construction,
                    service,
                    link,
                    0 AS width_lane,
                    width_nominal,
                    width_tagged,
                    carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)) AS casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                    FROM
                      (SELECT
                          l.way AS way, -- this is the highway intersecting the ford node
                          ST_LineLocatePoint(l.way, p.way) AS position, -- this is the position along the way
                          NULLIF(!scale_denominator!*0.001*0.28,0)/ST_Length(l.way) AS length, -- this is the pixel size as a fraction of the way length
                          CASE WHEN (p.tags @> 'mountain_pass=>yes') THEN GREATEST(7, carto_highway_line_width(
                            l.highway, l.service, z(!scale_denominator!))) ELSE 5 END AS pass_length,
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
                            WHEN (tunnel IN ('yes', 'building_passage', 'avalanche_protector') OR covered = 'yes') THEN 'yes'::text
                            WHEN (covered = 'yes') THEN 'yes'::text
                            ELSE 'no'::text
                          END AS int_tunnel,
                          CASE WHEN (p.tags @> 'mountain_pass=>yes') THEN 'mountain_pass' ELSE 'ford_node' END AS int_bridge,
                          carto_road_access(l.highway, l.access, l.tags->'vehicle', l.tags->'motor_vehicle', l.tags->'motorcar', l.bicycle, l.horse, l.foot, l.tags->'bus', l.tags->'psv') AS int_access,
                          l.construction AS construction,
                          CASE
                            WHEN l.service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text
                            ELSE 'INT-normal'::text
                          END AS service,
                          CASE
                            WHEN substr(l.highway, length(l.highway)-4, 5) = '_link' THEN 'yes'
                            ELSE 'no'
                          END AS link,
                          carto_highway_line_width(l.highway, l.service, z(!scale_denominator!)) AS width_nominal,
                          carto_highway_line_width_mapped(l.highway, l.tags->'width', l.tags->'lanes', !bbox!, !scale_denominator!) AS width_tagged,
                          COALESCE(l.layer,0) AS layernotnull,
                          l.osm_id AS osm_id,
                          l.z_order AS z_order
                        FROM planet_osm_point p
                          JOIN planet_osm_line l ON ST_DWithin(p.way, l.way, 0.1) -- Assumes Mercator
                        WHERE (p.tags @> 'ford=>yes' OR p.tags @> 'ford=>stepping_stones' OR p.tags @> 'mountain_pass=>yes')
                          AND l.highway IS NOT NULL
                          AND p.way && !bbox!
                      ) AS fords
                  -- end of ford/mountain_pass point pseudo-line select
