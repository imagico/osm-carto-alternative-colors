                sidewalks_raw AS
                (SELECT
                    CASE WHEN feature = 'highway_side_parking' THEN
                      ST_Buffer(line, 0.5*line_width*NULLIF(!scale_denominator!*0.001*0.28,0), 'endcap=flat join=round')
                    ELSE
                      CASE
                        WHEN int_side_right IS NULL AND int_side_left IS NOT NULL THEN
                          ST_Intersection(
                            buffer,
                            ST_Buffer(
                              ST_OffsetCurve(way, (0.5*width_max + 0.5*side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                              (0.5*width_max + side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)
                            )
                          )
                        WHEN int_side_left IS NULL AND int_side_right IS NOT NULL THEN
                          ST_Intersection(
                            buffer,
                            ST_Buffer(
                              ST_OffsetCurve(way, -(0.5*width_max + 0.5*side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                             (0.5*width_max + side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)
                            )
                          )
                        ELSE
                          buffer
                      END
                    END AS buffer,
                    buffer_base,
                    -- this generates a buffer outline (either both or one sided)
                    -- for all rows with some kind of sidewalk
                    CASE
                      WHEN int_side_right IS NULL AND int_side_left IS NULL THEN
                        NULL
                      WHEN feature = 'highway_side_parking' THEN
                        -- parking geometries are already supplied as line geometries here
                        line
                      WHEN int_side_right IS NULL THEN
                        ST_Intersection(
                          ST_Boundary(buffer),
                          ST_Buffer(
                            ST_OffsetCurve(way, (0.5*width_max + 0.5*side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            (0.5*width_max + side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)
                          )
                        )
                      WHEN int_side_left IS NULL THEN
                        ST_Intersection(
                          ST_Boundary(buffer),
                          ST_Buffer(
                            ST_OffsetCurve(way, -(0.5*width_max + 0.5*side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            (0.5*width_max + side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)
                          )
                        )
                      ELSE ST_Boundary(buffer)
                    END AS line,
                    way,
                    way_orig,
                    feature,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_access,
                    construction,
                    service,
                    link,
                    width_nominal,
                    width_tagged,
                    line_width AS casing_width,
                    layernotnull,
                    osm_id,
                    z_order-1 AS z_order -- we lower this for consistent odering and to render the parking casing behind the main road casing
                  FROM
                    (SELECT
                        CASE WHEN side_type = 'parking' THEN
                          NULL
                        ELSE
                          -- this is the buffer that forms the basis for the sidewalk geometries and their clipping
                          ST_Difference(
                            ST_Buffer(
                              way_orig,
                              (0.5*width_max + side_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)
                            ),
                            COALESCE(
                              ST_Buffer(clip, (side_offset + 1.0)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                              ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                            )
                          )
                        END AS buffer,
                          ST_Difference(
                            ST_Buffer(
                              way_orig,
                              (0.5*width_max + casing_width*2.0 + sidewalk_width)*NULLIF(!scale_denominator!*0.001*0.28,0),
                              'endcap=flat join=round'
                            ),
                            COALESCE(
                              ST_Buffer(clip, (side_offset + 1.0)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                              ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                            )
                          ) AS buffer_base,
                        CASE WHEN side_type = 'parking' THEN
                          CASE
                            WHEN int_side_right IS NULL THEN
                              ST_OffsetCurve(way, (0.5*width_max + side_offset - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0))
                            WHEN int_side_left IS NULL THEN
                              ST_OffsetCurve(way, -(0.5*width_max + side_offset - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0))
                            ELSE
                              ST_Union(
                                ST_OffsetCurve(way, (0.5*width_max + side_offset - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                ST_OffsetCurve(way, -(0.5*width_max + side_offset - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0))
                              )
                          END
                        ELSE
                          NULL
                        END AS line,
                        way,
                        way_orig,
                        ('highway_side_' || COALESCE(int_side_right,int_side_left)) AS feature,
                        path_type,
                        int_surface,
                        int_tunnel,
                        int_bridge,
                        int_side_right,
                        int_side_left,
                        int_access,
                        construction,
                        service,
                        link,
                        width_nominal,
                        width_tagged,
                        width_max,
                        line_width,
                        side_offset,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM
                        -- roads_side are the roads with sidewalks or street_side parkings
                        (WITH roads_side AS
                          (SELECT
                              way,
                              way_orig,
                              clip,
                              feature,
                              path_type,
                              int_surface,
                              int_tunnel,
                              int_bridge,
                              int_side_right,
                              int_side_left,
                              reverse(split_part(reverse(int_side_right), '+', 1)) AS int_sidewalk_right,
                              reverse(split_part(reverse(int_side_left), '+', 1)) AS int_sidewalk_left,
                              CASE WHEN split_part(int_side_right, '+', 1) = 'parking' THEN 'parking' ELSE NULL END int_parking_right,
                              CASE WHEN split_part(int_side_left, '+', 1) = 'parking' THEN 'parking' ELSE NULL END int_parking_left,
                              int_access,
                              construction,
                              highway AS service, -- we use this to store the original highway value to be able to use that in MSS code
                              link,
                              width_nominal,
                              width_tagged,
                              GREATEST(width_nominal, width_tagged) AS width_max,
                              carto_casing_line_width('sidewalk', int_bridge, z(!scale_denominator!)) AS casing_width,
                              carto_highway_line_width('sidewalk', z(!scale_denominator!)) AS sidewalk_width,
                              GREATEST(
                                carto_highway_line_width('parking', z(!scale_denominator!)),
                                carto_ground_to_px(2.5, way_orig, !scale_denominator!)
                              ) AS parking_width,
                              layernotnull,
                              osm_id,
                              z_order
                            FROM highways_all
                            WHERE (int_side_right IS NOT NULL OR int_side_left IS NOT NULL)
                              AND width_nominal > 0.0
                              AND z(!scale_denominator!) >= 18
                          ),
                        -- this are all other roads without sidewalks the sidewalks need to be clipped with
                        roads_noside AS
                          (SELECT
                              way,
                              way_orig,
                              clip,
                              feature,
                              path_type,
                              int_surface,
                              int_tunnel,
                              int_bridge,
                              NULL AS int_sidewalk_right,
                              NULL AS int_sidewalk_left,
                              int_access,
                              construction,
                              service,
                              link,
                              width_nominal,
                              width_tagged,
                              GREATEST(width_nominal, width_tagged) AS width_max,
                              carto_casing_line_width('sidewalk', int_bridge, z(!scale_denominator!)) AS casing_width,
                              carto_highway_line_width('sidewalk', z(!scale_denominator!)) AS sidewalk_width,
                              layernotnull,
                              osm_id,
                              z_order
                            FROM highways_all
                            WHERE (int_side_right IS NULL AND int_side_left IS NULL)
                              AND width_nominal > 0.0
                              AND z(!scale_denominator!) >= 18
                          ),
                        -- roads_sidewalk are the roads with sidewalks
                        roads_sidewalk AS
                          (SELECT
                              way,
                              way_orig,
                              clip,
                              feature,
                              path_type,
                              int_surface,
                              int_tunnel,
                              int_bridge,
                              int_side_right,
                              int_side_left,
                              CASE WHEN int_sidewalk_right IN ('', 'parking') THEN NULL ELSE int_sidewalk_right END AS int_sidewalk_right,
                              CASE WHEN int_sidewalk_left IN ('', 'parking') THEN NULL ELSE int_sidewalk_left END AS int_sidewalk_left,
                              int_parking_right,
                              int_parking_left,
                              int_access,
                              construction,
                              service,
                              link,
                              width_nominal,
                              width_tagged,
                              width_max,
                              casing_width,
                              sidewalk_width,
                              parking_width,
                              layernotnull,
                              osm_id,
                              z_order
                            FROM roads_side
                            WHERE ((int_sidewalk_right IS NOT NULL AND int_sidewalk_right NOT IN ('', 'parking')) OR (int_sidewalk_left IS NOT NULL AND int_sidewalk_left NOT IN ('', 'parking')))
                          )
                        -- this are the roads with either just one or two identical sidewalks
                        SELECT
                            'sidewalk' AS side_type,
                            way,
                            way_orig,
                            clip,
                            feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            int_sidewalk_right AS int_side_right,
                            int_sidewalk_left AS int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            sidewalk_width,
                            casing_width AS line_width,
                            CASE WHEN int_parking_right IS NOT NULL OR int_parking_left IS NOT NULL THEN casing_width + parking_width ELSE 0.0 END +
                            casing_width*2.0 + sidewalk_width AS side_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM roads_sidewalk
                          WHERE (int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                        UNION ALL
                        -- this are (separately) the roads with two different sidewalks
                        SELECT
                            'sidewalk' AS side_type,
                            way,
                            way_orig,
                            clip,
                            feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            int_sidewalk_right AS int_side_right,
                            NULL AS int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            sidewalk_width,
                            casing_width AS line_width,
                            CASE WHEN int_parking_right IS NOT NULL THEN casing_width + parking_width ELSE 0.0 END +
                            casing_width*2.0 + sidewalk_width AS side_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM roads_sidewalk
                          WHERE NOT(int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                            AND int_sidewalk_right IS NOT NULL
                        UNION ALL
                        SELECT
                            'sidewalk' AS side_type,
                            way,
                            way_orig,
                            clip,
                            feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            NULL AS int_side_right,
                            int_sidewalk_left AS int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            sidewalk_width,
                            casing_width AS line_width,
                            CASE WHEN int_parking_left IS NOT NULL THEN casing_width + parking_width ELSE 0.0 END +
                            casing_width*2.0 + sidewalk_width AS side_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM roads_sidewalk
                          WHERE NOT(int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                            AND int_sidewalk_left IS NOT NULL
                        UNION ALL
                        -- this are the roads with either just one or two identical parkings
                        -- (which is the case for all parkings atm. - could be extended for differentiated parkings just like with sidewalks)
                        SELECT
                            'parking' AS side_type,
                            way,
                            way_orig,
                            clip,
                            feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            int_parking_right AS int_side_right,
                            int_parking_left AS int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            sidewalk_width,
                            parking_width AS line_width,
                            casing_width + parking_width*0.5 AS side_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM roads_side
                          WHERE (int_parking_right IS NOT NULL OR int_parking_left IS NOT NULL) AND
                            (int_parking_right = int_parking_left OR int_parking_right IS NULL OR int_parking_left IS NULL)
                        UNION ALL
                        -- this are all other roads without sidewalks/parkings the sidewalks/parkings need to be clipped with
                        SELECT
                            'noside' AS side_type,
                            way,
                            way_orig,
                            clip,
                            feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            int_sidewalk_right AS int_side_right,
                            int_sidewalk_left AS int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            sidewalk_width,
                            casing_width AS line_width,
                            casing_width*2.0 + sidewalk_width AS side_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM roads_noside
                        ) AS sidewalks
                    ) AS l -- end of sidewalks select
                ) -- end sidewalks_raw CTE
