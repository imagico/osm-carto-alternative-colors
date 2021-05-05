/* ======================================================================== */
/*  Road layers relates SQL code, to be executed on the osm2pgsql database  */
/*                                                                          */
/*  install with: psql -d gis -f sql/roads.sql                              */
/*  depends on line-widths-generated.sql                                    */
/* ======================================================================== */


/* --------- line width function --------- */
/* these are functions for calculating drawing line    */
/* widths from ground unit widths and wrappers for the */
/* auto-generated line with functions in               */
/* line-widths-generated.sql                           */

/* split service class into service/service-minor */
/* parameters: highway tag, service tag, zoom level */
/* note this can be applied repeatedly without problems */
CREATE OR REPLACE FUNCTION carto_highway_line_width (text, text, numeric)
  returns numeric
  language sql
  immutable
AS $func$
SELECT carto_highway_line_width(
  CASE WHEN $1 = 'service' AND $2 IN ('parking_aisle', 'drive-through', 'driveway') 
    THEN 'service-minor'
    ELSE $1
  END, $3)
$func$;

/* wrapper for casing width - bridge or not */
CREATE OR REPLACE FUNCTION carto_casing_line_width (text, text, numeric)
  returns numeric
  language sql
  immutable
  returns null on null input
AS $func$
SELECT
  CASE WHEN $2 = 'no' THEN carto_casing_line_width ($1, $3)
    ELSE carto_bridge_casing_line_width ($1, $3)
  END
$func$;

/* tagged width or width estimated from lanes */
/* parameters: highway tag, width tag, lanes tag, way, scale_denominator */
CREATE OR REPLACE FUNCTION carto_highway_line_width_mapped (text, text, text, geometry, numeric)
  returns numeric
  language sql
  immutable
AS $func$
SELECT (CASE
  WHEN $2 ~ '^-?\d{1,4}(\.\d+)?$' THEN LEAST($2::NUMERIC, 150) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
  WHEN $3 IN ('1', '2', '3', '4', '5', '6') THEN
  case
    when $1 = 'motorway' then
      ($3::NUMERIC * 3.75 + 1.0) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'motorway_link' then
      ($3::NUMERIC * 3.5 + 1.0) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 IN ('trunk', 'trunk_link') then
      ($3::NUMERIC * 3.5 + 1.0) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 IN ('primary', 'primary_link') then
      ($3::NUMERIC * 3.0 + 0.5) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 IN ('secondary', 'secondary_link') then
      ($3::NUMERIC * 2.75 + 0.5) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 IN ('tertiary', 'tertiary_link') then
      ($3::NUMERIC * 2.5 + 0.5) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'residential' then
      ($3::NUMERIC * 2.25 + 0.25) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'unclassified' then
      ($3::NUMERIC * 2.25 + 0.25) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'service' then
      ($3::NUMERIC * 2.25 + 0.25) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'service-minor' then
      ($3::NUMERIC * 2.0 + 0.25) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'living_street' then
      ($3::NUMERIC * 2.25 + 0.25) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'pedestrian' then
      ($3::NUMERIC * 2.25 + 0.25) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'steps' then
      ($3::NUMERIC * 1.0) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'road' then
      ($3::NUMERIC * 2.0 + 0.25) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'bridleway' then
      ($3::NUMERIC * 1.0) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'footway' then
      ($3::NUMERIC * 0.5) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'cycleway' then
      ($3::NUMERIC * 0.75) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'path' then
      ($3::NUMERIC * 0.5) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    when $1 = 'track' then
      ($3::NUMERIC * 2.0 + 0.25) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
    else 0.0
  end
  ELSE 0.0
END)
$func$;

/* tagged width or width estimated from length */
/* parameters: aeroway tag, width tag, way, bbox, scale_denominator */
CREATE OR REPLACE FUNCTION carto_aeroway_line_width_mapped (text, text, geometry, geometry, numeric)
  returns numeric
  language sql
  immutable
AS $func$
SELECT (CASE
  WHEN $2 ~ '^-?\d{1,4}(\.\d+)?$' THEN LEAST($2::NUMERIC, 150) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
  WHEN $1 = 'runway' THEN
    /* estimate runway width from length */
    LEAST(GREATEST(ST_Length(ST_Transform($3,4326)::geography)::NUMERIC/50,12.0),75.0) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
  WHEN $1 = 'taxiway' THEN
    /* this is the minimum assumed ground unit taxiway width */
    6.0 / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
  ELSE 0.0
END)
$func$;
