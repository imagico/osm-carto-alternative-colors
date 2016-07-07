DROP VIEW IF EXISTS planet_osm_roads;
CREATE VIEW planet_osm_roads AS
SELECT
osm_id,
tags->'admin_level' as "admin_level",
tags->'covered' as "covered",
tags->'highway' as "highway",
tags->'name' as "name",
tags->'name:de' as "name:de",
tags->'int_name' as "int_name",
tags->'name:en' as "name:en",
tags->'railway' as "railway",
tags->'ref' as "ref",
tags->'service' as "service",
tags->'surface' as "surface",
tags->'tunnel' as "tunnel",
tags->'aerialway' as "aerialway",
tags->'addr:housenumber' as "addr:housenumber",
tags->'aeroway' as "aeroway",
tags->'amenity' as "amenity",
tags->'barrier' as "barrier",
tags->'boundary' as "boundary",
tags->'building' as "building",
tags->'historic' as "historic",
tags->'landuse' as "landuse",
tags->'leisure' as "leisure",
tags->'lock' as "lock",
tags->'man_made' as "man_made",
tags->'military' as "military",
tags->'place' as "place",
tags->'power' as "power",
tags->'route' as "route",
tags->'shop' as "shop",
tags->'tourism' as "tourism",
tags->'waterway' as "waterway",
tags->'natural' as "natural",
z_order as z_order,
way as way,
tags->'tags' as "tags"
FROM planet_osm_hstore_roads;

GRANT select ON planet_osm_roads TO public;
