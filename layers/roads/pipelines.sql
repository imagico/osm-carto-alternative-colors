            SELECT
                way,
                substance,
                carto_pipeline_dasharrays((ST_Length(way)/NULLIF(!scale_denominator!*0.001*0.28,0))::numeric, z(!scale_denominator!)) AS dasharrays,
                carto_pipeline_line_width('pipe_casing', z(!scale_denominator!)) AS pipe_casing,
                carto_pipeline_line_width('pipe_fill', z(!scale_denominator!)) AS pipe_fill,
                carto_pipeline_line_width('flange_width', z(!scale_denominator!)) AS flange_width,
                layernotnull,
                osm_id,
                z_order
              FROM
                (WITH sectors AS
                  (SELECT
                      *
                    FROM
                      (VALUES
                        (1, ST_Translate(!unbuffered_bbox!, -0.5*(ST_XMax(!unbuffered_bbox!)-ST_XMin(!unbuffered_bbox!)), -0.5*(ST_YMax(!unbuffered_bbox!)-ST_YMin(!unbuffered_bbox!)))),
                        (2, ST_Translate(!unbuffered_bbox!, 0.5*(ST_XMax(!unbuffered_bbox!)-ST_XMin(!unbuffered_bbox!)), -0.5*(ST_YMax(!unbuffered_bbox!)-ST_YMin(!unbuffered_bbox!)))),
                        (3, ST_Translate(!unbuffered_bbox!, -0.5*(ST_XMax(!unbuffered_bbox!)-ST_XMin(!unbuffered_bbox!)), 0.5*(ST_YMax(!unbuffered_bbox!)-ST_YMin(!unbuffered_bbox!)))),
                        (4, ST_Translate(!unbuffered_bbox!, 0.5*(ST_XMax(!unbuffered_bbox!)-ST_XMin(!unbuffered_bbox!)), 0.5*(ST_YMax(!unbuffered_bbox!)-ST_YMin(!unbuffered_bbox!))))
                      ) AS sectors (sect_num, sect_bounds)
                  ),
                pipelines_all AS
                  (SELECT
                      way,
                      sector,
                      substance,
                      layernotnull,
                      z_order
                    FROM
                      (SELECT
                          way,
                          CASE
                            WHEN (ST_XMax(bounds)-ST_XMin(bounds)) >= (ST_XMax(!unbuffered_bbox!)-ST_XMin(!unbuffered_bbox!) - 2.0*carto_pipeline_line_width('flange_width', z(!scale_denominator!)*NULLIF(!scale_denominator!*0.001*0.28,0))) OR
                                 (ST_YMax(bounds)-ST_YMin(bounds)) >= (ST_YMax(!unbuffered_bbox!)-ST_YMin(!unbuffered_bbox!) - 2.0*carto_pipeline_line_width('flange_width', z(!scale_denominator!)*NULLIF(!scale_denominator!*0.001*0.28,0))) OR
                                 sect_num IS NULL THEN
                                 -- large lines and all lines not assigned to sectors (i.e. envelope centroid exactly on a sector edge or outside all sectors)
                                 -- remain unmerged when within tile bounds and are dropped otherwise
                              CASE WHEN way && !bbox! THEN 0 ELSE NULL END
                            ELSE sect_num
                          END AS sector,
                          substance,
                          layernotnull,
                          z_order
                        FROM
                          (SELECT
                              way,
                              ST_Centroid(bounds) AS point,
                              bounds,
                              substance,
                              layernotnull,
                              z_order
                            FROM
                              (SELECT
                                  way,
                                  ST_Envelope(way) AS bounds,
                                  tags->'substance' AS substance,
                                  COALESCE(layer,0) AS layernotnull,
                                  0 AS z_order
                                FROM planet_osm_line
                                WHERE ((man_made = 'pipeline'
                                       AND (tags-> 'location' IN ('overground', 'overhead', 'surface', 'outdoor')
                                        OR bridge IN ('yes', 'aqueduct', 'cantilever', 'covered', 'trestle', 'viaduct'))))
                                  AND way && ST_Expand(!unbuffered_bbox!, 0.5*(ST_XMax(!unbuffered_bbox!)-ST_XMin(!unbuffered_bbox!)), 0.5*(ST_YMax(!unbuffered_bbox!)-ST_YMin(!unbuffered_bbox!)))
                                  AND z(!scale_denominator!) >= 14
                              ) AS p_orig
                          ) AS lines
                        LEFT OUTER JOIN sectors
                        ON ST_Within(lines.point, sectors.sect_bounds)
                      ) AS _
                    WHERE sector IS NOT NULL
                  ),
                 pipelines_merged AS
                  (SELECT
                      way,
                      substance,
                      layernotnull,
                      ROW_NUMBER() OVER() AS string_id,
                      z_order
                    FROM
                      (SELECT
                          -- this merges - on a sector basis - any pipeline segments touching at ends without branching
                          -- if they are of the same layer and substance
                          (ST_Dump(ST_LineMerge(ST_Collect(way)))).geom AS way,
                          substance,
                          layernotnull,
                          z_order
                        FROM pipelines_all
                        WHERE sector != 0
                        GROUP BY layernotnull, substance, z_order, sector
                      UNION ALL
                      SELECT -- these are the pipeline segments not to be merged (either very large or exactly on sector boundaries)
                          way,
                          substance,
                          layernotnull,
                          z_order
                        FROM pipelines_all
                        WHERE sector = 0
                      ) AS p_flat
                  )
                SELECT
                    -- this splits pipelines at corners with a sharp angle to avoid flanges at those
                    (ST_Dump(
                      ST_CollectionExtract(
                        ST_Split(
                          way,
                          COALESCE(
                            (SELECT
                                ST_Collect(point) AS way
                              FROM
                                (SELECT
                                    geom AS point,
                                    CASE
                                      WHEN path[1] = 1 THEN 0.0
                                      WHEN path[1] = ST_NumPoints(way) THEN 0.0
                                      ELSE ST_Angle(ST_PointN(way, path[1]-1), ST_PointN(way, path[1]), ST_PointN(way, path[1]+1))
                                    END AS angle
                                  FROM (SELECT (ST_DumpPoints(way)).*) AS way_points_raw) AS way_points
                              WHERE DEGREES(ABS(angle-PI())) > 30.0
                            ),
                            ST_SetSRID('MULTIPOINT EMPTY'::geometry, 3857)
                          )
                        ),
                        2
                      )
                    )).geom AS way,
                    substance,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                    (SELECT
                        (ST_Dump(
                          ST_CollectionExtract(
                            -- this splits every pipeline at any intersection with other
                            -- pipelines or various other rendered line features to
                            -- avoid flanges at or close to intersections in rendering
                            ST_Split(
                              way,
                              COALESCE(

                                (SELECT
                                    ST_Collect(way) AS way
                                  FROM
                                    (SELECT
                                        way
                                      FROM pipelines_merged AS p2
                                      WHERE p2.string_id != p1.string_id AND p2.way && p1.way
                                    UNION ALL
                                    SELECT
                                        way
                                      FROM planet_osm_line
                                      -- this catches more than what is rendered, but unnecessary
                                      -- additional splits are harmless
                                      WHERE (highway IS NOT NULL OR
                                              railway IS NOT NULL OR
                                              waterway IS NOT NULL OR
                                              aerialway IS NOT NULL OR
                                              man_made = 'goods_conveyor')
                                        AND (man_made IS NULL OR man_made != 'pipeline')
                                        AND way && p1.way
                                    ) AS _
                                ),
                                ST_SetSRID('MULTILINESTRING EMPTY'::geometry, 3857)
                              )
                            ),
                            2
                          )
                        )).geom AS way,
                        substance,
                        layernotnull,
                        string_id AS osm_id, -- this is later only used for resolving sorting ambiguities - so a fake id is fine.
                        z_order
                      FROM pipelines_merged AS p1
                    ) AS pipelines_split_intersections
                ) AS pipelines_split_corners
