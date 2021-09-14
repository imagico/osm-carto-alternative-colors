/* ======================================================================== */
/*  Road layers relates SQL code, to be executed on the osm2pgsql database  */
/*                                                                          */
/*  install with: psql -d gis -f sql/roads.sql                              */
/*  depends on line-widths-generated.sql                                    */
/* ======================================================================== */


/* classifying highway=path into foot/bicycle/horse */
/* based on access tags foot/bicycle/horse */
/* parameters: foot, bicycle, horse */
/* returns: 'foot', 'bicycle' or, 'horse'' */
CREATE OR REPLACE FUNCTION carto_path_type (text, text, text)
  returns text
  language sql
  immutable
AS $func$
SELECT
  CASE
    /* path is interpreted to default to footway with no access tags */
    /* so for consistency foot=designated will also mean footway even with bicycle=designated as well */
    WHEN ($1 = 'designated') THEN
      'foot'::text
    WHEN ($2 = 'designated') THEN
      'bicycle'::text
    WHEN ($3 = 'designated') THEN
      'horse'::text
    ELSE
      'foot'::text
  END
$func$;

/* aggregate access contraints for a road's primary mode of transport */
/* parameters: highway, access, vehicle, motor_vehicle, motorcar, bicycle, horse, foot, bus, psv */
/* returns: 'no', 'light' or '' (for no restructions on primary mode) */
CREATE OR REPLACE FUNCTION carto_road_access_primary_mode (text, text, text, text, text, text, text, text, text, text)
  returns text
  language sql
  immutable
AS $func$
SELECT
  CASE
    /* These are roads where automobile transport is the primary way of transport */
    WHEN $1 IN ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary',
                 'secondary_link', 'tertiary', 'tertiary_link', 'residential', 'unclassified', 'service',
                 'road') THEN
      CASE
          (CASE
            WHEN ($5 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $5
            WHEN ($4 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $4
            WHEN ($3 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $3
            ELSE $2
          END)
        WHEN 'destination' THEN 'light'::text
        WHEN 'customers' THEN 'light'::text
        WHEN 'delivery' THEN 'light'::text
        WHEN 'no' THEN 'no'::text
        WHEN 'private' THEN 'no'::text
        ELSE ''
      END
    /* pedestrian/living_street: assume foot as primary mode */
    WHEN $1 IN ('pedestrian', 'living_street') THEN
      CASE
          (CASE
            WHEN ($8 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $8
            ELSE $2
          END)
        WHEN 'destination' THEN 'light'::text
        WHEN 'customers' THEN 'light'::text
        WHEN 'delivery' THEN 'light'::text
        WHEN 'no' THEN 'no'::text
        WHEN 'private' THEN 'no'::text
        ELSE ''
      END
    /* busway/bus_guideway has bus as primary mode of transport */
    WHEN $1 IN ('busway', 'bus_guideway') THEN
      CASE
          (CASE
            WHEN ($9 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $9
            WHEN ($10 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $10
            WHEN ($5 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $5
            WHEN ($4 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $4
            WHEN ($3 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $3
            ELSE $2
          END)
        WHEN 'destination' THEN 'light'::text
        WHEN 'customers' THEN 'light'::text
        WHEN 'delivery' THEN 'light'::text
        WHEN 'no' THEN 'no'::text
        WHEN 'private' THEN 'no'::text
        ELSE ''
      END
    /* track is treated as automobile transport here but with 'agricultural' as additional permissive value */
    WHEN $1 IN ('track') THEN
      CASE
          (CASE
            WHEN ($5 IN ('yes', 'designated', 'permissive', 'agricultural', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $5
            WHEN ($4 IN ('yes', 'designated', 'permissive', 'agricultural', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $4
            WHEN ($3 IN ('yes', 'designated', 'permissive', 'agricultural', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $3
            ELSE $2
          END)
        WHEN 'destination' THEN 'light'::text
        WHEN 'customers' THEN 'light'::text
        WHEN 'delivery' THEN 'light'::text
        WHEN 'no' THEN 'no'::text
        WHEN 'private' THEN 'no'::text
        ELSE ''
      END
    WHEN $1 IN ('cycleway') THEN
      CASE
          (CASE
            WHEN ($6 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $6
            ELSE $2
          END)
        WHEN 'destination' THEN 'light'::text
        WHEN 'customers' THEN 'light'::text
        WHEN 'delivery' THEN 'light'::text
        WHEN 'no' THEN 'no'::text
        WHEN 'private' THEN 'no'::text
        ELSE ''
      END
    WHEN $1 IN ('bridleway') THEN
      CASE
          (CASE
            WHEN ($7 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $7
            ELSE $2
          END)
        WHEN 'destination' THEN 'light'::text
        WHEN 'customers' THEN 'light'::text
        WHEN 'delivery' THEN 'light'::text
        WHEN 'no' THEN 'no'::text
        WHEN 'private' THEN 'no'::text
        ELSE ''
      END
    /* we assume foot to be the primary mode for path, hence highway=path + bicycle=designated + foot=no will look weird - but that is nonsense tagging anyway */
    WHEN $1 IN ('footway', 'path') THEN
      CASE
          (CASE
            WHEN ($8 IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery')) THEN $8
            ELSE $2
          END)
        WHEN 'destination' THEN 'light'::text
        WHEN 'customers' THEN 'light'::text
        WHEN 'delivery' THEN 'light'::text
        WHEN 'no' THEN 'no'::text
        WHEN 'private' THEN 'no'::text
        ELSE ''
      END
    ELSE /* for anything else just use 'access' */
      CASE
        WHEN $2 IN ('destination', 'customers', 'delivery') THEN 'light'::text
        WHEN $2 IN ('no', 'private') THEN 'no'::text
        ELSE ''
      END
  END
$func$;


/* access tag interpretation for roads */
/* modifies the primary mode access with potential secondary modes */
/* parameters: highway, access, vehicle, motor_vehicle, motorcar, bicycle, horse, foot, bus, psv */
/* returns: 'no', 'bus', 'bicycle', 'foot', 'horse' */
/*          'light', 'bus+light', 'bicycle+light', 'foot+light' or 'horse+light' */
/*          or NULL (for no restructions) */
CREATE OR REPLACE FUNCTION carto_road_access (text, text, text, text, text, text, text, text, text, text)
  returns text
  language sql
  immutable
AS $func$
SELECT
  CASE carto_road_access_primary_mode ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)
    WHEN '' THEN /* no primary mode access restrictions */
      CASE
        WHEN $1 IN  ('pedestrian') THEN
          CASE
            WHEN $9 IN ('yes', 'designated') THEN
              'bus'::text
            WHEN $10 IN ('yes', 'designated') THEN
              'bus'::text
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse'::text
            WHEN $5 IN ('yes', 'designated', 'permissive') THEN
              'vehicle'::text
            WHEN $4 IN ('yes', 'designated', 'permissive') THEN
              'vehicle'::text
            WHEN $3 IN ('yes', 'designated', 'permissive') THEN
              'vehicle'::text
            ELSE NULL /* That is for example also highway=pedestrian + foot=yes */
          END
        WHEN $1 IN  ('living_street') THEN
          CASE
            WHEN $9 IN ('yes', 'designated') THEN
              'bus'::text
            WHEN $10 IN ('yes', 'designated') THEN
              'bus'::text
            ELSE NULL /* bicycle, horse and foot are assumed to be implicitly allowed */
          END
        WHEN $1 IN  ('busway', 'bus_guideway') THEN
          CASE
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle'::text
            WHEN $8 IN ('yes', 'designated', 'permissive') THEN
              'foot'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse'::text
            ELSE NULL /* That is for example also highway=busway + bus=yes */
          END
      END
    WHEN 'no' THEN
      CASE
        WHEN $1 IN  ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary',
                      'secondary_link', 'tertiary', 'tertiary_link', 'residential', 'unclassified', 'service',
                      'road') THEN
          CASE
            WHEN $9 IN ('yes', 'designated') THEN
              'bus'::text
            WHEN $10 IN ('yes', 'designated') THEN
              'bus'::text
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle'::text
            WHEN $8 IN ('yes', 'designated', 'permissive') THEN
              'foot'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse'::text
            ELSE
              'no'::text
          END
        WHEN $1 IN  ('pedestrian', 'living_street') THEN
          CASE
            WHEN $9 IN ('yes', 'designated') THEN
              'bus'::text
            WHEN $10 IN ('yes', 'designated') THEN
              'bus'::text
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse'::text
            WHEN $5 IN ('yes', 'designated', 'permissive') THEN
              'vehicle'::text
            WHEN $4 IN ('yes', 'designated', 'permissive') THEN
              'vehicle'::text
            WHEN $3 IN ('yes', 'designated', 'permissive') THEN
              'vehicle'::text
            ELSE
              'no'::text
          END
        WHEN $1 IN  ('busway', 'bus_guideway') THEN
          CASE
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle'::text
            WHEN $8 IN ('yes', 'designated', 'permissive') THEN
              'foot'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse'::text
            WHEN $9 IN ('yes', 'designated') THEN /* bus=yes cancels out access=no here */
              NULL
            WHEN $10 IN ('yes', 'designated') THEN /* psv=yes cancels out access=no here */
              NULL
            ELSE
              'no'::text
          END
        /* tracks with no access get special indication when open for bicycles, foot or horse */
        WHEN $1 IN  ('track') THEN
          CASE
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle'::text
            WHEN $8 IN ('yes', 'designated', 'permissive') THEN
              'foot'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse'::text
            ELSE
              'no'::text
          END
        ELSE 'no'::text
      END
    WHEN 'light' THEN
      CASE
        WHEN $1 IN  ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary',
                      'secondary_link', 'tertiary', 'tertiary_link', 'residential', 'unclassified', 'service',
                      'road') THEN
          CASE
            WHEN $9 IN ('yes', 'designated') THEN
              'bus+light'::text
            WHEN $10 IN ('yes', 'designated') THEN
              'bus+light'::text
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle+light'::text
            WHEN $8 IN ('yes', 'designated', 'permissive') THEN
              'foot+light'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse+light'::text
            ELSE
              'light'::text
          END
        WHEN $1 IN  ('pedestrian', 'living_street') THEN
          CASE
            WHEN $9 IN ('yes', 'designated') THEN
              'bus+light'::text
            WHEN $10 IN ('yes', 'designated') THEN
              'bus+light'::text
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle+light'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse+light'::text
            WHEN $5 IN ('yes', 'designated', 'permissive') THEN
              'vehicle+light'::text
            WHEN $4 IN ('yes', 'designated', 'permissive') THEN
              'vehicle+light'::text
            WHEN $3 IN ('yes', 'designated', 'permissive') THEN
              'vehicle+light'::text
            ELSE
              'light'::text
          END
        WHEN $1 IN  ('busway', 'bus_guideway') THEN
          CASE
            WHEN $6 IN ('yes', 'designated', 'permissive') THEN
              'bicycle+light'::text
            WHEN $8 IN ('yes', 'designated', 'permissive') THEN
              'foot+light'::text
            WHEN $7 IN ('yes', 'designated', 'permissive') THEN
              'horse+light'::text
            ELSE
              'light'::text
          END
        ELSE 'light'::text
      END
    ELSE NULL
  END
$func$;

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
