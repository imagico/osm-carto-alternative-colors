/* ======================================================================== */
/* SQL code to disable some of the more expensive features of the style     */
/* (alternative colors light)                                               */
/*                                                                          */
/*  install with: psql -d gis -f sql/ac-light.sql                           */
/* ======================================================================== */

/* Simple dummy functions for the mapped width calculation that speed up */
/* the style while loosing variable width rendering of roads             */

/* tagged width or width estimated from lanes */
/* parameters: highway tag, width tag, lanes tag, way, scale_denominator */
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
