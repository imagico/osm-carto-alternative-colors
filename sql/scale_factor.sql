/* Function to determine the local scale factor of the map at a certain place, */
/* that is the size of one map unit in real world units                        */
create or replace function scale_factor (geometry)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select ST_DistanceSphere(ST_Transform(ST_Translate(geom, 0, 1), 4326), ST_Transform(geom, 4326))::numeric from (select ST_Centroid($1) as geom) as p
$func$;

/* split service class into service/service-minor */
/* parameters: highway tag, service tag, zoom level */
create or replace function carto_highway_line_width (text, text, numeric)
  returns numeric
  language sql
  immutable
as $func$
select carto_highway_line_width(
  CASE WHEN $1 = 'service' AND $2 IN ('parking_aisle', 'drive-through', 'driveway') 
    THEN 'service-minor'
    ELSE $1
  END, $3)
$func$;

/* wrapper for casing width - bridge or not */
create or replace function carto_casing_line_width (text, text, numeric)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select 
  CASE WHEN $2 = 'no' THEN carto_casing_line_width ($1, $3)
    ELSE carto_bridge_casing_line_width ($1, $3)
  END
$func$;

/* tagged width or width estimated from lanes */
/* parameters: highway tag, width tag, lanes tag, way, scale_denominator */
create or replace function carto_highway_line_width_mapped (text, text, text, geometry, numeric)
  returns numeric
  language sql
  immutable
as $func$
select (CASE
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
create or replace function carto_aeroway_line_width_mapped (text, text, geometry, geometry, numeric)
  returns numeric
  language sql
  immutable
as $func$
select (CASE
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

/* These are simple dummy functions for the mapped width calculation that speed up the style */
/* Uncomment these and (re)run the sql file to enable */

create or replace function carto_highway_line_width_mapped (text, text, text, geometry, numeric)
  returns numeric
  language sql
  immutable
as $func$
select 0.0
$func$;

/* tagged width or width estimated from length */
/* parameters: aeroway tag, width tag, way, bbox, scale_denominator */

create or replace function carto_aeroway_line_width_mapped (text, text, geometry, geometry, numeric)
  returns numeric
  language sql
  immutable
as $func$
select 0.0
$func$;

