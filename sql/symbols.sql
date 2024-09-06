 /* ======================================================================== */
/*  Symbols relates SQL code, to be executed on the osm2pgsql database      */
/*                                                                          */
/*  install with: psql -d gis -f sql/symbols.sql                            */
/* ======================================================================== */


/* tagged diameter_crown or estimated from height or circumference/diameter */
/* parameters: feature_type, diameter_crown, height, circumference, diameter, way, scale_denominator */
CREATE OR REPLACE FUNCTION carto_tree_diameter_mapped (text, text, text, text, text, geometry, numeric)
  returns numeric
  language sql
  immutable
AS $func$
SELECT
    -- above 17 pixel we only use odd pixel size symbols for consistent appearence
    (CASE WHEN diameter <= 17 THEN diameter ELSE diameter - (diameter % 2) + 1 END)
  FROM
    (SELECT (CASE
        -- diameter_crown
        WHEN $2 ~ '^-?\d{1,3}(\.\d+)?$' THEN LEAST($2::NUMERIC, 70) / NULLIF(scale_factor($6)*$7*0.001*0.28,0)
        -- estimate as 0.3 the height
        -- we limit height to 50m here since taller trees tend to be not that wide
        WHEN $3 ~ '^-?\d{1,3}(\.\d+)?$' THEN 0.3*LEAST($3::NUMERIC, 50) / NULLIF(scale_factor($6)*$7*0.001*0.28,0)
        -- estimate as 5 times diameter
        WHEN $4 ~ '^-?\d{1,2}(\.\d+)?$' THEN 5.0*(LEAST($4::NUMERIC, 20)/PI()) / NULLIF(scale_factor($6)*$7*0.001*0.28,0)
        WHEN $5 ~ '^-?\d{1,2}(\.\d+)?$' THEN 5.0*(LEAST($5::NUMERIC, 6)) / NULLIF(scale_factor($6)*$7*0.001*0.28,0)
        -- assume a minimum diameter of 1m for trees and 0.3m for shrubs
        ELSE (CASE WHEN $1 = 'shrub' THEN 0.3 ELSE 1.0 END) / NULLIF(scale_factor($6)*$7*0.001*0.28,0)
    END)::NUMERIC AS diameter) AS _
$func$;

/* tagged width or width estimated from height */
/* parameters: feature_type, width tag, height tag, way, scale_denominator */
CREATE OR REPLACE FUNCTION carto_treerow_line_width_mapped(text, text, text, geometry, numeric)
  returns numeric
  language sql
  immutable
AS $func$
SELECT (CASE
  WHEN $2 ~ '^-?\d{1,4}(\.\d+)?$' THEN LEAST($2::NUMERIC, 70) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
  -- estimate as 0.3 the height
  -- we limit height to 50m here since taller trees tend to be not that wide
  WHEN $3 ~ '^-?\d{1,3}(\.\d+)?$' THEN 0.3*LEAST($3::NUMERIC, 50) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
  -- assume a minimum width of 1m for tree_rows and 0.3m for hedges
  ELSE (CASE WHEN $1 = 'hedge' THEN 0.3 ELSE 1.0 END) / NULLIF(scale_factor($4)*$5*0.001*0.28,0)
END)::NUMERIC
$func$;

/* classify internal leaf type based on taxonomy */
/* for tree rows: also decode mixed into needleleaved/broadleaved based on point_index */
/* parameters:  leaf_type, species, genus, family, taxon, point_index */
CREATE OR REPLACE FUNCTION carto_leaf_type_classify (text, text, text, text, text, integer)
  returns text
  language sql
  immutable
AS $func$
SELECT
  CASE
    WHEN lower($5) IN ('arecaceae') THEN 'palm'
    WHEN lower($4) IN ('arecaceae') THEN 'palm'
    WHEN lower($3) IN ('arecaceae') THEN 'palm'
    WHEN $1 IN ('needleleaved', 'broadleaved') THEN $1
    WHEN ($6 IS NOT NULL) AND $1 IN ('mixed') THEN
      CASE
        WHEN (($6 % 2) = 0) THEN 'broadleaved'
        ELSE 'needleleaved'
      END
    ELSE NULL
  END
$func$;

/* get a tree symbol geometry from table, scaled/resized to target symbol_size */
/* symbol choice is by best match in size, leaf_type and leaf_cycle */
/* parameters:  feature_type, symbol_size, symbol_size_px, leaf_type, leaf_cycle */
CREATE OR REPLACE FUNCTION carto_tree_symbol_from_db (text, real, real, text, text)
  returns geometry
  language sql
  immutable
AS $func$
SELECT
    ST_TransScale(way, -width*0.5, -height*0.5, $2/symbol_size, $2/symbol_size) AS way
  FROM carto_symbols
  WHERE feature_type = $1
  ORDER BY
    CASE
      WHEN leaf_type IN ($4) THEN 0
      WHEN (leaf_type IS NULL) AND ($4 IS NULL) THEN 1
      WHEN (leaf_type IS NULL) THEN 2
      ELSE 3
    END,
    CASE
      WHEN leaf_cycle IN ($5) THEN 0
      WHEN (leaf_cycle IS NULL) AND ($5 IS NULL) THEN 1
      WHEN (leaf_cycle IS NULL) THEN 2
      ELSE 3
    END,
    -- slight offset to prefer smaller symbols to larger ones if size mismatch is the same
    ABS($3-0.01 - symbol_size)
  LIMIT 1
$func$;

/* convert cardinal to numerical direction */
CREATE OR REPLACE FUNCTION carto_cardinal_direction (text)
  returns numeric
  language sql
  immutable
AS $func$
SELECT
  CASE
    WHEN $1 = 'N' THEN 0.0
    WHEN $1 = 'E' THEN 90.0
    WHEN $1 = 'S' THEN 180.0
    WHEN $1 = 'W' THEN 270.0
    WHEN $1 = 'NE' THEN 45.0
    WHEN $1 = 'SE' THEN 135.0
    WHEN $1 = 'SW' THEN 225.0
    WHEN $1 = 'NW' THEN 315.0
    WHEN $1 = 'NNE' THEN 22.5
    WHEN $1 = 'ENE' THEN 67.5
    WHEN $1 = 'ESE' THEN 112.5
    WHEN $1 = 'SSE' THEN 157.5
    WHEN $1 = 'SSW' THEN 202.5
    WHEN $1 = 'WSW' THEN 247.5
    WHEN $1 = 'WNW' THEN 292.5
    WHEN $1 = 'NNW' THEN 337.5
    ELSE NULL
  END
$func$;

/* determine viewpoint azimuth and angle from direction tag */
CREATE OR REPLACE FUNCTION carto_viewpoint_direction(direction text) RETURNS NUMERIC[2] AS $$
 DECLARE
  res numeric[2] = '{0.0,0.0}';
  dirs text[];
  dirs_n numeric[];
 BEGIN
   IF direction IS NULL THEN
     return res;
   END IF;

   /* single value */
   IF (direction ~ '^-?\d{1,3}(\.\d+)?$') THEN
       res[1] = direction::NUMERIC;
       res[2] = 56.0;
       return res;
   END IF;

   /* single cardinal */
   IF (direction ~ '^[NSEW]{1,3}$') THEN
       res[1] = carto_cardinal_direction(direction);
       res[2] = 56.0;
       return res;
   END IF;

   /* value range */
   IF (direction ~ '^\d{1,3}(\.\d+)?-\d{1,3}(\.\d+)?$') THEN
       dirs = string_to_array(direction, '-');
       dirs_n[1] = dirs[1]::NUMERIC;
       dirs_n[2] = dirs[2]::NUMERIC;
       IF (dirs_n[2] < dirs_n[1]) THEN
           dirs_n[2] = dirs_n[2] + 360.0;
           res[1] = 0.5*(dirs_n[1] + dirs_n[2]);
           IF (res[1] > 360.0) THEN
               res[1] = res[1] - 360.0;
           END IF;
           res[2] = (dirs_n[2] - dirs_n[1]);
           IF (res[2] < 0.0) THEN
               res[2] = res[2] + 360.0;
           END IF;
       ELSE
           res[1] = 0.5*(dirs_n[1] + dirs_n[2]);
           res[2] = (dirs_n[2] - dirs_n[1]);
       END IF;
       return res;
   END IF;

   /* cardinal range */
   IF (direction ~ '^[NSEW]{1,3}-[NSEW]{1,3}$') THEN
       dirs = string_to_array(direction, '-');
       dirs_n[1] = carto_cardinal_direction(dirs[1]);
       dirs_n[2] = carto_cardinal_direction(dirs[2]);
       IF (dirs_n[2] < dirs_n[1]) THEN
           dirs_n[2] = dirs_n[2] + 360.0;
           res[1] = 0.5*(dirs_n[1] + dirs_n[2]);
           IF (res[1] > 360.0) THEN
               res[1] = res[1] - 360.0;
           END IF;
           res[2] = (dirs_n[2] - dirs_n[1]);
           IF (res[2] < 0.0) THEN
               res[2] = res[2] + 360.0;
           END IF;
       ELSE
           res[1] = 0.5*(dirs_n[1] + dirs_n[2]);
           res[2] = (dirs_n[2] - dirs_n[1]);
       END IF;
       return res;
   END IF;

   /* this returns {0.0,0.0} for any unrecognized syntax */
   return res;
 END;
$$ LANGUAGE 'plpgsql' IMMUTABLE PARALLEL SAFE;

/* get a viewpoint symbol geometry from table, rotated to azimuth */
/* symbol choice is by best match in angle and size, in contrast to trees it does not get scaled */
/* parameters:  feature_type, symbol_size, symbol_size_px, azimuth, angle */
CREATE OR REPLACE FUNCTION carto_viewpoint_symbol_from_db (text, real, real, real, real)
  returns geometry
  language sql
  immutable
AS $func$
SELECT
    ST_Rotate(ST_TransScale(way, -width*0.5, -height*0.5, $2/$3, $2/$3), -$4*PI()/180.0) AS way
  FROM carto_symbols
  WHERE feature_type = $1
  ORDER BY
    ABS($5+0.01 - angle),
    -- slight offset to prefer smaller symbols to larger ones if size mismatch is the same
    ABS($3-0.01 - symbol_size)
  LIMIT 1
$func$;

