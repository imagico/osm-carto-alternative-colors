/*
   This is - for the purpose of facilitating understanding of the road layer
   SQL code of this style - a stripped down version of the roads layer query
   with the structure left but most of the actual code removed.

   See roads_ac_structure_reduced.sql for an even further simplified version

   Note this is only to show the principal structure of the code.  This is
   not going to be continuously updated to future changes of the roads code
*/
        (SELECT
            ...
          FROM ( -- this wraps all the different road sublayers, most of which are mostly sourced from the same CTEs (roads_all, road_areas_all, tc_all)
            WITH roads_all AS -- roads_all is based on the classic roads-casing/roads-fill/bridges layers + junction polygons
            (SELECT
                ...
              FROM ( -- begin "features" subselect that contains both roads and rail/aero
                WITH highways_raw AS
                -- this queries all roads from the database together with the corresponding width values
                -- to be used both directly and for the sidewalk geometries
                (SELECT
                    ...
                  FROM planet_osm_line
                  WHERE highway IS NOT NULL AND way && !bbox!
                ), -- end highways_raw CTE
                junctions AS
                (SELECT
                    ...
                  FROM
                    (SELECT
                        ...
                      FROM
                        (SELECT
                            ...
                          FROM
                            (SELECT
                                ...
                              FROM highways_raw h1
                              WHERE
                                -- either one way connecting not at the ends or two ways connecting at the ends
                                -- and no way connecting at end with the same highway class
                               (SELECT
                                   ...
                                 FROM highways_raw h2 WHERE ST_DWithin(ST_StartPoint(h1.way), h2.way, 0.1)) = 2
                              UNION ALL
                              SELECT
                                ...
                              FROM highways_raw h1
                              WHERE
                                -- either one way connecting not at the ends or two ways connecting at the ends
                                -- and no way connecting at end with the same highway class
                               (SELECT
                                   ...
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
                highways_all AS
                (SELECT
                    ...
                  FROM highways_raw h
                  LEFT JOIN
                    (SELECT
                        ...
                      FROM junctions GROUP BY osm_id
                    ) AS j
                    ON j.osm_id = h.osm_id
                ), -- end highways_all CTE
                sidewalks_raw AS
                (SELECT
                    ...
                  FROM
                    (SELECT
                        ...
                      FROM
                        -- roads_side are the roads with sidewalks
                        (WITH roads_side AS
                          (SELECT
                              ...
                            FROM highways_all
                            WHERE (int_side_right IS NOT NULL OR int_side_left IS NOT NULL)
                              AND width_nominal > 0.0
                              AND z(!scale_denominator!) >= 18
                          )
                        -- this are the roads with either just one or two identical sidewalks
                        SELECT
                            ...
                          FROM roads_side
                          WHERE (int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                        UNION ALL
                        -- this are (separately) the roads with two different sidewalks
                        SELECT
                            ...
                          FROM roads_side
                          WHERE NOT(int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                        UNION ALL
                        SELECT
                            ...
                          FROM roads_side
                          WHERE NOT(int_side_right = int_side_left OR int_side_right IS NULL OR int_side_left IS NULL)
                        UNION ALL
                        -- this are all other roads without sidewalks the sidewalks need to be clipped with
                        SELECT
                            ...
                          FROM highways_all
                          WHERE (int_side_right IS NULL AND int_side_left IS NULL)
                            AND width_nominal > 0.0
                            AND z(!scale_denominator!) >= 18
                        ) AS sidewalks
                    ) AS l -- end of sidewalks select
                ) -- end sidewalks_raw CTE
                SELECT -- begin of sidewalks select
                    ...
                  FROM sidewalks_raw l
                  WHERE line IS NOT NULL
                    AND int_tunnel = 'no'
                  -- end of sidewalks select
                UNION ALL
                SELECT -- begin of main road select
                    ...
                  FROM highways_all
                  -- end of main road select
                UNION ALL
                SELECT -- begin of junction polygons select
                    ...
                  FROM junctions
                  -- end of junction polygons select
                UNION ALL
                SELECT -- begin of ford/mountain_pass point pseudo-line select
                    ...
                    FROM
                      (SELECT
                          ...
                        FROM planet_osm_point p
                          JOIN planet_osm_line l ON ST_DWithin(p.way, l.way, 0.1) -- Assumes Mercator
                        WHERE (p.tags @> 'ford=>yes' OR p.tags @> 'ford=>stepping_stones' OR p.tags @> 'mountain_pass=>yes')
                          AND l.highway IS NOT NULL
                          AND p.way && !bbox!
                      ) AS fords
                  -- end of ford/mountain_pass point pseudo-line select
                UNION ALL
                SELECT -- begin of rail/aero select
                    ...
                  FROM planet_osm_line
                  WHERE (railway IS NOT NULL OR aeroway IS NOT NULL)
                    AND way && !bbox! -- end of rail/aero select
              ) AS roads_features
            ), -- end of roads_all CTE
            road_areas_all AS
            (SELECT
                ...
              FROM planet_osm_polygon
              WHERE (highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform')
                OR railway IN ('platform')
                OR aeroway IN ('runway', 'taxiway', 'helipad'))
                AND way && !bbox!
                AND z(!scale_denominator!) >= 14
            ), -- end of road_areas_all CTE
            tc_all AS
            (SELECT
                ...
              FROM
                (WITH tc_combos AS
                  (SELECT DISTINCT ON (p.way)
                      ...
                    FROM planet_osm_point p
                      JOIN planet_osm_line l ON ST_DWithin(p.way, l.way, 0.1) -- Assumes Mercator
                    WHERE p.highway IN ('turning_circle', 'turning_loop', 'mini_roundabout', 'passing_place')
                      AND l.highway IN ('trunk', 'trunk_link', 'primary', 'primary_link', 'secondary', 'secondary_link',
                                        'tertiary', 'tertiary_link', 'residential', 'unclassified', 'service',
                                        'living_street', 'track')
                      AND p.way && !bbox!
                      AND z(!scale_denominator!) >= 15
                  )
                SELECT
                    ...
                  FROM tc_combos
                  WHERE tc_type IN ('turning_circle', 'turning_loop', 'mini_roundabout')
                UNION ALL
                SELECT
                    ...
                  FROM
                    (SELECT
                        ...
                      FROM tc_combos
                      WHERE tc_type IN ('passing_place')) AS pp_combos
                ) AS turning_circle_features
            ) -- end of tc_all CTE
            SELECT -- casing
                way,
                'casing' AS road_layer,
                ...
              FROM roads_all
              WHERE int_junction = 'no'
            UNION ALL
            SELECT -- background
                way,
                'background' AS road_layer,
                ...
              FROM roads_all
              WHERE int_junction = 'no'
            UNION ALL
            SELECT -- background_unpaved
                ST_Buffer(way, 0.5*(width_max - 2.0*casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0)) AS way,
                'background_unpaved' AS road_layer,
                ...
              FROM roads_all
              WHERE int_junction = 'no'
                AND int_tunnel = 'no'
                AND int_surface = 'unpaved'
                AND width >= 0.0
                AND
                  -- this is all the roads with a fill that is patterened for unpaved roads - only at high zoom and rendered as background
                  feature IN ('highway_bridleway', 'highway_footway', 'highway_cycleway', 'highway_path', 'highway_track')
                AND z(!scale_denominator!) >= 18
            UNION ALL
            SELECT -- fill
                way,
                'fill' AS road_layer,
                ...
              FROM roads_all
              WHERE int_junction = 'no'
            UNION ALL
            SELECT -- fill_unpaved
                CASE
                  WHEN feature IN ('aeroway_runway', 'aeroway_taxiway') THEN
                    ST_Buffer(way, 0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0), 'endcap=flat join=round')
                  WHEN feature IN ('highway_raceway', 'highway_platform', 'railway_platform') THEN
                    ST_Buffer(way, 0.5*width_max*NULLIF(!scale_denominator!*0.001*0.28,0))
                  ELSE
                    ST_Buffer(way, 0.5*(width_max - 2.0*casing_width)*NULLIF(!scale_denominator!*0.001*0.28,0))
                END AS way,
                'fill_unpaved' AS road_layer,
                ...
              FROM roads_all
              WHERE int_junction = 'no'
                AND int_tunnel = 'no'
                AND int_surface = 'unpaved'
                AND
                  -- this is all the roads with a fill that is patterened for unpaved roads
                  feature IN (
                    'highway_motorway', 'highway_trunk', 'highway_primary', 'highway_secondary', 'highway_tertiary', 'highway_unclassified',
                    'highway_residential', 'highway_service', 'highway_road', 'highway_pedestrian', 'highway_living_street', 'highway_raceway',
                    'highway_platform', 'railway_platform', 'aeroway_runway', 'aeroway_taxiway')
                AND z(!scale_denominator!) >= 12
            UNION ALL
            SELECT -- junction_casing
                way,
                'junction_casing' AS road_layer,
                ...
              FROM roads_all
              WHERE int_junction != 'no'
            UNION ALL
            SELECT -- junction_fill
                way,
                'junction_fill' AS road_layer,
                ...
              FROM roads_all
              WHERE int_junction != 'no'
            UNION ALL
            SELECT -- centerline
                way,
                'centerline' AS road_layer,
                ...
              FROM roads_all
              WHERE int_junction = 'no'
                AND int_tunnel = 'no'
                AND z(!scale_denominator!) >= 15
            UNION ALL
            SELECT -- area_casing
                way,
                'area_casing' AS road_layer,
                ...
              FROM road_areas_all
              WHERE feature NOT IN ('aeroway_runway', 'aeroway_taxiway', 'aeroway_helipad')
            UNION ALL
            SELECT -- area_fill
                way,
                'area_fill' AS road_layer,
                ...
              FROM road_areas_all
            UNION ALL
            SELECT -- tc_casing
                way,
                'tc_casing' AS road_layer,
                ...
              FROM tc_all
            UNION ALL
            SELECT -- tc_fill
                way,
                'tc_fill' AS road_layer,
                ...
              FROM tc_all
            UNION ALL
            SELECT -- waterway_bridges
                way,
                'waterway_bridges' AS road_layer,
                ...
              FROM planet_osm_line
              WHERE waterway IN ('river', 'canal', 'stream', 'drain', 'ditch', 'wadi')
                AND bridge IN ('yes', 'aqueduct')
                AND way && !bbox!
                AND z(!scale_denominator!) >= 12
            UNION ALL
            SELECT -- line_barriers
                way,
                'line_barriers' AS road_layer,
                ...
              FROM (
                -- line barriers without intersecting barrier=entrance nodes
                SELECT way,
                    ...
                  FROM planet_osm_line l
                  WHERE (barrier IN ('chain', 'city_wall', 'ditch', 'fence', 'guard_rail',
                        'handrail', 'hedge', 'retaining_wall', 'wall')
                    OR historic = 'citywalls')
                    AND (waterway IS NULL OR waterway NOT IN ('river', 'canal', 'derelict_canal', 'stream', 'drain', 'ditch', 'wadi'))
                    AND (l.way && !bbox!)
                    AND NOT EXISTS
                      (SELECT 1 FROM planet_osm_point e WHERE ST_Intersects(l.way, e.way)
                        AND e.barrier IN ('entrance'))
                UNION ALL
                -- barriers with entrance nodes cut out
                SELECT
                    ...
                  FROM planet_osm_point e
                  JOIN planet_osm_line l ON ST_Intersects(l.way, e.way)
                  WHERE e.barrier IN ('entrance')
                    AND (e.way && ST_Expand(!bbox!, (0.5*(carto_highway_line_width('motorway', z(!scale_denominator!)) + 2.0 +
                         carto_barrier_line_width(
                           CASE WHEN l.historic = 'citywalls' THEN l.historic ELSE l.barrier END,
                           z(!scale_denominator!)
                         ))*NULLIF(!scale_denominator!*0.001*0.28,0))))
                    AND (l.barrier IN ('chain', 'city_wall', 'ditch', 'fence', 'guard_rail',
                        'handrail', 'hedge', 'retaining_wall', 'wall')
                      OR l.historic = 'citywalls')
                    AND (l.waterway IS NULL OR l.waterway NOT IN ('river', 'canal', 'derelict_canal', 'stream', 'drain', 'ditch', 'wadi'))
                    AND (l.way && !bbox!)
                    GROUP BY l.way, l.barrier, l.historic, l.layer, l.osm_id, l.z_order
                ) AS line_barriers
                WHERE z(!scale_denominator!) >= 15
            UNION ALL
            SELECT -- ferry_routes
                way,
                'ferry_routes' AS road_layer,
                ...
              FROM planet_osm_line
              WHERE route = 'ferry'
            UNION ALL
            SELECT -- landuse_overlay
                way,
                'landuse_overlay' AS road_layer,
                ...
              FROM planet_osm_polygon
              WHERE landuse = 'military'
                AND building IS NULL
            ) AS roads_sublayers
          -- this is the full ordering of the roads stack
          ORDER BY
            CASE
              WHEN int_bridge IN ('yes') THEN layernotnull + 100
              WHEN int_tunnel NOT IN ('no') THEN layernotnull - 100
              ELSE 0
            END,
            CASE
              -- this is bridges only so it comes after all the non-bridge layers and before the road bridge layers
              WHEN road_layer = 'waterway_bridges_casing' THEN 0
              WHEN road_layer = 'waterway_bridges_fill' THEN 1
              WHEN road_layer = 'landuse_overlay' THEN 2
              WHEN road_layer = 'line_barriers' THEN 3
              WHEN road_layer = 'ferry_routes' THEN 4
              WHEN road_layer = 'tc_casing' THEN 5
              WHEN road_layer = 'area_casing' THEN 6
              WHEN road_layer = 'junction_casing' THEN 7
              WHEN road_layer = 'casing' THEN 8
              WHEN road_layer = 'background' THEN 9
              WHEN road_layer = 'background_unpaved' THEN 9
              WHEN road_layer = 'area_fill' THEN 10
              WHEN road_layer = 'junction_fill' THEN 11
              WHEN road_layer = 'fill' THEN 12
              WHEN road_layer = 'fill_unpaved' THEN 12
              WHEN road_layer = 'centerline' THEN 13
              WHEN road_layer = 'tc_fill' THEN 14
            END,
            layernotnull,
            z_order,
            CASE WHEN substr(feature, 1, 16) = 'highway_sidewalk' THEN 0 ELSE 1 END,
            CASE WHEN access IN ('no', 'private') THEN 0 WHEN access IN ('destination') THEN 1 ELSE 2 END,
            CASE WHEN int_surface IN ('unpaved') THEN 0 ELSE 1 END,
            osm_id
        ) AS roads_sql
