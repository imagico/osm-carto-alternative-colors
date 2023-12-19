                SELECT -- begin of lanes select
                    line AS way,
                    ('highway_lane_' || int_lane) AS feature,
                    int_lane AS path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane,
                    NULL AS int_lanes,
                    'no' AS int_junction,
                    int_access,
                    construction,
                    service,
                    link,
                    width_lane,
                    width_nominal,
                    width_tagged,
                    casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                    -- roads_lane are the roads with special function lanes (either parking, cycle or bus)
                    (WITH roads_lane AS
                      (SELECT
                          way,
                          way_orig,
                          clip,
                          feature,
                          path_type,
                          int_surface,
                          int_tunnel,
                          int_bridge,
                          int_lane_right,
                          int_lane_left,
                          string_to_array(int_lane_right, '+') AS int_lane_types_right,
                          string_to_array(int_lane_left, '+') AS int_lane_types_left,
                          int_access,
                          construction,
                          service,
                          link,
                          width_lane,
                          width_nominal,
                          width_tagged,
                          GREATEST(width_nominal, width_tagged) AS width_max,
                          carto_casing_line_width('sidewalk', int_bridge, z(!scale_denominator!)) AS casing_width,
                          layernotnull,
                          osm_id,
                          z_order
                        FROM highways_all
                        WHERE (int_lane_right IS NOT NULL OR int_lane_left IS NOT NULL)
                          AND width_nominal > 0.0
                      ),
                    -- all roads the lanes need to be clipped with
                    roads_other AS
                      (SELECT
                          way,
                          way_orig,
                          clip,
                          ST_Buffer(
                            way_orig,
                            -- (GREATEST(width_nominal, width_tagged)*0.5 - width_lane*0.5 - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0),
                            (GREATEST(width_nominal, width_tagged)*0.5 - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0),
                            'endcap=flat join=round'
                          ) AS buffer,
                          feature,
                          path_type,
                          int_surface,
                          int_tunnel,
                          int_bridge,
                          int_access,
                          construction,
                          service,
                          link,
                          layernotnull,
                          osm_id,
                          z_order
                        FROM highways_all
                        WHERE width_nominal > 0.0
                      ),
                    -- this are the roads with parking lane - either on one or both sides
                    roads_parking AS
                      (SELECT
                          way,
                          way_orig,
                          clip,
                          buffer,
                          ST_Difference(
                            ST_Difference(
                              -- this generates a buffer outline (either both or one sided)
                              -- for all rows with a parking lane and clips them - as necessary - to a single side
                              CASE WHEN lane_clip IS NULL THEN
                                ST_Boundary(buffer)
                              ELSE
                                ST_Intersection(
                                  ST_Boundary(buffer),
                                  lane_clip
                                )
                              END,
                              -- this clips the lane outlines with all adjacent roads
                              (SELECT
                                  COALESCE(
                                    ST_Union(
                                      buffer
                                    ),
                                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                  )
                                FROM roads_other o
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
                            ),
                            -- this clips the lane outlines with a possible junction clip polygon
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
                          ) AS line,
                          feature,
                          path_type,
                          int_surface,
                          int_tunnel,
                          int_bridge,
                          COALESCE(int_lane_right, int_lane_left) AS int_lane,
                          int_lane_right,
                          int_lane_left,
                          int_access,
                          construction,
                          service,
                          link,
                          width_lane,
                          width_nominal,
                          width_tagged,
                          width_max,
                          casing_width,
                          layernotnull,
                          osm_id,
                          z_order
                        FROM
                          (SELECT
                              way,
                              way_orig,
                              clip,
                              ST_Difference(
                                ST_Buffer(
                                  way_orig,
                                  (width_max*0.5 - width_lane*0.5 - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0)
                                ),
                                COALESCE(
                                  ST_Buffer(clip, (width_max*0.5 - width_lane*0.5 - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                  ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                )
                              ) AS buffer,
                              CASE
                                WHEN int_lane_right IS NULL AND int_lane_left IS NULL THEN
                                  ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                WHEN int_lane_right IS NULL THEN
                                  ST_Buffer(
                                    ST_OffsetCurve(way, 0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                    0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)
                                  )
                                WHEN int_lane_left IS NULL THEN
                                  ST_Buffer(
                                    ST_OffsetCurve(way, -0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                    0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)
                                  )
                                ELSE
                                  NULL
                              END AS lane_clip,
                              feature,
                              path_type,
                              int_surface,
                              int_tunnel,
                              int_bridge,
                              int_lane_right,
                              int_lane_left,
                              int_access,
                              construction,
                              service,
                              link,
                              width_lane,
                              width_nominal,
                              width_tagged,
                              width_max,
                              casing_width,
                              layernotnull,
                              osm_id,
                              z_order
                            FROM
                              (SELECT
                                  way,
                                  way_orig,
                                  clip,
                                  feature,
                                  path_type,
                                  int_surface,
                                  int_tunnel,
                                  int_bridge,
                                  CASE WHEN int_lane_types_right[1] = 'parking' THEN 'parking' ELSE NULL END AS int_lane_right,
                                  CASE WHEN int_lane_types_left[1] = 'parking' THEN 'parking' ELSE NULL END int_lane_left,
                                  int_access,
                                  construction,
                                  service,
                                  link,
                                  width_lane,
                                  width_nominal,
                                  width_tagged,
                                  width_max,
                                  casing_width,
                                  layernotnull,
                                  osm_id,
                                  z_order
                                FROM roads_lane
                                WHERE (int_lane_types_right[1] = 'parking' OR int_lane_types_left[1] = 'parking')
                              ) AS lp
                          ) AS l
                      ), -- end or roads_parking CTE
                    -- this are the roads with cycle lane - either on one or both sides
                    roads_cycle AS
                      (SELECT
                          way,
                          way_orig,
                          clip,
                          buffer,
                          ST_Difference(
                            ST_Difference(
                              -- this generates a buffer outline (either both or one sided)
                              -- for all rows with a parking lane and clips them - as necessary - to a single side
                              CASE WHEN lane_clip IS NULL THEN
                                ST_Boundary(buffer)
                              ELSE
                                ST_Intersection(
                                  ST_Boundary(buffer),
                                  lane_clip
                                )
                              END,
                              -- this clips the lane outlines with all adjacent roads
                              (SELECT
                                  COALESCE(
                                    ST_Union(
                                      buffer
                                    ),
                                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                  )
                                FROM roads_other o
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
                            ),
                            -- this clips the lane outlines with a possible junction clip polygon
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
                          ) AS line,
                          feature,
                          path_type,
                          int_surface,
                          int_tunnel,
                          int_bridge,
                          COALESCE(int_lane_right, int_lane_left) AS int_lane,
                          int_lane_right,
                          int_lane_left,
                          int_access,
                          construction,
                          service,
                          link,
                          width_lane,
                          width_nominal,
                          width_tagged,
                          width_max,
                          casing_width,
                          layernotnull,
                          osm_id,
                          z_order
                        FROM
                          (SELECT
                              way,
                              way_orig,
                              clip,
                              ST_Difference(
                                ST_Difference(
                                  ST_Buffer(
                                    way_orig,
                                    (width_max*0.5 - width_lane*0.5 - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0)
                                  ),
                                  COALESCE(
                                    ST_Buffer(clip, (width_max*0.5 - width_lane*0.5 - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                  )
                                ),
                                (SELECT
                                    COALESCE(
                                      ST_Union(ST_Buffer(o.line, (0.5*o.width_lane + 0.5*width_lane + casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0))),
                                      ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                    )
                                  FROM roads_parking o
                                  WHERE
                                    ST_DWithin(
                                      ST_Collect(ST_StartPoint(lc.way_orig), ST_EndPoint(lc.way_orig)),
                                      ST_Collect(ST_StartPoint(o.way_orig), ST_EndPoint(o.way_orig)), 0.1)
                                )
                              ) AS buffer,
                              CASE
                                WHEN int_lane_right IS NULL AND int_lane_left IS NULL THEN
                                  ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                WHEN int_lane_right IS NULL THEN
                                  ST_Buffer(
                                    ST_OffsetCurve(way, 0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                    0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)
                                  )
                                WHEN int_lane_left IS NULL THEN
                                  ST_Buffer(
                                    ST_OffsetCurve(way, -0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                    0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)
                                  )
                                ELSE
                                  NULL
                              END AS lane_clip,
                              feature,
                              path_type,
                              int_surface,
                              int_tunnel,
                              int_bridge,
                              int_lane_right,
                              int_lane_left,
                              int_access,
                              construction,
                              service,
                              link,
                              width_lane,
                              width_nominal,
                              width_tagged,
                              width_max,
                              casing_width,
                              layernotnull,
                              osm_id,
                              z_order
                            FROM
                              (SELECT
                                  way,
                                  way_orig,
                                  clip,
                                  feature,
                                  path_type,
                                  int_surface,
                                  int_tunnel,
                                  int_bridge,
                                  CASE WHEN int_lane_types_right[1] = 'cycle' OR int_lane_types_right[2] = 'cycle' THEN 'cycle' ELSE NULL END AS int_lane_right,
                                  CASE WHEN int_lane_types_left[1] = 'cycle' OR int_lane_types_left[2] = 'cycle' THEN 'cycle' ELSE NULL END int_lane_left,
                                  int_access,
                                  construction,
                                  service,
                                  link,
                                  width_lane,
                                  width_nominal,
                                  width_tagged,
                                  width_max,
                                  casing_width,
                                  layernotnull,
                                  osm_id,
                                  z_order
                                FROM roads_lane
                                WHERE (int_lane_types_right[1] = 'cycle'
                                   OR int_lane_types_left[1] = 'cycle'
                                   OR int_lane_types_right[2] = 'cycle'
                                   OR int_lane_types_left[2] = 'cycle')
                              ) AS lc
                          ) AS l
                      ), -- end or roads_cycle CTE
                    -- this are the roads with bus lane - either on one or both sides
                    roads_bus AS
                      (SELECT
                          way,
                          way_orig,
                          clip,
                          buffer,
                          ST_Difference(
                            ST_Difference(
                              -- this generates a buffer outline (either both or one sided)
                              -- for all rows with a parking lane and clips them - as necessary - to a single side
                              CASE WHEN lane_clip IS NULL THEN
                                ST_Boundary(buffer)
                              ELSE
                                ST_Intersection(
                                  ST_Boundary(buffer),
                                  lane_clip
                                )
                              END,
                              -- this clips the lane outlines with all adjacent roads
                              (SELECT
                                  COALESCE(
                                    ST_Union(
                                      buffer
                                    ),
                                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                  )
                                FROM roads_other o
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
                            ),
                            -- this clips the lane outlines with a possible junction clip polygon
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
                          ) AS line,
                          feature,
                          path_type,
                          int_surface,
                          int_tunnel,
                          int_bridge,
                          COALESCE(int_lane_right, int_lane_left) AS int_lane,
                          int_lane_right,
                          int_lane_left,
                          int_access,
                          construction,
                          service,
                          link,
                          width_lane,
                          width_nominal,
                          width_tagged,
                          width_max,
                          casing_width,
                          layernotnull,
                          osm_id,
                          z_order
                        FROM
                          (SELECT
                              way,
                              way_orig,
                              clip,
                              ST_Difference(
                                ST_Difference(
                                  ST_Buffer(
                                    way_orig,
                                    (width_max*0.5 - width_lane*0.5 - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0)
                                  ),
                                  COALESCE(
                                    ST_Buffer(clip, (width_max*0.5 - width_lane*0.5 - casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                  )
                                ),
                                ST_Union(
                                  (SELECT
                                      COALESCE(
                                        ST_Union(ST_Buffer(o.line, (0.5*o.width_lane + 0.5*width_lane + casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0))),
                                        ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                      )
                                    FROM roads_parking o
                                    WHERE
                                      ST_DWithin(
                                        ST_Collect(ST_StartPoint(lc.way_orig), ST_EndPoint(lc.way_orig)),
                                        ST_Collect(ST_StartPoint(o.way_orig), ST_EndPoint(o.way_orig)), 0.1)
                                  ),
                                  (SELECT
                                      COALESCE(
                                        ST_Union(ST_Buffer(o.line, (0.5*o.width_lane + 0.5*width_lane + casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0))),
                                        ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                      )
                                    FROM roads_cycle o
                                    WHERE
                                      ST_DWithin(
                                        ST_Collect(ST_StartPoint(lc.way_orig), ST_EndPoint(lc.way_orig)),
                                        ST_Collect(ST_StartPoint(o.way_orig), ST_EndPoint(o.way_orig)), 0.1)
                                  )
                                )
                              ) AS buffer,
                              CASE
                                WHEN int_lane_right IS NULL AND int_lane_left IS NULL THEN
                                  ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                                WHEN int_lane_right IS NULL THEN
                                  ST_Buffer(
                                    ST_OffsetCurve(way, 0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                    0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)
                                  )
                                WHEN int_lane_left IS NULL THEN
                                  ST_Buffer(
                                    ST_OffsetCurve(way, -0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)),
                                    0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0)
                                  )
                                ELSE
                                  NULL
                              END AS lane_clip,
                              feature,
                              path_type,
                              int_surface,
                              int_tunnel,
                              int_bridge,
                              int_lane_right,
                              int_lane_left,
                              int_access,
                              construction,
                              service,
                              link,
                              width_lane,
                              width_nominal,
                              width_tagged,
                              width_max,
                              casing_width,
                              layernotnull,
                              osm_id,
                              z_order
                            FROM
                              (SELECT
                                  way,
                                  way_orig,
                                  clip,
                                  feature,
                                  path_type,
                                  int_surface,
                                  int_tunnel,
                                  int_bridge,
                                  CASE WHEN int_lane_types_right[1] = 'bus' OR int_lane_types_right[2] = 'bus' OR int_lane_types_right[3] = 'bus' THEN 'bus' ELSE NULL END AS int_lane_right,
                                  CASE WHEN int_lane_types_left[1] = 'bus' OR int_lane_types_left[2] = 'bus' OR int_lane_types_left[3] = 'bus' THEN 'bus' ELSE NULL END int_lane_left,
                                  int_access,
                                  construction,
                                  service,
                                  link,
                                  width_lane,
                                  width_nominal,
                                  width_tagged,
                                  width_max,
                                  casing_width,
                                  layernotnull,
                                  osm_id,
                                  z_order
                                FROM roads_lane
                                WHERE (int_lane_types_right[1] = 'bus'
                                   OR int_lane_types_left[1] = 'bus'
                                   OR int_lane_types_right[2] = 'bus'
                                   OR int_lane_types_left[2] = 'bus'
                                   OR int_lane_types_right[3] = 'bus'
                                   OR int_lane_types_left[3] = 'bus')
                              ) AS lc
                          ) AS l
                      ) -- end or roads_bus CTE
                    -- these are the parking, cycle and bus lanes together
                    SELECT
                        'parking' AS lane_type,
                        buffer,
                        line,
                        way,
                        way_orig,
                        clip,
                        feature,
                        path_type,
                        int_surface,
                        int_tunnel,
                        int_bridge,
                        int_lane,
                        int_lane_right,
                        int_lane_left,
                        int_access,
                        construction,
                        service,
                        link,
                        width_lane,
                        width_nominal,
                        width_tagged,
                        width_max,
                        casing_width,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM roads_parking
                    UNION ALL
                    SELECT
                        'cycle' AS lane_type,
                        buffer,
                        line,
                        way,
                        way_orig,
                        clip,
                        feature,
                        path_type,
                        int_surface,
                        int_tunnel,
                        int_bridge,
                        int_lane,
                        int_lane_right,
                        int_lane_left,
                        int_access,
                        construction,
                        service,
                        link,
                        GREATEST(casing_width, width_lane-casing_width*1.5) AS width_lane,
                        width_nominal,
                        width_tagged,
                        width_max,
                        casing_width,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM roads_cycle
                    UNION ALL
                    SELECT
                        'bus' AS lane_type,
                        buffer,
                        line,
                        way,
                        way_orig,
                        clip,
                        feature,
                        path_type,
                        int_surface,
                        int_tunnel,
                        int_bridge,
                        int_lane,
                        int_lane_right,
                        int_lane_left,
                        int_access,
                        construction,
                        service,
                        link,
                        GREATEST(casing_width, width_lane-casing_width*1.5) AS width_lane,
                        width_nominal,
                        width_tagged,
                        width_max,
                        casing_width,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM roads_bus
                    ) AS lanes
                  WHERE int_tunnel = 'no'
                    AND z(!scale_denominator!) >= 18
                  -- end of lanes select
