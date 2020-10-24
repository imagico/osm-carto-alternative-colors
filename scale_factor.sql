/* Function to determine the local scale factor of the map at a certain place, */
/* that is the size of one map unit in real world units                        */
create or replace function scale_factor (geometry)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select ST_DistanceSphere(ST_Transform(ST_Translate(geom, 0, 1), 4326), ST_Transform(geom, 4326))::numeric from (select ST_Centroid(ST_Envelope($1)) as geom) as p
$func$;
