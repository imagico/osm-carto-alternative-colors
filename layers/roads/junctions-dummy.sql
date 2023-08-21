                junctions AS
                (SELECT
                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857) AS clip,
                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857) AS bounds,
                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857) AS way,
                    NULL AS feature,
                    NULL AS path_type,
                    NULL AS int_surface,
                    NULL AS int_tunnel,
                    NULL AS int_bridge,
                    NULL AS int_lane_right,
                    NULL AS int_lane_left,
                    NULL AS int_lanes,
                    NULL AS int_side_right,
                    NULL AS int_side_left,
                    NULL AS int_access,
                    NULL AS construction,
                    NULL AS service,
                    NULL AS link,
                    0 AS width_nominal,
                    0 AS width_tagged,
                    0 AS casing_width,
                    0 AS layernotnull,
                    0::bigint AS osm_id,
                    0 AS z_order
                  WHERE false
                ), -- end junctions CTE
