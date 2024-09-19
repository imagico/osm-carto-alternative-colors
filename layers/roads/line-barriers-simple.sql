            SELECT
                way,
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
