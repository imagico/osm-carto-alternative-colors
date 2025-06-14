            SELECT
                way,
                man_made,
                tags->'floating' AS floating,
                CASE WHEN tags->'mooring' IN('yes', 'private', 'commercial', 'cruise', 'ferry', 'yacht', 'guest') THEN
                  'yes'
                ELSE
                  'no'
                END AS mooring,
                tags->'material' AS material,
                way_area/NULLIF(POW(!scale_denominator!*0.001*0.28,2),0) AS way_pixels,
                COALESCE(layer,0) AS layernotnull,
                osm_id,
                CASE WHEN tags->'floating' = 'no' THEN 1000 ELSE 0 END AS z_order
              FROM planet_osm_polygon
              WHERE man_made = 'pier'
                AND way && !bbox!
                AND z(!scale_denominator!) >= 12
