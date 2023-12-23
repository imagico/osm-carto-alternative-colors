                SELECT
                    way,
                    feature,
                    highway,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    lanes_sides[1] AS int_lane_right,
                    lanes_sides[2] AS int_lane_left,
                    COALESCE(steps_type, (lanes_num+lanes_parking)::text || lane_markings) AS int_lanes,
                    lanes_sides[3] AS int_side_right,
                    lanes_sides[4] AS int_side_left,
                    int_access,
                    construction,
                    service,
                    link,
                    width_lane_cycle,
                    CASE WHEN z(!scale_denominator!) >= 18 THEN
                      LEAST(width_lane, GREATEST(width_nominal, width_tagged)/(lanes_num+lanes_parking) - 2.0*carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)))
                    ELSE
                      0.0
                    END AS width_lane,
                    width_nominal,
                    width_tagged,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                     (SELECT
                         way,
                         -- sidewalks and lanes are only rendered at z18+
                         CASE WHEN z(!scale_denominator!) >= 18 THEN
                           carto_highway_lanes_sides(way, tags, CASE WHEN oneway IN ('yes', '-1') THEN oneway ELSE 'no' END)
                         ELSE
                           ARRAY[NULL, NULL, NULL, NULL]
                         END AS lanes_sides,
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
                         CASE
                           WHEN highway IN ('steps') THEN
                             CASE
                               WHEN (tags @> 'ramp:bicycle=>yes') THEN 'ramp_bicycle'::text
                               WHEN (tags @> 'ramp:stroller=>yes') THEN 'ramp_stroller'::text
                               WHEN (tags @> 'ramp:wheelchair=>yes') THEN 'ramp_wheelchair'::text
                               WHEN (tags @> 'handrail:center=>yes') THEN 'handrail'::text
                             ELSE ''::text END
                           ELSE
                             NULL
                         END AS steps_type,
                         CASE
                           WHEN (tags->'lanes') IN ('1', '2', '3', '4', '5', '6') THEN 
                             (tags->'lanes')::numeric
                           ELSE
                             CASE
                               WHEN highway IN ('motorway', 'trunk') THEN 2
                               WHEN oneway IN ('yes', '-1') THEN 1
                               WHEN highway IN ('residential', 'tertiary', 'secondary', 'primary') THEN 2
                               ELSE 1
                             END
                         END AS lanes_num,
                         CASE WHEN z(!scale_denominator!) >= 18 THEN
                           carto_highway_num_parking_lanes (tags->'parking:both', tags->'parking:right', tags->'parking:left')
                         ELSE
                           0
                         END AS lanes_parking,
                         CASE WHEN (tags @> 'lane_markings=>no') THEN 'u'::text ELSE ''::text END AS lane_markings,
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
                         CASE WHEN z(!scale_denominator!) >= 18 THEN
                           GREATEST(carto_ground_to_px(2.5, !bbox!, !scale_denominator!), carto_highway_line_width('sidewalk', z(!scale_denominator!)))
                         ELSE
                           0.0
                         END AS width_lane,
                         CASE WHEN z(!scale_denominator!) >= 18 THEN
                           GREATEST(carto_ground_to_px(1.5, !bbox!, !scale_denominator!), carto_highway_line_width('sidewalk', z(!scale_denominator!)))
                         ELSE
                           0.0
                         END AS width_lane_cycle,
                         carto_highway_line_width(highway, service, z(!scale_denominator!)) AS width_nominal,
                         carto_highway_line_width_mapped(
                           highway,
                           tags->'width:carriageway',
                           tags->'width',
                           tags->'lanes',
                           tags->'parking:both',
                           tags->'parking:right',
                           tags->'parking:left',
                           !bbox!,
                           !scale_denominator!
                         ) AS width_tagged,
                         COALESCE(layer,0) AS layernotnull,
                         osm_id,
                         z_order
                       FROM planet_osm_line
                       WHERE way && !bbox!
                        AND
                        CASE
                          WHEN z(!scale_denominator!) <= 10 THEN
                            highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction')
                          WHEN z(!scale_denominator!) <= 11 THEN
                            highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction')
                          WHEN z(!scale_denominator!) <= 12 THEN
                            highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway')
                          WHEN z(!scale_denominator!) <= 13 THEN
                            highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps')
                          ELSE highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps', 'platform')
                        END
                    ) AS _
