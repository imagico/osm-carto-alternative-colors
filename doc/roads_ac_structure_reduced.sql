/*
   This is - for the purpose of facilitating understanding of the road layer
   SQL code of this style - a drastically stripped down version of the roads
   layer query with only the structure left and almost all of the actual code
   removed.

   See roads_ac_structure.sql for a less simplified version

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
                ),
                junctions AS
                (SELECT
                    ...
                ),
                highways_all AS
                (SELECT
                    ...
                ),
                sidewalks_raw AS
                (SELECT
                    ...
                )
                SELECT -- begin of sidewalks select
                    ...
                UNION ALL
                SELECT -- begin of main road select
                    ...
                  FROM highways_all
                UNION ALL
                SELECT -- begin of junction polygons select
                    ...
                  FROM junctions
                UNION ALL
                SELECT -- begin of ford/mountain_pass point pseudo-line select
                    ...
                UNION ALL
                SELECT -- begin of rail/aero select
                    ...
                  FROM planet_osm_line
                  WHERE (railway IS NOT NULL OR aeroway IS NOT NULL)
                    AND way && !bbox!
              ) AS roads_features
            ), -- end of roads_all CTE
            road_areas_all AS
            (SELECT
                ...
            ),
            tc_all AS
            (SELECT
                ...
            )
            SELECT -- casing
                ...
                'casing' AS road_layer,
                ...
              FROM roads_all
              WHERE ...
            UNION ALL
            SELECT -- background
                ...
                'background' AS road_layer,
                ...
              FROM roads_all
              WHERE ...
            UNION ALL
            SELECT -- background_unpaved
                ...
                'background_unpaved' AS road_layer,
                ...
              FROM roads_all
              WHERE ...
            UNION ALL
            SELECT -- fill
                way,
                'fill' AS road_layer,
                ...
              FROM roads_all
              WHERE ...
            UNION ALL
            SELECT -- fill_unpaved
                ...
                'fill_unpaved' AS road_layer,
                ...
              FROM roads_all
              WHERE ...
            UNION ALL
            SELECT -- junction_casing
                way,
                'junction_casing' AS road_layer,
                ...
              FROM roads_all
              WHERE ...
            UNION ALL
            SELECT -- junction_fill
                way,
                'junction_fill' AS road_layer,
                ...
              FROM roads_all
              WHERE ...
            UNION ALL
            SELECT -- centerline
                way,
                'centerline' AS road_layer,
                ...
              FROM roads_all
              WHERE ...
            UNION ALL
            SELECT -- area_casing
                way,
                'area_casing' AS road_layer,
                ...
              FROM road_areas_all
              WHERE ...
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
              WHERE ...
            UNION ALL
            SELECT -- line_barriers
                way,
                'line_barriers' AS road_layer,
                ...
              FROM ...
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
              WHEN road_layer = 'waterway_bridges' THEN 0 
              WHEN road_layer = 'landuse_overlay' THEN 1
              WHEN road_layer = 'line_barriers' THEN 2
              WHEN road_layer = 'ferry_routes' THEN 3
              WHEN road_layer = 'tc_casing' THEN 4
              WHEN road_layer = 'area_casing' THEN 5
              WHEN road_layer = 'junction_casing' THEN 6
              WHEN road_layer = 'casing' THEN 7
              WHEN road_layer = 'background' THEN 8
              WHEN road_layer = 'background_unpaved' THEN 8
              WHEN road_layer = 'area_fill' THEN 9
              WHEN road_layer = 'junction_fill' THEN 10
              WHEN road_layer = 'fill' THEN 11
              WHEN road_layer = 'fill_unpaved' THEN 11
              WHEN road_layer = 'centerline' THEN 12
              WHEN road_layer = 'tc_fill' THEN 13
            END,
            layernotnull,
            z_order,
            CASE WHEN substr(feature, 1, 16) = 'highway_sidewalk' THEN 0 ELSE 1 END,
            CASE WHEN access IN ('no', 'private') THEN 0 WHEN access IN ('destination') THEN 1 ELSE 2 END,
            CASE WHEN int_surface IN ('unpaved') THEN 0 ELSE 1 END,
            osm_id
        ) AS roads_sql
