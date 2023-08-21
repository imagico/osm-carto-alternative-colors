            SELECT
                -- this cuts out barrier=entrance nodes - in a width reflecting whatever highway=* intersects
                ST_Difference(
                  way,
                  COALESCE(
                    (SELECT
                        ST_Union(ST_Buffer(way, width))
                      FROM
                        (SELECT
                            e.way AS way,
                            (COALESCE(
                              (SELECT
                                  GREATEST(
                                    carto_highway_line_width(h.highway, h.service, z(!scale_denominator!)),
                                    carto_highway_line_width_mapped(h.highway, h.tags->'width', h.tags->'lanes', !bbox!, !scale_denominator!))
                                FROM planet_osm_line h
                                WHERE ST_Intersects(h.way, e.way) AND h.highway IN
                                  ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary',
                                   'secondary_link', 'tertiary', 'tertiary_link', 'residential', 'unclassified', 'service',
                                   'living_street', 'pedestrian', 'steps', 'road', 'bridleway', 'footway', 'cycleway', 'path', 'track',
                                   'busway', 'bus_guideway')
                                ORDER BY carto_highway_line_width(h.highway, h.service, z(!scale_denominator!)) DESC LIMIT 1
                              ),
                              carto_highway_line_width('footway', z(!scale_denominator!))
                            ) + 2.5 + l.width_nominal)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0) AS width
                          FROM planet_osm_point e
                          WHERE ST_Intersects(l.way, e.way)
                            AND e.barrier IN ('entrance')
                        ) AS entrances
                      WHERE (way && ST_Expand(!bbox!, (0.5*
                              (carto_highway_line_width('motorway', z(!scale_denominator!)) + 2.0 + l.width)*
                              NULLIF(!scale_denominator!*0.001*0.28,0)))
                            )
                    ),
                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                  )
                ) AS way,
                COALESCE(barrier, historic) AS feature,
                CASE WHEN barrier = 'barrier_ditch' THEN ROUND(width) ELSE width END AS width,
                height,
                layer,
                osm_id,
                z_order
              FROM
                (SELECT
                    way,                    
                    ('barrier_' || (CASE WHEN barrier IN ('chain', 'city_wall', 'ditch', 'fence', 'guard_rail',
                     'handrail', 'retaining_wall', 'wall') THEN barrier ELSE NULL END)) AS barrier,
                    ('historic_' || (CASE WHEN historic = 'citywalls' THEN historic ELSE NULL END)) AS historic,
                    GREATEST(
                      carto_barrier_line_width(
                        CASE WHEN historic = 'citywalls' THEN historic ELSE barrier END,
                        z(!scale_denominator!)
                      ),
                      carto_barrier_line_width_mapped(
                        CASE WHEN historic = 'citywalls' THEN historic ELSE barrier END,
                        tags->'width',
                        !bbox!, !scale_denominator!
                      )
                    ) AS width,
                    carto_barrier_line_width(CASE WHEN historic = 'citywalls' THEN historic ELSE barrier END, z(!scale_denominator!)) AS width_nominal,
                    CASE WHEN (tags->'height') ~ '^-?\d{1,4}(\.\d+)?$' THEN (tags->'height')::NUMERIC ELSE 1.0 END AS height,
                    layer,
                    osm_id,
                    CASE (CASE WHEN historic = 'citywalls' THEN historic ELSE barrier END)
                      WHEN 'ditch' THEN -2
                      WHEN 'retaining_wall' THEN -1
                      WHEN 'city_wall' THEN 1
                      WHEN 'citywalls' THEN 1
                      WHEN 'wall' THEN 2
                      WHEN 'guard_rail' THEN 3
                      WHEN 'handrail' THEN 4
                      WHEN 'fence' THEN 5
                      WHEN 'chain' THEN 6
                      ELSE 0
                    END AS z_order
                  FROM planet_osm_line
                  WHERE (barrier IN ('chain', 'city_wall', 'ditch', 'fence', 'guard_rail',
                        'handrail', 'retaining_wall', 'wall')
                    OR historic = 'citywalls')
                    AND (waterway IS NULL OR waterway NOT IN ('river', 'canal', 'derelict_canal', 'stream', 'drain', 'ditch', 'wadi') OR z(!scale_denominator!) >= 18)
                    AND (way && !bbox!)
                    AND z(!scale_denominator!) >= 15
                ) AS l
