/* This is generated code, do not change this file manually.                */
/*                                                                          */
/* To change these definitions, alter line-widths.yaml and run:             */
/*                                                                          */
/*   ./scripts/generate_line_widths.py -s > sql/line-widths-generated.sql   */
/*                                                                          */

/* waterway */
create or replace function carto_waterway_line_width (text, numeric)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select
  case
    when $1 IN ('river', 'canal') then
      (case
        when $2 = 8 then 0.7
        when $2 = 9 then 1.2
        when $2 = 10 then 1.5
        when $2 = 11 then 1.8
        when $2 = 12 then 2.2
        when $2 = 13 then 3.0
        when $2 = 14 then 4.5
        when $2 = 15 then 6.0
        when $2 = 16 then 8.0
        when $2 = 17 then 10.0
        when $2 = 18 then 12.0
        when $2 >= 19 then 12.0
        else 0.0
      end)
    when $1 IN ('stream', 'ditch', 'drain') then
      (case
        when $2 = 12 then 1.2
        when $2 = 13 then 1.8
        when $2 = 14 then 2.0
        when $2 = 15 then 2.5
        when $2 = 16 then 3.0
        when $2 = 17 then 3.5
        when $2 = 18 then 4.0
        when $2 >= 19 then 4.0
        else 0.0
      end)
    else 0.0
  end;
$func$;

/* highway */
create or replace function carto_highway_line_width (text, numeric)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select
  case
    when $1 IN ('river', 'canal') then
      (case
        when $2 = 8 then 0.7
        when $2 = 9 then 1.2
        when $2 = 10 then 1.5
        when $2 = 11 then 1.8
        when $2 = 12 then 2.2
        when $2 = 13 then 3.0
        when $2 = 14 then 4.5
        when $2 = 15 then 6.0
        when $2 = 16 then 8.0
        when $2 = 17 then 10.0
        when $2 = 18 then 12.0
        when $2 >= 19 then 12.0
        else 0.0
      end)
    when $1 IN ('stream', 'ditch', 'drain') then
      (case
        when $2 = 12 then 1.2
        when $2 = 13 then 1.8
        when $2 = 14 then 2.0
        when $2 = 15 then 2.5
        when $2 = 16 then 3.0
        when $2 = 17 then 3.5
        when $2 = 18 then 4.0
        when $2 >= 19 then 4.0
        else 0.0
      end)
    when $1 = 'motorway' then
      (case
        when $2 = 5 then 0.5
        when $2 = 6 then 0.6
        when $2 = 7 then 0.8
        when $2 = 8 then 1.0
        when $2 = 9 then 1.4
        when $2 = 10 then 1.9
        when $2 = 11 then 2.0
        when $2 = 12 then 3.5
        when $2 = 13 then 6.0
        when $2 = 14 then 6.0
        when $2 = 15 then 10.0
        when $2 = 16 then 10.0
        when $2 = 17 then 18.0
        when $2 = 18 then 21.0
        when $2 >= 19 then 27.0
        else 0.0
      end)
    when $1 = 'motorway_link' then
      (case
        when $2 = 12 then 1.5
        when $2 = 13 then 4.0
        when $2 = 14 then 4.0
        when $2 = 15 then 7.8
        when $2 = 16 then 7.8
        when $2 = 17 then 12.0
        when $2 = 18 then 13.0
        when $2 >= 19 then 16.0
        else 0.0
      end)
    when $1 IN ('trunk', 'trunk_link') then
      (case
        when $2 = 5 then 0.4
        when $2 = 6 then 0.5
        when $2 = 7 then 0.6
        when $2 = 8 then 1.0
        when $2 = 9 then 1.4
        when $2 = 10 then 1.9
        when $2 = 11 then 1.9
        when $2 = 12 then 3.5
        when $2 = 13 then 6.0
        when $2 = 14 then 6.0
        when $2 = 15 then 10.0
        when $2 = 16 then 10.0
        when $2 = 17 then 18.0
        when $2 = 18 then 21.0
        when $2 >= 19 then 27.0
        else 0.0
      end)
    when $1 IN ('primary', 'primary_link') then
      (case
        when $2 = 8 then 1.0
        when $2 = 9 then 1.4
        when $2 = 10 then 1.8
        when $2 = 11 then 1.8
        when $2 = 12 then 3.5
        when $2 = 13 then 5.0
        when $2 = 14 then 5.0
        when $2 = 15 then 10.0
        when $2 = 16 then 10.0
        when $2 = 17 then 18.0
        when $2 = 18 then 21.0
        when $2 >= 19 then 27.0
        else 0.0
      end)
    when $1 IN ('secondary', 'secondary_link') then
      (case
        when $2 = 9 then 1.0
        when $2 = 10 then 1.2
        when $2 = 11 then 1.3
        when $2 = 12 then 3.5
        when $2 = 13 then 5.0
        when $2 = 14 then 5.0
        when $2 = 15 then 9.0
        when $2 = 16 then 10.0
        when $2 = 17 then 18.0
        when $2 = 18 then 21.0
        when $2 >= 19 then 27.0
        else 0.0
      end)
    when $1 IN ('tertiary', 'tertiary_link') then
      (case
        when $2 = 10 then 0.7
        when $2 = 11 then 0.7
        when $2 = 12 then 2.5
        when $2 = 13 then 4.0
        when $2 = 14 then 4.0
        when $2 = 15 then 7.0
        when $2 = 16 then 8.0
        when $2 = 17 then 16.0
        when $2 = 18 then 18.0
        when $2 >= 19 then 23.0
        else 0.0
      end)
    when $1 = 'residential' then
      (case
        when $2 = 12 then 0.5
        when $2 = 13 then 2.5
        when $2 = 14 then 3.0
        when $2 = 15 then 5.0
        when $2 = 16 then 6.0
        when $2 = 17 then 12.0
        when $2 = 18 then 13.0
        when $2 >= 19 then 17.0
        else 0.0
      end)
    when $1 = 'unclassified' then
      (case
        when $2 = 12 then 0.8
        when $2 = 13 then 2.5
        when $2 = 14 then 3.0
        when $2 = 15 then 5.0
        when $2 = 16 then 6.0
        when $2 = 17 then 12.0
        when $2 = 18 then 13.0
        when $2 >= 19 then 17.0
        else 0.0
      end)
    when $1 = 'service' then
      (case
        when $2 = 13 then 0.8
        when $2 = 14 then 2.0
        when $2 = 15 then 2.0
        when $2 = 16 then 3.5
        when $2 = 17 then 7.0
        when $2 = 18 then 8.5
        when $2 >= 19 then 11.0
        else 0.0
      end)
    when $1 = 'service-minor' then
      (case
        when $2 = 16 then 2.0
        when $2 = 17 then 3.5
        when $2 = 18 then 4.75
        when $2 >= 19 then 5.5
        else 0.0
      end)
    when $1 = 'living_street' then
      (case
        when $2 = 13 then 2.0
        when $2 = 14 then 3.0
        when $2 = 15 then 5.0
        when $2 = 16 then 6.0
        when $2 = 17 then 12.0
        when $2 = 18 then 13.0
        when $2 >= 19 then 17.0
        else 0.0
      end)
    when $1 = 'pedestrian' then
      (case
        when $2 = 13 then 2.0
        when $2 = 14 then 3.0
        when $2 = 15 then 5.0
        when $2 = 16 then 6.0
        when $2 = 17 then 12.0
        when $2 = 18 then 13.0
        when $2 >= 19 then 17.0
        else 0.0
      end)
    when $1 = 'steps' then
      (case
        when $2 = 13 then 0.7
        when $2 = 14 then 0.7
        when $2 = 15 then 3.0
        when $2 = 16 then 3.0
        when $2 = 17 then 3.0
        when $2 = 18 then 3.0
        when $2 >= 19 then 3.0
        else 0.0
      end)
    when $1 = 'road' then
      (case
        when $2 = 14 then 2.0
        when $2 = 15 then 2.0
        when $2 = 16 then 3.5
        when $2 = 17 then 7.0
        when $2 = 18 then 8.5
        when $2 >= 19 then 11.0
        else 0.0
      end)
    when $1 = 'bridleway' then
      (case
        when $2 = 13 then 0.2
        when $2 = 14 then 0.35
        when $2 = 15 then 1.2
        when $2 = 16 then 1.2
        when $2 = 17 then 1.2
        when $2 = 18 then 1.2
        when $2 >= 19 then 1.2
        else 0.0
      end)
    when $1 = 'footway' then
      (case
        when $2 = 13 then 0.2
        when $2 = 14 then 0.35
        when $2 = 15 then 0.85
        when $2 = 16 then 1.0
        when $2 = 17 then 1.1
        when $2 = 18 then 1.3
        when $2 >= 19 then 1.5
        else 0.0
      end)
    when $1 = 'cycleway' then
      (case
        when $2 = 13 then 0.2
        when $2 = 14 then 0.35
        when $2 = 15 then 0.85
        when $2 = 16 then 1.0
        when $2 = 17 then 1.1
        when $2 = 18 then 1.3
        when $2 >= 19 then 1.5
        else 0.0
      end)
    when $1 = 'path' then
      (case
        when $2 = 13 then 0.2
        when $2 = 14 then 0.35
        when $2 = 15 then 0.8
        when $2 = 16 then 0.9
        when $2 = 17 then 1.0
        when $2 = 18 then 1.1
        when $2 >= 19 then 1.25
        else 0.0
      end)
    when $1 = 'track' then
      (case
        when $2 = 13 then 0.45
        when $2 = 14 then 0.85
        when $2 = 15 then 1.5
        when $2 = 16 then 1.5
        when $2 = 17 then 1.5
        when $2 = 18 then 1.5
        when $2 >= 19 then 1.5
        else 0.0
      end)
    when $1 = 'rail' then
      (case
        when $2 = 7 then 0.5
        when $2 = 8 then 0.8
        when $2 = 9 then 0.8
        when $2 = 10 then 0.8
        when $2 = 11 then 0.8
        when $2 = 12 then 0.9
        when $2 = 13 then 3.0
        when $2 = 14 then 3.0
        when $2 = 15 then 3.0
        when $2 = 16 then 3.0
        when $2 = 17 then 3.0
        when $2 = 18 then 4.0
        when $2 >= 19 then 4.0
        else 0.0
      end)
    when $1 = 'light_rail' then
      (case
        when $2 = 8 then 1.0
        when $2 = 9 then 1.0
        when $2 = 10 then 1.0
        when $2 = 11 then 1.0
        when $2 = 12 then 1.0
        when $2 = 13 then 2.0
        when $2 = 14 then 2.0
        when $2 = 15 then 2.0
        when $2 = 16 then 2.0
        when $2 = 17 then 2.0
        when $2 = 18 then 2.0
        when $2 >= 19 then 2.0
        else 0.0
      end)
    when $1 = 'tram' then
      (case
        when $2 = 12 then 0.75
        when $2 = 13 then 1.0
        when $2 = 14 then 1.0
        when $2 = 15 then 1.5
        when $2 = 16 then 1.5
        when $2 = 17 then 2.0
        when $2 = 18 then 2.0
        when $2 >= 19 then 2.0
        else 0.0
      end)
    when $1 = 'dyke' then
      (case
        when $2 = 15 then 1.5
        when $2 = 16 then 1.5
        when $2 = 17 then 1.5
        when $2 = 18 then 1.5
        when $2 >= 19 then 1.5
        else 0.0
      end)
    when $1 = 'runway' then
      (case
        when $2 = 11 then 2.0
        when $2 = 12 then 4.0
        when $2 = 13 then 6.0
        when $2 = 14 then 12.0
        when $2 = 15 then 18.0
        when $2 = 16 then 24.0
        when $2 = 17 then 24.0
        when $2 = 18 then 24.0
        when $2 >= 19 then 24.0
        else 0.0
      end)
    when $1 = 'taxiway' then
      (case
        when $2 = 11 then 1.0
        when $2 = 12 then 1.5
        when $2 = 13 then 2.0
        when $2 = 14 then 4.0
        when $2 = 15 then 6.0
        when $2 = 16 then 8.0
        when $2 = 17 then 8.0
        when $2 = 18 then 8.0
        when $2 >= 19 then 8.0
        else 0.0
      end)
    when $1 = 'raceway' then
      (case
        when $2 = 12 then 1.2
        when $2 = 13 then 2.0
        when $2 = 14 then 3.0
        when $2 = 15 then 4.5
        when $2 = 16 then 6.0
        when $2 = 17 then 7.5
        when $2 = 18 then 9.5
        when $2 >= 19 then 12.0
        else 0.0
      end)
    when $1 = 'platform' then
      (case
        when $2 = 16 then 4.0
        when $2 = 17 then 4.0
        when $2 = 18 then 4.0
        when $2 >= 19 then 4.0
        else 0.0
      end)
    else 0.0
  end;
$func$;

/* casing */
create or replace function carto_casing_line_width (text, numeric)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select
  case
    when $1 IN ('motorway', 'trunk', 'trunk_link', 'primary', 'primary_link') then
      (case
        when $2 = 12 then 0.5
        when $2 = 13 then 0.5
        when $2 = 14 then 0.6
        when $2 = 15 then 0.7
        when $2 = 16 then 0.7
        when $2 = 17 then 1.0
        when $2 = 18 then 1.0
        when $2 >= 19 then 1.0
        else 0.0
      end)
    when $1 IN ('secondary', 'secondary_link') then
      (case
        when $2 = 12 then 0.3
        when $2 = 13 then 0.35
        when $2 = 14 then 0.35
        when $2 = 15 then 0.7
        when $2 = 16 then 0.7
        when $2 = 17 then 1.0
        when $2 = 18 then 1.0
        when $2 >= 19 then 1.0
        else 0.0
      end)
    when $1 IN ('motorway_link', 'tertiary', 'tertiary_link', 'unclassified', 'residential', 'pedestrian', 'living_street', 'service', 'road', 'sidewalk', 'bridleway', 'footway', 'cycleway', 'path', 'track', 'steps', 'raceway') then
      (case
        when $2 = 12 then 0.1
        when $2 = 13 then 0.5
        when $2 = 14 then 0.55
        when $2 = 15 then 0.6
        when $2 = 16 then 0.6
        when $2 = 17 then 0.8
        when $2 = 18 then 0.8
        when $2 >= 19 then 0.8
        else 0.0
      end)
    else 0.0
  end;
$func$;

/* bridge_casing */
create or replace function carto_bridge_casing_line_width (text, numeric)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select
  case
    when $1 IN ('motorway', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary', 'secondary_link') then
      (case
        when $2 = 12 then 0.5
        when $2 = 13 then 0.5
        when $2 = 14 then 0.6
        when $2 = 15 then 0.75
        when $2 = 16 then 0.75
        when $2 = 17 then 1.0
        when $2 = 18 then 1.0
        when $2 >= 19 then 1.0
        else 0.0
      end)
    when $1 IN ('motorway_link', 'tertiary', 'tertiary_link', 'unclassified', 'residential', 'pedestrian', 'living_street', 'service', 'road', 'runway', 'taxiway', 'sidewalk', 'bridleway', 'footway', 'cycleway', 'path', 'track', 'steps', 'raceway') then
      (case
        when $2 = 12 then 0.1
        when $2 = 13 then 0.5
        when $2 = 14 then 0.5
        when $2 = 15 then 0.75
        when $2 = 16 then 0.75
        when $2 = 17 then 0.8
        when $2 = 18 then 0.8
        when $2 >= 19 then 0.8
        else 0.0
      end)
    else 0.0
  end;
$func$;

/* barrier */
create or replace function carto_barrier_line_width (text, numeric)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select
  case
    when $1 = 'chain' then
      (case
        when $2 = 16 then 0.4
        when $2 = 17 then 0.4
        when $2 = 18 then 0.4
        when $2 >= 19 then 0.4
        else 0.0
      end)
    when $1 = 'city_wall' then
      (case
        when $2 = 15 then 1.0
        when $2 = 16 then 1.5
        when $2 = 17 then 2.0
        when $2 = 18 then 3.0
        when $2 >= 19 then 4.0
        else 0.0
      end)
    when $1 = 'citywalls' then
      (case
        when $2 = 15 then 1.5
        when $2 = 16 then 1.5
        when $2 = 17 then 3.0
        when $2 = 18 then 3.0
        when $2 >= 19 then 3.0
        else 0.0
      end)
    when $1 = 'ditch' then
      (case
        when $2 = 16 then 0.4
        when $2 = 17 then 0.4
        when $2 = 18 then 0.4
        when $2 >= 19 then 0.4
        else 0.0
      end)
    when $1 = 'fence' then
      (case
        when $2 = 16 then 0.4
        when $2 = 17 then 0.4
        when $2 = 18 then 0.4
        when $2 >= 19 then 0.4
        else 0.0
      end)
    when $1 = 'guard_rail' then
      (case
        when $2 = 16 then 0.4
        when $2 = 17 then 0.4
        when $2 = 18 then 0.4
        when $2 >= 19 then 0.4
        else 0.0
      end)
    when $1 = 'handrail' then
      (case
        when $2 = 16 then 0.4
        when $2 = 17 then 0.4
        when $2 = 18 then 0.4
        when $2 >= 19 then 0.4
        else 0.0
      end)
    when $1 = 'hedge' then
      (case
        when $2 = 16 then 1.5
        when $2 = 17 then 2.0
        when $2 = 18 then 3.0
        when $2 >= 19 then 4.0
        else 0.0
      end)
    when $1 = 'retaining_wall' then
      (case
        when $2 = 16 then 0.4
        when $2 = 17 then 0.4
        when $2 = 18 then 0.4
        when $2 >= 19 then 0.4
        else 0.0
      end)
    when $1 = 'wall' then
      (case
        when $2 = 16 then 0.4
        when $2 = 17 then 0.4
        when $2 = 18 then 0.4
        when $2 >= 19 then 0.4
        else 0.0
      end)
    else 0.0
  end;
$func$;
