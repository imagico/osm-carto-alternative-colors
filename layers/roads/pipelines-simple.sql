            SELECT
                way,
                tags->'substance' AS substance,
                carto_pipeline_dasharrays(NULL, z(!scale_denominator!)) AS dasharrays,
                carto_pipeline_line_width('pipe_casing', z(!scale_denominator!)) AS pipe_casing,
                carto_pipeline_line_width('pipe_fill', z(!scale_denominator!)) AS pipe_fill,
                carto_pipeline_line_width('flange_width', z(!scale_denominator!)) AS flange_width,
                COALESCE(layer,0) AS layernotnull,
                osm_id,
                0 AS z_order
              FROM planet_osm_line
              WHERE ((man_made = 'pipeline'
                     AND (tags-> 'location' IN ('overground', 'overhead', 'surface', 'outdoor')
                      OR bridge IN ('yes', 'aqueduct', 'cantilever', 'covered', 'trestle', 'viaduct'))))
                AND way && !bbox!
                AND z(!scale_denominator!) >= 14

