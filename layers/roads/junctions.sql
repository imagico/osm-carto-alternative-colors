                junctions AS
                (SELECT
                    -- for clipping away sidewalks not to be rendered
                    ST_Difference(junction_poly, junction_cut) AS clip,
                    -- for trimming the road line
                    bounds,
                    -- the remaining component to be rendered, clipped with extended bounds
                    CASE
                      WHEN feature in ('highway_steps') THEN ST_Buffer(ST_Intersection(junction_cut, bounds_ext), -casing_width)
                      ELSE ST_Intersection(junction_cut, bounds_ext)
                    END AS way,
                    feature,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane_right,
                    int_lane_left,
                    int_lanes,
                    int_side_right,
                    int_side_left,
                    int_access,
                    construction,
                    service,
                    link,
                    width_nominal,
                    width_tagged,
                    casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                    (SELECT
                        way,
                        -- the extended bounds to clip the junction polygon with
                        -- ST_Buffer(center, width_max*0.75*NULLIF(!scale_denominator!*0.001*0.28,0)) AS bounds_ext,
                        ST_Intersection(
                          COALESCE(
                            ST_Buffer(ways_other, width_max*0.75*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          ),
                          ST_Buffer(center, width_max*1.5*NULLIF(!scale_denominator!*0.001*0.28,0))
                        ) AS bounds_ext,
                        -- the bounds to trim the road line for rendering
                        ST_Intersection(
                          COALESCE(
                            ST_Buffer(ways_other, width_max*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          ),
                          ST_Buffer(center, width_max*NULLIF(!scale_denominator!*0.001*0.28,0))
                        ) AS bounds,
                        junction_poly,
                        -- cut the Multipolygon (if this is a junction that needs special processing)
                        -- into its components
                        (ST_Dump(junction_poly)).geom AS junction_cut,
                        feature,
                        path_type,
                        int_surface,
                        int_tunnel,
                        int_bridge,
                        int_lane_right,
                        int_lane_left,
                        int_lanes,
                        int_side_right,
                        int_side_left,
                        int_access,
                        construction,
                        service,
                        link,
                        width_nominal,
                        width_tagged,
                        width_max,
                        casing_width,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM
                        (SELECT
                            center,
                            way,
                            (SELECT
                                -- all intersection roads
                                ST_Union(h2x.way)
                               FROM highways_raw h2x 
                               WHERE ST_DWithin(junctions_raw.center, h2x.way, 0.1)
                                 AND (junctions_raw.width_tagged > h2x.width_tagged)
                                 AND (junctions_raw.width_tagged > h2x.width_nominal)
                            ) AS ways_other,
                            -- the buffered way minus the buffered (more narrow) intersecting ways form the base of the junction polygon
                            ST_Difference(
                              ST_Buffer(way, (width_max - 2.0*casing_width)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)),
                              COALESCE(
                                (SELECT
                                    -- the cut is thinner than the buffered line to avoid agg rendering artefacts at the edge
                                    ST_Union(ST_Buffer(h2x.way, GREATEST(1.0, GREATEST(h2x.width_nominal, h2x.width_tagged)-1.5)*0.5*NULLIF(!scale_denominator!*0.001*0.28,0)))
                                  FROM highways_raw h2x 
                                  WHERE ST_DWithin(junctions_raw.center, h2x.way, 0.1)
                                    AND (junctions_raw.width_tagged > h2x.width_tagged)
                                    AND (junctions_raw.width_tagged > h2x.width_nominal)
                                ),
                                ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                              )
                            ) AS junction_poly,
                            ('highway_' || highway) AS feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            int_lane_right,
                            int_lane_left,
                            int_lanes,
                            int_side_right,
                            int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM
                            (SELECT
                                ST_StartPoint(way) AS center,
                                way,
                                highway,
                                path_type,
                                int_surface,
                                int_tunnel,
                                int_bridge,
                                int_lane_right,
                                int_lane_left,
                                int_lanes,
                                int_side_right,
                                int_side_left,
                                int_access,
                                construction,
                                service,
                                link,
                                width_nominal,
                                width_tagged,
                                GREATEST(width_nominal, width_tagged) AS width_max,
                                carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)) AS casing_width,
                                layernotnull,
                                osm_id,
                                z_order
                              FROM highways_raw h1
                              WHERE
                                -- either one way connecting not at the ends or two ways connecting at the ends
                                -- and no way connecting at end with the same highway class
                               (SELECT
                                   SUM(
                                     CASE
                                       WHEN (ST_DWithin(ST_StartPoint(h1.way), ST_StartPoint(h2.way), 0.1) OR
                                             ST_DWithin(ST_StartPoint(h1.way), ST_EndPoint(h2.way), 0.1)) THEN
                                         CASE
                                           WHEN (h1.highway = h2.highway) AND (h1.osm_id != h2.osm_id) THEN 3
                                           WHEN (h1.width_tagged > h2.width_tagged)
                                            AND (h1.width_tagged > h2.width_nominal) THEN 1
                                           ELSE 0
                                         END
                                       WHEN (h1.width_tagged > h2.width_tagged)
                                        AND (h1.width_tagged > h2.width_nominal) THEN 2
                                       ELSE 0
                                     END)
                                 FROM highways_raw h2 WHERE ST_DWithin(ST_StartPoint(h1.way), h2.way, 0.1)) = 2
                              UNION ALL
                              SELECT
                                ST_EndPoint(way) AS center,
                                way,
                                highway,
                                path_type,
                                int_surface,
                                int_tunnel,
                                int_bridge,
                                int_lane_right,
                                int_lane_left,
                                int_lanes,
                                int_side_right,
                                int_side_left,
                                int_access,
                                construction,
                                service,
                                link,
                                width_nominal,
                                width_tagged,
                                GREATEST(width_nominal, width_tagged) AS width_max,
                                carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)) AS casing_width,
                                layernotnull,
                                osm_id,
                                z_order
                              FROM highways_raw h1
                              WHERE
                                -- either one way connecting not at the ends or two ways connecting at the ends
                                -- and no way connecting at end with the same highway class
                               (SELECT
                                   SUM(
                                     CASE
                                       WHEN (ST_DWithin(ST_EndPoint(h1.way), ST_StartPoint(h2.way), 0.1) OR
                                             ST_DWithin(ST_EndPoint(h1.way), ST_EndPoint(h2.way), 0.1)) THEN
                                         CASE
                                           WHEN (h1.highway = h2.highway) AND (h1.osm_id != h2.osm_id) THEN 3
                                           WHEN (h1.width_tagged > h2.width_tagged)
                                            AND (h1.width_tagged > h2.width_nominal) THEN 1
                                           ELSE 0
                                         END
                                       WHEN (h1.width_tagged > h2.width_tagged)
                                        AND (h1.width_tagged > h2.width_nominal) THEN 2
                                       ELSE 0
                                     END)
                                 FROM highways_raw h2 WHERE ST_DWithin(ST_EndPoint(h1.way), h2.way, 0.1)) = 2
                            ) AS junctions_raw
                          WHERE (width_tagged > width_nominal)
                            -- we simply assume that the previous conditions and the need to render junctions
                            -- are not met at z<14 - that simplifies mss code (because it is the same as for hw areas)
                            AND z(!scale_denominator!) >= 14
                        ) AS junctions2
                      WHERE ST_NumGeometries(junction_poly) > 1
                    ) AS junctions_flat
                  WHERE ST_Intersects(junction_cut, way)
                ), -- end junctions CTE
