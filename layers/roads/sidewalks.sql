                sidewalks_raw AS
                (SELECT
                    buffer,
                    -- this generates a buffer outline (either both or one sided)
                    -- for all rows with some kind of sidewalk
                    CASE
                      WHEN int_side_right IS NULL AND int_side_left IS NULL THEN
                        NULL
                      WHEN int_side_right IS NULL THEN
                        ST_Intersection(
                          ST_Boundary(buffer),
                          ST_Buffer(
                            ST_OffsetCurve(way, (0.5*width_max)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            (0.5*width_max + sw_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)
                          )
                        )
                      WHEN int_side_left IS NULL THEN
                        ST_Intersection(
                          ST_Boundary(buffer),
                          ST_Buffer(
                            ST_OffsetCurve(way, -(0.5*width_max)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            (0.5*width_max + sw_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)
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
                    carto_casing_line_width('sidewalk', int_bridge, z(!scale_denominator!)) AS casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                    (SELECT
                        -- this is the buffer that forms the basis for the sidewalk geometries and their clipping
                        ST_Difference(
                          ST_Buffer(
                            way_orig,
                            (0.5*width_max + sw_offset)*NULLIF(!scale_denominator!*0.001*0.28,0)
                          ),
                          COALESCE(
                            ST_Buffer(clip, (sw_offset + 1.0)*NULLIF(!scale_denominator!*0.001*0.28,0)),
                            ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857)
                          )
                        ) AS buffer,
                        way,
                        way_orig,
                        ('highway_sidewalk_' || COALESCE(int_side_right,int_side_left)) AS feature,
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
                        sw_offset,
                        layernotnull,
                        osm_id,
                        z_order
                      FROM
                        -- roads_side are the roads with sidewalks
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
                              int_access,
                              construction,
                              highway AS service, -- we use this to store the original highway value to be able to use that in MSS code
                              link,
                              width_nominal,
                              width_tagged,
                              GREATEST(width_nominal, width_tagged) AS width_max,
                              carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)) AS casing_width,
                              layernotnull,
                              osm_id,
                              z_order
                            FROM highways_all
                            WHERE (int_side_right IS NOT NULL OR int_side_left IS NOT NULL)
                              AND width_nominal > 0.0
                              AND z(!scale_denominator!) >= 18
                          )
                        -- this are the roads with either just one or two identical sidewalks
                        SELECT
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
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            CASE WHEN int_bridge = 'no' THEN 3.0 ELSE 2.5 END * casing_width AS sw_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM roads_side
                          WHERE (int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                        UNION ALL
                        -- this are (separately) the roads with two different sidewalks
                        SELECT
                            way,
                            way_orig,
                            clip,
                            feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            int_side_right,
                            NULL AS int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            CASE WHEN int_bridge = 'no' THEN 3.0 ELSE 2.5 END * casing_width AS sw_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM roads_side
                          WHERE NOT(int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                        UNION ALL
                        SELECT
                            way,
                            way_orig,
                            clip,
                            feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            NULL AS int_side_right,
                            int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            width_max,
                            casing_width,
                            CASE WHEN int_bridge = 'no' THEN 3.0 ELSE 2.5 END * casing_width AS sw_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM roads_side
                          WHERE NOT(int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                        UNION ALL
                        -- this are all other roads without sidewalks the sidewalks need to be clipped with
                        SELECT
                            way,
                            way_orig,
                            clip,
                            feature,
                            path_type,
                            int_surface,
                            int_tunnel,
                            int_bridge,
                            NULL AS int_side_right,
                            NULL AS int_side_left,
                            int_access,
                            construction,
                            service,
                            link,
                            width_nominal,
                            width_tagged,
                            GREATEST(width_nominal, width_tagged) AS width_max,
                            carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)) AS casing_width,
                            3.0 * carto_casing_line_width(highway, int_bridge, z(!scale_denominator!)) AS sw_offset,
                            layernotnull,
                            osm_id,
                            z_order
                          FROM highways_all
                          WHERE (int_side_right IS NULL AND int_side_left IS NULL)
                            AND width_nominal > 0.0
                            AND z(!scale_denominator!) >= 18
                        ) AS sidewalks
                    ) AS l -- end of sidewalks select
                ) -- end sidewalks_raw CTE
                SELECT -- begin of sidewalks select
                    ST_Difference(
                      ST_Difference(
                        line,
                        -- this clips the sidewalk outlines with all adjacent roads
                        (SELECT
                            COALESCE(
                              ST_Union(buffer),
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
                      ),
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
                    'null' AS int_lane_right,
                    'null' AS int_lane_left,
                    NULL AS int_lanes,
                    'no' AS int_junction,
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
                    AND int_tunnel = 'no'
                  -- end of sidewalks select
