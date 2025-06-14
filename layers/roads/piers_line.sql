            SELECT
                way,
                man_made,
                tags->'floating' AS floating,
                GREATEST(
                  carto_barrier_line_width(
                    man_made,
                    z(!scale_denominator!)
                  ),
                  carto_pier_line_width_mapped(
                    man_made,
                    tags->'width',
                    !bbox!, !scale_denominator!
                  )
                ) AS width,
                CASE WHEN tags->'mooring' IN('yes', 'private', 'commercial', 'cruise', 'ferry', 'yacht', 'guest') THEN
                  'yes'
                ELSE 
                  'no'
                END AS mooring,
                tags->'material' AS material,
                COALESCE(layer,0) AS layernotnull,
                osm_id,
                CASE WHEN tags->'floating' = 'no' THEN 1000 ELSE 0 END AS z_order
              FROM planet_osm_line
              WHERE man_made = 'pier'
                AND way && !bbox!
                AND z(!scale_denominator!) >= 12

