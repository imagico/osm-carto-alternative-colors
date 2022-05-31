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

/* get a symbol geometry from table, scaled/resized to target symbol_size */
/* symbol choice is by best match in size, leaf_type and leaf_cycle */
/* parameters:  feature_type, symbol_size, symbol_size_px, leaf_type, leaf_cycle */
CREATE OR REPLACE FUNCTION carto_symbol_from_db (text, real, real, text, text)
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
