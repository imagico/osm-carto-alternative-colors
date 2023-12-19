                SELECT -- begin of sidewalks select
                    way,
                    feature,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    'no' AS int_lane,
                    NULL AS int_lanes,
                    'no' AS int_junction,
                    int_access,
                    construction,
                    service,
                    link,
                    0 AS width_lane,
                    width_nominal,
                    width_tagged,
                    casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                    (SELECT -- begin of sidewalks select
                        ST_Difference(
                          CASE WHEN feature = 'highway_side_parking' THEN
                            ST_Difference(
                              buffer,
                              -- this clips the sidewalk outlines with all adjacent roads
                              (SELECT
                                  COALESCE(
                                    ST_Union(
                                      CASE
                                        WHEN o.feature = 'highway_side_parking' THEN
                                          ST_Union(buffer_base, ST_Buffer(buffer, 1.5*NULLIF(!scale_denominator!*0.001*0.28,0)))
                                        -- WHEN line IS NOT NULL THEN
                                        --   buffer
                                        ELSE
                                          buffer_base
                                      END
                                    ),
                                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                  )
                                FROM sidewalks_raw o
                                WHERE
                                  -- intersect at ends or in equal layer
                                  ((ST_DWithin(l.way_orig, o.way_orig, 0.1) AND
                                    (o.layernotnull = l.layernotnull OR (l.int_bridge = 'no' AND l.int_tunnel = 'no')) AND
                                    o.int_bridge = l.int_bridge AND
                                    o.int_tunnel = l.int_tunnel) OR
                                   ST_DWithin(
                                     ST_Collect(ST_StartPoint(l.way_orig), ST_EndPoint(l.way_orig)),
                                     ST_Collect(ST_StartPoint(o.way_orig), ST_EndPoint(o.way_orig)), 0.1)
                                  )
                                  AND o.osm_id != l.osm_id
                              )
                            )
                          ELSE
                            ST_Difference(
                              line,
                              -- this clips the sidewalk outlines with all adjacent roads
                              (SELECT
                                  COALESCE(
                                    ST_Union(
                                      CASE WHEN o.feature = 'highway_side_parking' THEN
                                        -- ST_Buffer(buffer, 1.0*NULLIF(!scale_denominator!*0.001*0.28,0))
                                        ST_Union(buffer_base, ST_Buffer(buffer, 1.5*NULLIF(!scale_denominator!*0.001*0.28,0)))
                                      ELSE
                                        ST_Union(buffer_base, buffer)
                                      END
                                    ),
                                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                  )
                                FROM sidewalks_raw o
                                WHERE
                                  -- intersect at ends or in equal layer
                                  ((ST_DWithin(l.way_orig, o.way_orig, 0.1) AND
                                    (o.layernotnull = l.layernotnull OR (l.int_bridge = 'no' AND l.int_tunnel = 'no')) AND
                                    o.int_bridge = l.int_bridge AND
                                    o.int_tunnel = l.int_tunnel) OR
                                   ST_DWithin(
                                     ST_Collect(ST_StartPoint(l.way_orig), ST_EndPoint(l.way_orig)),
                                     ST_Collect(ST_StartPoint(o.way_orig), ST_EndPoint(o.way_orig)), 0.1)
                                  )
                                  AND o.osm_id != l.osm_id
                              )
                            )
                          END,
                          -- this clips the sidewalk outlines with a possible junction clip polygon
                          (SELECT
                              COALESCE(
                                ST_Union(ST_Buffer(j.clip, 6.0*GREATEST(j.casing_width, l.casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0))),
                                ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                              )
                            FROM junctions j
                            WHERE
                              j.int_bridge = l.int_bridge AND
                              j.int_tunnel = l.int_tunnel AND
                              j.osm_id = l.osm_id
                          )
                        ) AS way,
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
                        casing_width,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM sidewalks_raw l
                      WHERE line IS NOT NULL
                        AND int_tunnel = 'no') AS _
                  -- end of sidewalks select
