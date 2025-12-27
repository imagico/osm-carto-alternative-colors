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
                          CASE WHEN z(!scale_denominator!) >= 18
                                 AND highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary',
                                                  'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link',
                                                  'road', 'unclassified', 'residential', 'busway', 'bus_guideway',
                                                  'raceway', 'pedestrian', 'living_street', 'service') THEN
                            carto_highway_lanes_sides(way, tags, CASE WHEN oneway IN ('yes', '-1') THEN oneway ELSE 'no' END)
                          ELSE
                            ARRAY[NULL, NULL, NULL, NULL]
                          END AS lanes_sides,
                          COALESCE('highway_' || highway, 'railway_' || railway) AS feature, -- only motorway to tertiary links are accepted later on
                          COALESCE(highway, railway) AS highway,
                          carto_path_type(foot, bicycle, horse) AS path_type,
                          carto_road_surface(surface) AS int_surface,
                          carto_road_tunnel(tunnel, covered) AS int_tunnel,
                          carto_road_bridge(bridge, tags->'ford') AS int_bridge,
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
                          carto_highway_lane_count (highway, tags->'lanes', oneway) AS lanes_num,
                          CASE WHEN z(!scale_denominator!) >= 18
                                 AND highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary',
                                                  'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link',
                                                  'road', 'unclassified', 'residential', 'busway', 'bus_guideway',
                                                  'raceway', 'pedestrian', 'living_street', 'service') THEN
                            carto_highway_num_parking_lanes (tags->'parking:both', tags->'parking:right', tags->'parking:left')
                          ELSE
                            0
                          END AS lanes_parking,
                          CASE WHEN (tags @> 'lane_markings=>no') THEN 'u'::text ELSE ''::text END AS lane_markings,
                          carto_road_access(COALESCE(highway, railway), access, tags->'vehicle', tags->'motor_vehicle', tags->'motorcar', bicycle, horse, foot, tags->'bus', tags->'psv') AS int_access,
                          construction,
                          CASE
                            WHEN service IN ('parking_aisle', 'drive-through', 'driveway') OR leisure IN ('slipway') THEN 'INT-minor'::text
                            ELSE 'INT-normal'::text
                          END AS service,
                          CASE
                            WHEN substr(highway, length(highway)-4, 5) = '_link' THEN 'yes'
                            ELSE 'no'
                          END AS link,
                          CASE WHEN z(!scale_denominator!) >= 18
                                 AND highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary',
                                                  'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link',
                                                  'road', 'unclassified', 'residential', 'busway', 'bus_guideway',
                                                  'raceway', 'pedestrian', 'living_street', 'service') THEN
                            GREATEST(carto_ground_to_px(2.5, !bbox!, !scale_denominator!), carto_highway_line_width('sidewalk', z(!scale_denominator!)))
                          ELSE
                            0.0
                          END AS width_lane,
                          CASE WHEN z(!scale_denominator!) >= 18 
                                 AND highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary',
                                                  'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link',
                                                  'road', 'unclassified', 'residential', 'busway', 'bus_guideway',
                                                  'raceway', 'pedestrian', 'living_street', 'service') THEN
                            GREATEST(carto_ground_to_px(1.5, !bbox!, !scale_denominator!), carto_highway_line_width('sidewalk', z(!scale_denominator!)))
                          ELSE
                            0.0
                          END AS width_lane_cycle,
                          carto_highway_line_width(COALESCE(highway, railway), service, z(!scale_denominator!)) AS width_nominal,
                          CASE WHEN man_made = 'pier' AND highway IN ('track', 'path', 'footway', 'cycleway', 'bridleway') THEN
                            0.0  -- no ground unit rendering for thin highways double tagged as man_made=pier
                          ELSE
                            carto_highway_line_width_mapped(
                              COALESCE(highway, railway),
                              tags->'width:carriageway',
                              tags->'width',
                              tags->'lanes',
                              tags->'parking:both',
                              tags->'parking:right',
                              tags->'parking:left',
                              !bbox!,
                              !scale_denominator!
                            )
                          END AS width_tagged,
                          COALESCE(layer,0) AS layernotnull,
                          osm_id,
                          z_order
                        FROM planet_osm_line
                        WHERE way && !bbox!
                         AND
                         CASE
                           WHEN z(!scale_denominator!) <= 10 THEN
                             highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'construction')
                           WHEN z(!scale_denominator!) <= 11 THEN
                             highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'construction')
                           WHEN z(!scale_denominator!) <= 12 THEN
                             highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway')
                           WHEN z(!scale_denominator!) <= 13 THEN
                             highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps')
                           ELSE -- we include railway=platform here because this gets the highway end cap treatment while other railway=* do not
                             (highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps', 'platform') OR railway = 'platform')
                         END
                      ) AS _
