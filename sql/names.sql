/*--------------------------------------------------------------------------
  names.sql

  SQL functions for generating labeling strings and language/font
  information from name tags with the help of preprocessed language regions
  polygons and default_language tagging.

  Install with: psql -d gis -f sql/names.sql

  Copyright 2022-2023 by Christoph Hormann <chris_hormann@gmx.de>
 ---------------------------------------------------------------------------
  This file is part of the OSM-Carto alternative colors map style.

  OSM-Carto alternative colors is an open design and free software project
  You can use, modify and/or redistribute it under the terms of the
  following licenses:

  Design components of the project are subject to the Creative Commons
  Attribution ShareAlike 4.0 (CC BY-SA 4.0) License.

  Software components of the project are subject to the GNU Affero General
  Public License published by the Free Software Foundation, either
  version 3 of the License, or (at your option) any later version.

  OSM-Carto alternative colors is distributed in the hope that it will be
  useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
  General Public License and the Creative Commons Attribution ShareAlike
  4.0 (CC BY-SA 4.0) License for more details.

  You should have received a copy of the Creative Commons Attribution
  ShareAlike 4.0 (CC BY-SA 4.0) License along with OSM-Carto alternative
  colors. If not, see
  <https://creativecommons.org/licenses/by-sa/4.0/legalcode>.

  You should have also received a copy of the GNU Affero General Public
  License. If not, see <https://www.gnu.org/licenses/>.
 -------------------------------------------------------------------------*/

/* determine the font set to use from the language code */
CREATE OR REPLACE FUNCTION carto_font_for_language(lang text)
  RETURNS text
  LANGUAGE SQL
  IMMUTABLE PARALLEL SAFE
AS $func$
SELECT (CASE
  WHEN substr($1, 1, 7) = 'zh-Hant' THEN 'tc'
  WHEN substr($1, 1, 2) = 'zh' THEN 'sc'
  WHEN substr($1, 1, 2) = 'ja' THEN 'jp'
  WHEN substr($1, 1, 2) = 'ko' THEN 'kr'
  WHEN substr($1, 1, 2) = 'ur' THEN 'ur'
  WHEN substr($1, 1, 2) = 'bg' THEN 'bg'
  ELSE NULL
END)
$func$;

/* query the language_regions polygon set to determine the default language for a certain geometry */
CREATE OR REPLACE FUNCTION carto_default_language(geom geometry)
  RETURNS text
  LANGUAGE SQL
  IMMUTABLE PARALLEL SAFE
AS $func$
    SELECT lang FROM language_regions WHERE ST_Intersects(ST_PointOnSurface($1), way) ORDER BY level DESC LIMIT 1
$func$;

/*
Detect script used in a string

This is a fairly rough and non-robust approach by selecting the first regex matched to be the script
And the unicode ranges are simplified, often missing exotic characters from additional unicode blocks
and including non-assigned code points

For detecting and splitting compound names from different scripts this will be fine.
It will not work well for other purposes though.

Incomplete: missing many, in particular Brahmic and Southeast Asian and some African scripts
*/
CREATE OR REPLACE FUNCTION carto_detect_script(word text) RETURNS INTEGER AS $$
 BEGIN
  CASE
    WHEN word ~ '[\u0041-\u005a\u0061-\u007a\u00c0-\u00d6\u00d8-\u00f6\u00f8-\u024f]' THEN
      return 1; -- latin
    WHEN word ~ '[\u0370-\u03ff\u1f00-\u1fff]' THEN
      return 2; -- greek
    WHEN word ~ '[\u0400–\u04ff]' THEN
      return 3; -- cyrillic
    WHEN word ~ '[\u0530–\u058f]' THEN
      return 4; -- armenian
    WHEN word ~ '[\u0590–\u05f4]' THEN
      return 5; -- hebrew
    WHEN word ~ '[\u0621-\u064a\u0660-\u0669]' THEN
      return 6; -- arabic
    WHEN word ~ '[\u10a0–\u10ff\u1c90–\u1cbf]' THEN
      return 7; -- georgian
    WHEN word ~ '[\u1200-\u1399\u2d80-\u2ddf]' THEN
      return 8; -- ethiopic
    WHEN word ~ '[\u1400–\u167f\u18b0-\u18f5]' THEN
      return 9; -- canadian aboriginal
    WHEN word ~ '[\u2d30-\u2d7f]' THEN
      return 10; -- tifinagh
    WHEN word ~ '[\u3000-\ud7ff\uf900-\ufaff\uff66-\uff9f]' THEN
      return 11; -- CJK
      -- because of the overlap in use of characters between CJK
      -- these are all classified as one script - meaning compound
      -- Japanese/Korean/Chinese names without a separator are not reliably detected.
      -- This is just like with languages using latin script variants so no big deal
    ELSE
      return 1000; -- unknown
  END CASE;
 END;
$$ LANGUAGE 'plpgsql' IMMUTABLE PARALLEL SAFE;

/* return a single name/language/font - language/font are determined if necessary */
CREATE OR REPLACE FUNCTION carto_sanitize_single_name(geom geometry, name text, tags hstore, lang text DEFAULT '') RETURNS TEXT[3] AS $$
 DECLARE
  res text[3] = '{"","",""}';
  name_proc text;
  words text[];
  word text;
  script integer;
  script2 integer;
 BEGIN
  IF (name IS NULL) THEN
    return '{"","",""}';
  END IF;
  name_proc = replace(name, ';;', '@!@');
  -- reject compound labeling strings with separator
  IF (position(';' in name_proc) > 0) THEN
    return '{"","",""}';
  END IF;
  IF (position(' - ' in name_proc) > 0) THEN
    return '{"","",""}';
  END IF; 
  IF (position(' / ' in name_proc) > 0) THEN
    return '{"","",""}';
  END IF;
  IF (position('\n' in name_proc) > 0) THEN
    return '{"","",""}';
  END IF;

  -- reject compound labeling strings based on script differences

  words = string_to_array(name, ' ');
  script = 0;
  FOREACH word IN ARRAY words
  LOOP
    IF (script = 0) THEN
      script = carto_detect_script(word);
    ELSE
      script2 = carto_detect_script(word);
      IF (script != script2) AND (script2 != 1000) THEN
        return '{"","",""}';
      END IF;
      script = script2;
    END IF;
  END LOOP;

  -- simple names are accepted
  res[1] = replace(name_proc, '@!@', ';');
  IF (lang IS NULL OR lang = '') THEN
    IF (tags ? 'default_language') THEN
      res[2] = tags->'default_language';
    ELSE
      res[2] = carto_default_language(geom);
    END IF;
    res[2] = split_part(split_part(res[2], ';', 1), ',', 1);
  ELSE
    res[2] = lang;
  END IF;
  res[3] = carto_font_for_language(res[2]);
  return (res);
 END;
$$ LANGUAGE 'plpgsql' IMMUTABLE PARALLEL SAFE;

/*
Main function to determine the label of a feature.
Returns name/language/font with name potentially being a compound labeling string (using separator)
*/
CREATE OR REPLACE FUNCTION carto_label_name(geom geometry, name text, tags hstore, separator text DEFAULT chr(10)) RETURNS TEXT[3] AS $$
 DECLARE
  -- this is an ordered list, defining order in display when matching
  name_tags text[] = '{"official_name", "loc_name", "alt_name"}';
  name_tags_standalone text[] = '{"name:left", "name:right"}';
  tag text;
  name_proc text;
  res text[3] = '{"","",""}';
  lcodes text;
  lcode text;
  lang text;
  langs text[];
  langs2 text[];
  words text[];
  word text;
  script integer;
  script2 integer;
  pos integer;
  pos2 integer;
  ncnt integer;
  names text[];
  labels text[][];
 BEGIN
   IF tags IS NULL THEN
     return carto_sanitize_single_name(geom, name, tags);
   END IF;

   IF (tags ? 'default_language') THEN
     lang = replace(replace(tags->'default_language', ' - ', ';'), ' / ', ';');
   ELSE
     lang = replace(replace(carto_default_language(geom), ' - ', ';'), ' / ', ';');
   END IF;

   IF (lang = '_') THEN
     langs = NULL;
   ELSE
     langs = string_to_array(lang, ';');
   END IF;

   -- if there is no generic name tag we build the labeling string based on name:<lang> tags based on default_language
   -- should default_language in the future become more broadly adopted this could be made the detault and the generic name tag could be the fallback
   IF name IS NULL THEN
     -- RAISE NOTICE 'no name tag: testing name:<lang> tags matching %', langs;
     IF langs IS NOT NULL THEN
       FOREACH lcodes IN ARRAY langs
       LOOP
         langs2 = string_to_array(lcodes, ',');
         FOREACH lcode IN ARRAY langs2
         LOOP
           tag = 'name:' || lcode;
           IF tags ? tag THEN
             pos = array_position(names, tags->tag);
             IF (pos IS NULL) THEN
               res[1] = tags->tag;
               res[2] = lcode;
               res[3] = '';
               names = array_append(names, res[1]);
               labels = labels || ARRAY[res];
             ELSE
               -- if this name:<lang> is identical to another name:<lang> (and no substring) reset lang because it is ambiguous
               pos2 = position(lcode in labels[pos][2]);
               IF ((pos2 IS NULL) OR (pos2 = 0) OR (pos2 > 1)) THEN
                 labels[pos][2] = '';
               ELSE
                 -- change language to be less specific
                 labels[pos][2] = lcode;
               END IF;
             END IF;
           END IF;
         END LOOP;
       END LOOP;
     END IF;
     -- no suitable name:<lang> tags found: try name:left + name:right
     IF (array_length(labels, 1) IS NULL) THEN
       -- RAISE NOTICE 'testing alternative standalone name tags';
       FOREACH tag IN ARRAY name_tags_standalone
       LOOP
         IF tags ? tag THEN
           pos = array_position(names, tags->tag);
           IF (pos IS NULL) THEN
             res[1] = tags->tag;
             res[2] = '';
             res[3] = '';
             names = array_append(names, res[1]);
             labels = labels || ARRAY[res];
           END IF;
         END IF;
       END LOOP;
     END IF;
   ELSE
     -- RAISE NOTICE 'default_language name processing (%)', langs;

     -- this normalizes compound names with '@|@' as separator (and with separator at start and end)
     -- this allows removing name components with simple replace()
     name_proc = replace(replace(name, ' - ', '@|@'), ' / ', '@|@');
     name_proc = replace(replace(replace(name_proc, ';;', '@!@'), ';', '@|@'), '@!@', ';;');

     -- if no separator is found: try to split based on script
     IF (position('@|@' in name_proc) = 0) THEN
       -- RAISE NOTICE 'trying to split name based on scripts';
       words = string_to_array(name_proc, ' ');
       name_proc = '';
       script = 0;
       FOREACH word IN ARRAY words
       LOOP
         IF (script = 0) THEN
           name_proc = word;
           script = carto_detect_script(word);
         ELSE
           script2 = carto_detect_script(word);
           IF (script = script2) OR (script2 = 1000) THEN
             -- word is same script as previous or unknown: append it to the previous
             name_proc = name_proc||' '||word;
           ELSE
             -- different script detected: isert separator
             -- RAISE NOTICE 'script change after %', name_proc;
             name_proc = name_proc||'@|@'||word;
           END IF;
           script = script2;
         END IF;
       END LOOP;
     END IF;

     -- this makes default_language override name:<lang> tag matching in determining the
     -- language of a simple non-compound name.  Because typically the local language name
     -- is only tagged in name and not in name:<lang> so the name:<lang> tag matching would
     -- wrongly identify a different language in case the names are identical.
     IF (position('@|@' in name_proc) = 0) THEN
       IF langs IS NOT NULL THEN
         return carto_sanitize_single_name(geom, name, tags, lcode);
       END IF;
     END IF;

     name_proc = '@|@'||name_proc||'@|@';
     -- RAISE NOTICE '  name_proc (%)', name_proc;

     -- we do the language codes from default_language first to have them in that order
     IF langs IS NOT NULL THEN
       FOREACH lcodes IN ARRAY langs
       LOOP
         langs2 = string_to_array(lcodes, ',');
         IF langs2 IS NOT NULL THEN
           FOREACH lcode IN ARRAY langs2
           LOOP
             tag = 'name:' || lcode;
             -- RAISE NOTICE 'checking name:%', lcode;
             -- language subtypes: also consider the parent type a match
             pos = position('-' in lcode);
             IF (pos > 0) THEN
               IF NOT(tags ? tag) THEN
                 tag = 'name:' || split_part(lcode, '-', 1);
               END IF;
             END IF;
             IF tags ? tag THEN
               IF (name = tags->tag) THEN
                 -- name matching a single name:<lang>
                 return carto_sanitize_single_name(geom, name, tags, lcode);
                 -- return carto_sanitize_single_name(geom, 'testA', tags, lcode);
               ELSE
                 -- name:<lang> is part of name
                 pos = position(('@|@'||(tags->tag)||'@|@') in name_proc);
                 IF (pos > 0) THEN
                   res[1] = tags->tag;
                   res[2] = lcode;
                   res[3] = '';
                   names = array_append(names, res[1]);
                   labels = labels || ARRAY[res];
                   -- cut that name out of the name tag
                   name_proc = replace(name_proc, '@|@'||(tags->tag)||'@|@', '@|@');
                   -- RAISE NOTICE 'default_language name match (%)', labels;
                   -- RAISE NOTICE '  name_proc (%)', name_proc;
                 ELSE
                   -- if this name:<lang> is identical to another name:<lang> (and no substring) reset lang because it is ambiguous
                   pos = array_position(names, tags->tag);
                   IF (pos IS NOT NULL) THEN
                     pos2 = position(lcode in labels[pos][2]);
                     IF ((pos2 IS NULL) OR (pos2 = 0) OR (pos2 > 1)) THEN
                       labels[pos][2] = '';
                     ELSE
                       -- change language to be less specific
                       labels[pos][2] = lcode;
                     END IF;
                   END IF;
                 END IF;
               END IF;
             END IF;
           END LOOP;
         END IF;
       END LOOP;
     END IF;
     -- names identified so far are in default_language - these take precedence
     -- and are not considered ambiguous when identical to ones that follow.
     ncnt = array_length(labels, 1);
     -- RAISE NOTICE 'other name:<lang> processing (%)', ncnt;
     -- test all other name:* tags not in default_language
     FOREACH tag IN ARRAY akeys(tags)
     LOOP
       IF (tag ~ '^name:.+$') THEN
         lcode = substr(tag, 6);
         -- RAISE NOTICE 'checking name:%', lcode;
         IF (name = tags->tag) THEN
           -- name matching a single name:<lang>
           return carto_sanitize_single_name(geom, name, tags, lcode);
           -- return carto_sanitize_single_name(geom, 'testB', tags, lcode);
         ELSE
           -- name:<lang> is part of name
           pos = position(('@|@'||(tags->tag)||'@|@') in name_proc);
           IF (pos > 0) THEN
             res[1] = tags->tag;
             res[2] = lcode;
             res[3] = '';
             names = array_append(names, res[1]);
             labels = labels || ARRAY[res];
             -- cut that name out of the name tag
             name_proc = replace(name_proc, '@|@'||(tags->tag)||'@|@', '@|@');
             -- RAISE NOTICE 'name:<lang> match (%)', labels;
             -- RAISE NOTICE '  name_proc (%)', name_proc;
           ELSE
             -- if this name:<lang> is identical to another name:<lang> not in default_language reset lang because it is ambiguous
             pos = array_position(names, tags->tag);
             IF ((pos IS NOT NULL) AND (pos > ncnt)) THEN
               labels[pos][2] = '';
             END IF;
           END IF;
         END IF;
       END IF;
     END LOOP;
     -- test the alternative name tags (*_name)
     ncnt = array_length(labels, 1);
     -- RAISE NOTICE 'alternative name processing (%)', ncnt;
     FOREACH tag IN ARRAY name_tags
     LOOP
       IF tags ? tag THEN
         IF (name = tags->tag) THEN
           -- name matching a single alternative name tag
           return carto_sanitize_single_name(geom, name, tags, lang);
           -- return carto_sanitize_single_name(geom, 'testC', tags, lang);
         ELSE
           -- alternative name tag is part of name
           pos = position(('@|@'||(tags->tag)||'@|@') in name_proc);
           IF (pos > 0) THEN
             res[1] = tags->tag;
             res[2] = '';
             res[3] = '';
             names = array_append(names, res[1]);
             labels = labels || ARRAY[res];
             -- cut that name out of the name tag
             name_proc = replace(name_proc, '@|@'||(tags->tag)||'@|@', '@|@');
             -- RAISE NOTICE 'alternative name match (%)', labels;
             -- RAISE NOTICE '  name_proc (%)', name_proc;
           END IF;
         END IF;
       END IF;
     END LOOP;
   END IF;
   IF (array_length(labels, 1) IS NULL) THEN
     -- RAISE NOTICE 'single unmatched name (%)', name;
     -- name not found anywhere in name:<lang> or alternative name tags
     return carto_sanitize_single_name(geom, name, tags, lang);
     -- return carto_sanitize_single_name(geom, 'testD', tags, lang);
   ELSE
     ncnt = array_length(labels, 1);
     -- RAISE NOTICE 'finalizing (%)', labels;
     -- single name matched: use that
     IF (ncnt = 1) THEN
       res[1] = labels[1][1];
       res[2] = labels[1][2];
       IF (res[2] IS NULL OR res[2] = '') THEN
         res[2] = lang;
       END IF;
       res[3] = carto_font_for_language(res[2]);
       -- res[3] = 'xx';
       -- RAISE NOTICE 'single name (%)', res;
       return res;
     ELSE
       -- multiple names: assemble (in order of array as set above) and use language/font of first
       res[1] = array_to_string(names,separator);
       -- RAISE NOTICE 'compound name (%)', names;
       res[2] = labels[1][2];
       res[3] = carto_font_for_language(res[2]);
       -- res[3] = 'yy';
       return (res);
     END IF;
   END IF;
 END;
$$ LANGUAGE 'plpgsql' IMMUTABLE PARALLEL SAFE;

/* wrapper to return columns rather than array */
/*
CREATE OR REPLACE FUNCTION carto_label_name (geom geometry, name text, tags hstore, separator text DEFAULT chr(10), OUT name text, OUT font text)
  LANGUAGE SQL
  IMMUTABLE PARALLEL SAFE
AS $func$
    SELECT a[1] AS name, a[3] AS font FROM (SELECT carto_label_name_lang($1, $2, $3, $4) AS a) AS _;
$func$;
*/

