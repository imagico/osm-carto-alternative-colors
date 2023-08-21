                sidewalks_raw AS
                (SELECT 1)
                SELECT -- begin of sidewalks dummy select
                    ST_SetSRID('GEOMETRYCOLLECTION EMPTY'::geometry, 3857) AS way,
                    NULL AS feature,
                    NULL AS path_type,
                    NULL AS int_surface,
                    NULL AS int_tunnel,
                    NULL AS int_bridge,
                    'null' AS int_lane_right,
                    'null' AS int_lane_left,
                    NULL AS int_lanes,
                    'no' AS int_junction,
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
                  -- end of sidewalks dummy select
