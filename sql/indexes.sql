-- These are indexes for rendering performance with OpenStreetMap Carto.
-- This file is generated with scripts/indexes.py
CREATE INDEX planet_osm_line_ferry ON planet_osm_line USING GIST (way) WHERE route = 'ferry';
CREATE INDEX planet_osm_line_name ON planet_osm_line USING GIST (way) WHERE name IS NOT NULL;
CREATE INDEX planet_osm_line_river ON planet_osm_line USING GIST (way) WHERE waterway = 'river';
CREATE INDEX planet_osm_line_tree_rows ON planet_osm_line USING GIST (way) WHERE ("natural" = 'tree_row' OR barrier = 'hedge');
CREATE INDEX planet_osm_line_water_barrier ON planet_osm_line USING GIST (way) WHERE waterway IN ('dam', 'weir', 'lock_gate');
CREATE INDEX planet_osm_point_barrier_entrance ON planet_osm_point USING GIST (way) WHERE barrier IN ('entrance');
CREATE INDEX planet_osm_point_place ON planet_osm_point USING GIST (way) WHERE place IS NOT NULL AND name IS NOT NULL;
CREATE INDEX planet_osm_point_trees ON planet_osm_point USING GIST (way) WHERE ("natural" IN ('tree', 'shrub'));
CREATE INDEX planet_osm_point_water_barrier ON planet_osm_point USING GIST (way) WHERE waterway IN ('dam', 'weir', 'lock_gate', 'waterfall');
CREATE INDEX planet_osm_polygon_military ON planet_osm_polygon USING GIST (way) WHERE landuse = 'military';
CREATE INDEX planet_osm_polygon_name ON planet_osm_polygon USING GIST (way) WHERE name IS NOT NULL;
CREATE INDEX planet_osm_polygon_nobuilding ON planet_osm_polygon USING GIST (way) WHERE building IS NULL;
CREATE INDEX planet_osm_polygon_water ON planet_osm_polygon USING GIST (way) WHERE waterway IN ('dock', 'riverbank', 'canal')     OR landuse IN ('reservoir', 'basin')     OR "natural" IN ('water', 'glacier');
CREATE INDEX planet_osm_polygon_water_barrier ON planet_osm_polygon USING GIST (way) WHERE waterway IN ('dam', 'weir', 'lock_gate');
CREATE INDEX planet_osm_polygon_way_area_z6 ON planet_osm_polygon USING GIST (way) WHERE way_area > 59750;
CREATE INDEX planet_osm_roads_admin ON planet_osm_roads USING GIST (way) WHERE boundary = 'administrative';
CREATE INDEX planet_osm_roads_admin_low ON planet_osm_roads USING GIST (way) WHERE boundary = 'administrative' AND admin_level IN ('0', '1', '2', '3', '4');
CREATE INDEX planet_osm_roads_roads_ref ON planet_osm_roads USING GIST (way) WHERE highway IS NOT NULL AND ref IS NOT NULL;
