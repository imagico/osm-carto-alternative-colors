/* Additional database functions for openstreetmap-carto */

/* Access functions below adapted from https://github.com/imagico/osm-carto-alternative-colors/tree/591c861112b4e5d44badd108f4cd1409146bca0b/sql/roads.sql */

/* Simplified 'yes', 'destination', 'no', 'unknown', NULL scale for access restriction 
  'no' is returned if the rendering for highway category does not support 'restricted'.
  NULL is functionally equivalent to 'yes', but indicates the absence of a restriction 
  rather than a positive access = yes. 'unknown' corresponds to an uninterpretable 
  access restriction e.g. access=unknown or motorcar=occasionally  */
CREATE OR REPLACE FUNCTION carto_int_access(accesstag text, allow_restricted boolean, fallback text)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
		WHEN accesstag IN ('yes', 'designated', 'permissive') THEN 'yes'
		WHEN accesstag IN ('destination',  'delivery', 'customers') THEN
			CASE WHEN allow_restricted THEN 'restricted' ELSE 'yes' END
		WHEN accesstag IN ('no', 'permit', 'private', 'agricultural', 'forestry', 'agricultural;forestry') THEN 'no'
		WHEN accesstag IS NULL THEN NULL
		ELSE
			CASE
				WHEN fallback IN ('yes', 'designated', 'permissive') THEN 'unknown_yes'
				WHEN fallback IN ('destination',  'delivery', 'customers') THEN
					CASE WHEN allow_restricted THEN 'unknown_restricted' ELSE 'unknown_yes' END
				WHEN fallback IN ('no', 'permit', 'private', 'agricultural', 'forestry', 'agricultural;forestry') THEN 'unknown_no'
				WHEN fallback IS NULL THEN 'unknown_yes'
				ELSE 'unknown'
			END
	END
$$;

/* Try to promote path to cycleway (if bicycle allowed), then bridleway (if horse)
   This duplicates existing behaviour where designated access is required */
CREATE OR REPLACE FUNCTION carto_path_type(bicycle text, horse text)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
		WHEN bicycle IN ('designated') THEN 'cycleway'
		WHEN horse IN ('designated') THEN 'bridleway'
		ELSE 'path'
	END
$$;

/* Return int_access value which will be used to determine access marking */
CREATE OR REPLACE FUNCTION carto_highway_int_access(highway text, "access" text, foot text, bicycle text, horse text, motorcar text, motor_vehicle text, vehicle text)
  RETURNS text
  LANGUAGE SQL
  IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
		WHEN highway IN ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary',
		                  'secondary_link', 'tertiary', 'tertiary_link', 'residential', 'unclassified', 'living_street', 'service', 'road') THEN
			carto_int_access(
				COALESCE(
					NULLIF(motorcar, 'unknown'),
					NULLIF(motor_vehicle, 'unknown'),
					NULLIF(vehicle, 'unknown'),
					"access"
				),
				TRUE,
				COALESCE(
					NULLIF(carto_int_access(motorcar, FALSE, 'unknown'), 'unknown'),
					NULLIF(carto_int_access(motor_vehicle, FALSE, 'unknown'), 'unknown'),
					NULLIF(carto_int_access(vehicle, FALSE, 'unknown'), 'unknown'),
					"access"
				)
			)
		WHEN highway = 'path' THEN
			CASE carto_path_type(bicycle, horse)
				WHEN 'cycleway' THEN COALESCE(NULLIF(carto_int_access(bicycle, FALSE, 'unknown'), 'unknown'), carto_int_access("access", FALSE, NULL))
				WHEN 'bridleway' THEN COALESCE(NULLIF(carto_int_access(horse, FALSE, 'unknown'), 'unknown'), carto_int_access("access", FALSE, NULL))
				ELSE COALESCE(NULLIF(carto_int_access(foot, FALSE, 'unknown'), 'unknown'), carto_int_access("access", FALSE, NULL))
			END
		WHEN highway IN ('pedestrian', 'footway', 'steps') THEN COALESCE(NULLIF(carto_int_access(foot, FALSE, 'unknown'), 'unknown'), carto_int_access("access", FALSE, NULL))
		WHEN highway = 'cycleway' THEN COALESCE(NULLIF(carto_int_access(bicycle, FALSE, 'unknown'), 'unknown'), carto_int_access("access", FALSE, NULL))
		WHEN highway = 'bridleway' THEN COALESCE(NULLIF(carto_int_access(horse, FALSE, 'unknown'), 'unknown'), carto_int_access("access", FALSE, NULL))
		ELSE carto_int_access("access", TRUE, NULL)
	END
$$;
