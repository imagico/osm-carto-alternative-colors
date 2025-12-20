                  SELECT
                      way,
                      feature,
                      highway,
                      path_type,
                      int_surface,
                      int_tunnel,
                      int_bridge,
                      NULL AS int_lane_right,
                      NULL AS int_lane_left,
                      NULL AS int_lanes,
                      NULL AS int_side_right,
                      NULL AS int_side_left,
                      int_access,
                      construction,
                      'INT-normal'::text AS service,
                      'no' AS link,
                      0.0 AS width_lane_cycle,
                      0.0 AS width_lane,
                      width_nominal,
                      width_tagged,
                      layernotnull,
                      osm_id,
                      z_order
                    FROM
                      (SELECT
                          way,
                          'aeroway_' || aeroway AS feature,
                          aeroway AS highway,
                          carto_path_type(foot, bicycle, horse) AS path_type,
                          carto_road_surface(surface) AS int_surface,
                          carto_road_tunnel(tunnel, covered) AS int_tunnel,
                          carto_road_bridge(bridge, tags->'ford') AS int_bridge,
                          NULL AS int_access,
                          construction,
                          carto_highway_line_width(aeroway, service, z(!scale_denominator!)) AS width_nominal,
                          carto_aeroway_line_width_mapped(aeroway, tags->'width', way, !bbox!, !scale_denominator!) AS width_tagged,
                          COALESCE(layer,0) AS layernotnull,
                          osm_id,
                          z_order
                        FROM planet_osm_line
                        WHERE way && !bbox!
                          AND aeroway IN ('runway', 'taxiway')
                      ) AS _
