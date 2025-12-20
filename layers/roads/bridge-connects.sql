              -- these are the points (in the form of minimal length ways) connecting individual segments of bridges consisting of several ways
              -- each connecting point should exist twice: for both ways connecting, unless it connects to a road polygon
              -- these are used to ensure continuity in bridge lines when they are split
              SELECT
                  ST_MakeLine(way, ST_Translate(way, 0, 0.01)) AS way,
                  feature,
                  path_type,
                  int_surface,
                  int_tunnel,
                  int_bridge,
                  'no' AS int_lane,
                  int_lanes,
                  int_access,
                  construction,
                  service,
                  link,
                  'bridge_connect' AS connect_type,
                  width_lane,
                  width_nominal,
                  width_max,
                  width,
                  casing_width,
                  layernotnull,
                  osm_id,
                  z_order
                FROM
                  (SELECT
                      ST_StartPoint(way) AS way,
                      feature,
                      path_type,
                      int_surface,
                      int_tunnel,
                      int_bridge,
                      int_lanes,
                      int_access,
                      construction,
                      service,
                      link,
                      width_lane,
                      width_nominal,
                      width_max,
                      width,
                      casing_width,
                      layernotnull,
                      osm_id,
                      z_order
                    FROM roads_prepared r1
                    WHERE
                      int_bridge = 'yes' AND
                      connect_type NOT IN ('ford_mp', 'crossing', 'junction') AND
                      -- either road line or polygon exists at the *start* point of this bridge road
                      (EXISTS
                        (SELECT
                            1
                          FROM planet_osm_line r2
                          WHERE carto_road_bridge (r2.bridge, r2.tags->'ford') = 'yes'
                            AND ST_DWithin(ST_StartPoint(r1.way), r2.way, 0.1)
                            AND COALESCE(r2.layer,0) = r1.layernotnull
                            AND r2.osm_id != r1.osm_id
                            AND
                            CASE
                              WHEN z(!scale_denominator!) <= 10 THEN
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction') OR
                                 r2.railway IN('funicular', 'light_rail', 'narrow_gauge', 'rail'))
                              WHEN z(!scale_denominator!) <= 11 THEN
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction') OR
                                 r2.railway IN('funicular', 'light_rail', 'narrow_gauge', 'rail') OR
                                 r2.aeroway IN ('runway', 'taxiway'))
                              WHEN z(!scale_denominator!) <= 12 THEN
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway') OR
                                 r2.railway IN('funicular', 'light_rail', 'narrow_gauge', 'rail', 'subway', 'tram') OR
                                 r2.aeroway IN ('runway', 'taxiway'))
                              WHEN z(!scale_denominator!) <= 13 THEN
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps') OR
                                 r2.railway IN('construction', 'funicular', 'light_rail', 'narrow_gauge', 'rail', 'subway', 'tram') OR
                                 r2.aeroway IN ('runway', 'taxiway'))
                              ELSE
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps', 'platform') OR
                                 r2.railway IN('construction', 'disused', 'funicular', 'light_rail', 'miniature', 'monorail', 'narrow_gauge', 'platform', 'rail', 'subway', 'tram') OR
                                 r2.aeroway IN ('runway', 'taxiway'))
                            END
                        )
                      OR EXISTS
                        (SELECT
                            1
                          FROM planet_osm_polygon r2
                          WHERE carto_road_bridge (r2.bridge, r2.tags->'ford') = 'yes'
                            AND ST_DWithin(ST_StartPoint(r1.way), r2.way, 0.1)
                            AND COALESCE(r2.layer,0) = r1.layernotnull
                            AND (r2.highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform')
                              OR r2.railway IN ('platform')
                              OR r2.aeroway IN ('runway', 'taxiway', 'helipad'))
                            AND z(!scale_denominator!) >= 14
                        )
                      )
                  UNION ALL
                  SELECT
                      ST_EndPoint(way) AS way,
                      feature,
                      path_type,
                      int_surface,
                      int_tunnel,
                      int_bridge,
                      int_lanes,
                      int_access,
                      construction,
                      service,
                      link,
                      width_lane,
                      width_nominal,
                      width_max,
                      width,
                      casing_width,
                      layernotnull,
                      osm_id,
                      z_order
                    FROM roads_prepared r1
                    WHERE
                      int_bridge = 'yes' AND
                      connect_type NOT IN ('ford_mp', 'crossing', 'junction') AND
                      -- either road line or polygon exists at the *end* point of this bridge road
                      (EXISTS
                        (SELECT
                            1
                          FROM planet_osm_line r2
                          WHERE carto_road_bridge (r2.bridge, r2.tags->'ford') = 'yes'
                            AND ST_DWithin(ST_EndPoint(r1.way), r2.way, 0.1)
                            AND COALESCE(r2.layer,0) = r1.layernotnull
                            AND r2.osm_id != r1.osm_id
                            AND
                            CASE
                              WHEN z(!scale_denominator!) <= 10 THEN
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction') OR
                                 r2.railway IN('funicular', 'light_rail', 'narrow_gauge', 'rail'))
                              WHEN z(!scale_denominator!) <= 11 THEN
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction') OR
                                 r2.railway IN('funicular', 'light_rail', 'narrow_gauge', 'rail') OR
                                 r2.aeroway IN ('runway', 'taxiway'))
                              WHEN z(!scale_denominator!) <= 12 THEN
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway') OR
                                 r2.railway IN('funicular', 'light_rail', 'narrow_gauge', 'rail', 'subway', 'tram') OR
                                 r2.aeroway IN ('runway', 'taxiway'))
                              WHEN z(!scale_denominator!) <= 13 THEN
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps') OR
                                 r2.railway IN('construction', 'funicular', 'light_rail', 'narrow_gauge', 'rail', 'subway', 'tram') OR
                                 r2.aeroway IN ('runway', 'taxiway'))
                              ELSE
                                (r2.highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link', 'unclassified_link', 'road', 'construction', 'unclassified', 'residential', 'busway', 'bus_guideway', 'raceway', 'pedestrian', 'living_street', 'service', 'track', 'path', 'footway', 'cycleway', 'bridleway', 'steps', 'platform') OR
                                 r2.railway IN('construction', 'disused', 'funicular', 'light_rail', 'miniature', 'monorail', 'narrow_gauge', 'platform', 'rail', 'subway', 'tram') OR
                                 r2.aeroway IN ('runway', 'taxiway'))
                            END
                        )
                      OR EXISTS
                        (SELECT
                            1
                          FROM planet_osm_polygon r2
                          WHERE carto_road_bridge (r2.bridge, r2.tags->'ford') = 'yes'
                            AND ST_DWithin(ST_EndPoint(r1.way), r2.way, 0.1)
                            AND COALESCE(r2.layer,0) = r1.layernotnull
                            AND (r2.highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform')
                              OR r2.railway IN ('platform')
                              OR r2.aeroway IN ('runway', 'taxiway', 'helipad'))
                            AND z(!scale_denominator!) >= 14
                        )
                      )
                  ) AS bc_points_raw
