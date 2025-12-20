                SELECT
                    way,
                    feature,
                    path_type,
                    int_surface,
                    int_tunnel,
                    int_bridge,
                    int_lane,
                    int_lanes,
                    int_access,
                    construction,
                    service,
                    link,
                    'null' AS connect_type,
                    width_lane,
                    width_nominal,
                    width_tagged,
                    carto_casing_line_width(railway, int_bridge, (!scale_denominator!)) AS casing_width,
                    layernotnull,
                    osm_id,
                    z_order
                  FROM
                    (SELECT -- begin of railway select
                        way,
                        railway,
                        'railway_' || (CASE
                                         WHEN (railway = 'rail' AND service IN ('spur', 'siding', 'yard')) THEN 'INT-spur-siding-yard'
                                         WHEN (railway = 'tram' AND service IN ('spur', 'siding', 'yard')) THEN 'tram-service'
                                         ELSE railway END) AS feature,
                        'null' AS path_type,
                        NULL AS int_surface,
                        carto_road_tunnel(tunnel, covered) AS int_tunnel,
                        carto_road_bridge(bridge, tags->'ford') AS int_bridge,
                        'no' AS int_lane,
                        NULL AS int_lanes,
                        NULL AS int_access,
                        construction,
                        'INT-normal'::text AS service,
                        'no' AS link,
                        0 AS width_lane,
                        carto_highway_line_width(COALESCE(railway, aeroway), z(!scale_denominator!)) AS width_nominal,
                        carto_railway_line_width_mapped(railway, tags->'width', !bbox!, !scale_denominator!) AS width_tagged,
                        COALESCE(layer,0) AS layernotnull,
                        osm_id,
                        z_order
                      FROM planet_osm_line
                      WHERE (railway IS NOT NULL) AND (railway != 'platform')
                        AND way && !bbox!
                    ) AS railway_features -- end of railway select
