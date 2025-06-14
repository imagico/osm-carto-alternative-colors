#!/usr/bin/env python3
# ---------------------------------------------------------------------------
#  generate_symbols_labels.py
#
#  generates SQL and MSS code and processes symbol SVG files for point
#  symbols and labels in the style based on definition in a YAML file
#  (symbols_labels.yaml) with correct prioritization and starting zoom
#  levels.
#
#  Copyright 2012-2023 by OSM-Carto contributors
#  Copyright 2017-2025 by Christoph Hormann <chris_hormann@gmx.de>
# ---------------------------------------------------------------------------
#  This file is part of the OSM-Carto alternative colors map style.
#
#  OSM-Carto alternative colors is an open design and free software project
#  You can use, modify and/or redistribute it under the terms of the
#  following licenses:
#
#  Design components of the project are subject to the Creative Commons
#  Attribution ShareAlike 4.0 (CC BY-SA 4.0) License.
#
#  Software components of the project are subject to the GNU Affero General
#  Public License published by the Free Software Foundation, either
#  version 3 of the License, or (at your option) any later version.
#
#  OSM-Carto alternative colors is distributed in the hope that it will be
#  useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
#  General Public License and the Creative Commons Attribution ShareAlike
#  4.0 (CC BY-SA 4.0) License for more details.
#
#  You should have received a copy of the Creative Commons Attribution
#  ShareAlike 4.0 (CC BY-SA 4.0) License along with OSM-Carto alternative
#  colors. If not, see
#  <https://creativecommons.org/licenses/by-sa/4.0/legalcode>.
#
#  You should have also received a copy of the GNU Affero General Public
#  License. If not, see <https://www.gnu.org/licenses/>.
# ---------------------------------------------------------------------------

import argparse
import sys
import yaml
import os
import re
import subprocess
import psycopg2

from collections import OrderedDict, namedtuple

from shutil import copyfile

import logging

from ac_functions import *

indent_base = "        "

def resolve_color(cn, colors):
    if cn in colors:
        return colors[cn]
    else:
        return cn

def main():
    parser = argparse.ArgumentParser(description='Generates point symbols and labels')

    parser.add_argument("-c", "--config", action="store", default="symbols-labels.yaml",
                        help="Name of configuration file (default symbols-labels.yaml)")

    parser.add_argument('-b', '--basedir', dest='basedir', help='Base directory for symbols', action='store')
    parser.add_argument('-i', '--inkscape', dest='inkscape', help='Use inkscape for SVG rasterization', action='store_true', default=False)
    parser.add_argument('-r', '--rsvg', dest='rsvg', help='Instrukt ImageMagick to use RSVG for SVG rasterization', action='store_true', default=False)
    parser.add_argument("-D", "--dpi", dest="dpi", help="Set SVG rasterizing resolution (default is 72, 90 or 96 dpi depending on RSVG/inkscape version)", default=0)

    parser.add_argument('-N', '--nopreviews', dest='nopreviews', help='Do not generate previews (to run faster)', action='store_true', default=False)

    parser.add_argument('-l', '--mml', dest='mml', help='Name of mml file to write query code to', action='store')
    parser.add_argument('-m', '--mss', dest='mss', help='Name of mss file to write mms code to', action='store')

    parser.add_argument("-d", "--database", action="store",
                        help="Override database name to connect to")
    parser.add_argument("-H", "--host", action="store",
                        help="Override database server host or socket directory")
    parser.add_argument("-p", "--port", action="store",
                        help="Override database server port")
    parser.add_argument("-U", "--username", action="store",
                        help="Override database user name")
    parser.add_argument("-v", "--verbose", action="store_true",
                        help="Be more verbose. Overrides -q")
    parser.add_argument("-q", "--quiet", action="store_true",
                        help="Only report serious problems")
    parser.add_argument("-w", "--password", action="store",
                        help="Override database password")

    opts = parser.parse_args()

    if opts.verbose:
        logging.basicConfig(level=logging.DEBUG)
    elif opts.quiet:
        logging.basicConfig(level=logging.WARNING)
    else:
        logging.basicConfig(level=logging.INFO)

    config = load_settings(opts.config)

    basedir = opts.basedir or config["settings"].get("dir")

    if not os.path.exists(basedir+'/colored'):
        os.makedirs(basedir+'/colored')
    if not os.path.exists(basedir+'/previews'):
        os.makedirs(basedir+'/previews')

    mml_fnm = opts.mml or config["settings"].get("mml")
    mss_fnm = opts.mss or config["settings"].get("mss")

    database = opts.database or config["settings"].get("database")
    host = opts.host or config["settings"].get("host")
    port = opts.port or config["settings"].get("port")
    user = opts.username or config["settings"].get("username")
    password = opts.password or config["settings"].get("password")

    table_points = config["settings"].get("table_points")
    table_lines = config["settings"].get("table_lines")
    table_polygons = config["settings"].get("table_plygons")

    conn = None
    conn = psycopg2.connect(database=database,
                             host=host, port=port,
                             user=user,
                             password=password)

    with conn.cursor() as cur:
        cur.execute('''SELECT column_name FROM information_schema.columns WHERE table_name = '{table}' '''.format(table=table_points))
        columns_points_raw = cur.fetchall()
        cur.execute('''SELECT column_name FROM information_schema.columns WHERE table_name = '{table}' '''.format(table=table_lines))
        columns_lines_raw = cur.fetchall()
        cur.execute('''SELECT column_name FROM information_schema.columns WHERE table_name = '{table}' '''.format(table=table_polygons))
        columns_polygons_raw = cur.fetchall()

    columns_points_db = list()
    columns_lines_db = list()
    columns_polygons_db = list()

    for col in columns_points_raw:
        columns_points_db.append(col[0])

    for col in columns_lines_raw:
        columns_polygons_db.append(col[0])

    for col in columns_lines_raw:
        columns_polygons_db.append(col[0])

    file_mml = open(mml_fnm, "w")
    file_mss = open(mss_fnm, "w")

    print ("# This is generated code, do not change this file manually.", file=file_mml)
    print ("# ", file=file_mml)
    print ("# To change these definitions, alter symbols-labels.yaml and run:", file=file_mml)
    print ("# ", file=file_mml)
    print ("#   ./scripts/generate_symbols_labels.py", file=file_mml)
    print ("# ", file=file_mml)
    print ("# Content subject to AGPL v3.0/CC BY-SA 4.0 - see LICENSE.txt for details", file=file_mml)
    print ("# ", file=file_mml)
    print ("  - id: "+config["settings"].get("layer"), file=file_mml)
    print ("    geometry: point", file=file_mml)
    print ("    <<: *extents", file=file_mml)
    print ("    Datasource:", file=file_mml)
    print ("      geometry_table: planet_osm_point", file=file_mml)
    if 'anchors_table' in config["settings"]:
        print ("      anchors_table: "+config["settings"]['anchors_table'], file=file_mml)
    print ("      <<: *osm2pgsql", file=file_mml)
    print ("      table: |-", file=file_mml)

    print ("/* This is generated code, do not change this file manually.               */", file=file_mss)
    print ("/*                                                                         */", file=file_mss)
    print ("/* To change these definitions, alter symbols-labels.yaml and run:         */", file=file_mss)
    print ("/*                                                                         */", file=file_mss)
    print ("/*   ./scripts/generate_symbols_labels.py                                  */", file=file_mss)
    print ("/*                                                                         */", file=file_mss)
    print ("/* Content subject to AGPL v3.0/CC BY-SA 4.0 - see LICENSE.txt for details */", file=file_mss)
    print ("/*                                                                         */", file=file_mss)
    print ("", file=file_mss)
    print ("#"+config["settings"].get("layer")+" {", file=file_mss)

    labels_symbols_mode = 'combined'
    if 'labels_symbols' in config["settings"]:
        if config["settings"]['labels_symbols'] == 'separate':
            labels_symbols_mode = 'separate'

    if labels_symbols_mode == 'separate':
        logging.info("Running in separate labels/symbols mode.")
    else:
        logging.info("Running in combined labels/symbols mode.")

    templates = dict()

    if 'templates' in config:
        for tname, params in config['templates'].items():
            templates[tname] = params

    columns_points = set()
    columns_lines = set()
    columns_polygons = set()
    columns_polygons_direct = set()

    expansion_depencencies = dict()
    expansions = dict()
    score_attributes = list()
    default_attributes = dict()
    attributes = dict()
    attributes_expanded = dict()
    variants = dict()
    way_pixels_thresholds = dict()
    feature_types = dict()
    zooms = dict()
    modifications = dict()

    feature_priorities = list()

    convex_hull_features = dict()

    snap_features_even = set()
    snap_features_odd = set()

    prefilters_points = dict()
    prefilters_lines = dict()
    prefilters_polygons = dict()
    way_pixels_thresholds_kv = dict()

    # this makes sure the feature keys are in correct priority order in the COALESCE()
    for key in config['keys']:
        if key not in feature_types:
            feature_types[key] = dict()

    # these are the default attributes (name etc.) - as marked with the 'always' in the attributes
    # columns are generated for those independent of them being listed in the feature attributes
    for attr, params in config['attributes'].items():
        if 'always' in params:
            if params['always']:
                if attr not in default_attributes:
                    default_attributes[attr] = dict()
                if 'sql' in params:
                    default_attributes[attr]['sql'] = params['sql']
                if 'expand' in params:
                    default_attributes[attr]['expand'] = params['expand']
        else:
                if 'expand' in params:
                    expansions[attr] = params['expand'];
                    for attr2 in params['expand']:
                        expansion_depencencies[attr2] = attr;

        if 'attributes' in params:
            for attr2 in params['attributes']:
                if attr2 in columns_points_db:
                    columns_points.add("\""+attr2+"\"")
                else:
                    columns_points.add("tags->\'"+attr2+"\' AS \""+attr2+"\"")
                if attr2 in columns_lines_db:
                    columns_lines.add("\""+attr2+"\"")
                else:
                    columns_lines.add("tags->\'"+attr2+"\' AS \""+attr2+"\"")
                if attr2 in columns_polygons_db:
                    columns_polygons.add("\""+attr2+"\"")
                    columns_polygons_direct.add("\""+attr2+"\"")
                else:
                    columns_polygons.add("tags->\'"+attr2+"\' AS \""+attr2+"\"")


    for attr, params in default_attributes.items():
        if 'sql' not in params:
            if not (attr.startswith('int_')) and not (attr.startswith('tmp_')) and not (attr.startswith('_')):
                if attr in columns_points_db:
                    columns_points.add("\""+attr+"\"")
                else:
                    columns_points.add("tags->\'"+attr+"\' AS \""+attr+"\"")
                if attr in columns_lines_db:
                    columns_lines.add("\""+attr+"\"")
                else:
                    columns_lines.add("tags->\'"+attr+"\' AS \""+attr+"\"")
                if attr in columns_polygons_db:
                    columns_polygons.add("\""+attr+"\"")
                    columns_polygons_direct.add("\""+attr+"\"")
                else:
                    columns_polygons.add("tags->\'"+attr+"\' AS \""+attr+"\"")

    have_points = False
    have_lines = False
    have_polygons = False
    have_convex_hulls = False

    contactsheet_files = []

    # assemble the data needed to generate the query
    # color the SVG symbols needed
    for fn, params in config['features'].items():

        if fn.find("+") >= 0:
            (kv, variant) = fn.split('+')
            variant = variant.replace("=", "_")
            (fkey, fval) = kv.split('=')
            fn = fkey+"_"+fval+"_"+variant
            fvaln = fval.replace("/", "_")
            fval_base = fval.split('/')[0]
        elif fn.find("=") >= 0:
            kv = fn
            variant = None
            (fkey, fval) = kv.split('=')
            fn = fkey+"_"+fval
            fvaln = fval.replace("/", "_")
            fval_base = fval.split('/')[0]
        else:
            kv = fn
            variant = None
            fkey = fn
            fval = None
            fvaln = None

        fnn = fn.replace("/", "_")

        if fkey == 'way':
            continue
        if fkey == 'name':
            continue
        if fkey == 'tags':
            continue
        if fkey == 'way_length':
            continue
        if fkey == 'way_area':
            continue

        # apply template if specified and exists
        if 'template' in params:
            if params['template'] in templates:
                for param, pval in templates[params['template']].items():
                    if param not in params:
                        params[param] = pval
            else:
                logging.warning("Unknown template {template} referenced in feature {fn} - ignoring".format(template=params['template'], fn=fn))

        if 'type' in params:
            tp = params['type']
        elif 'type' in config['defaults']:
            tp = config['defaults']['type']
        else:
            tp = 'point+polygon'

        do_convex_hull = False

        if tp == 'point+polygon':
            do_point = True
            do_line = False
            do_polygon = True
        elif tp == 'line':
            do_line = True
            do_point = False
            do_polygon = False
        elif tp == 'point':
            do_point = True
            do_line = False
            do_polygon = False
        elif tp == 'polygon':
            do_point = False
            do_line = False
            do_polygon = True
        elif tp == 'all':
            do_point = True
            do_line = True
            do_polygon = True
        elif tp == 'convex_hull':
            do_point = False
            do_line = False
            do_polygon = False
            do_convex_hull = True
        else:
            logging.warning("Unknown type {tp} for feature {fn} - ignoring".format(tp=tp, fn=fn))
            continue

        if do_point:
            have_points = True
        if do_line:
            have_lines = True
        if do_polygon:
            have_polygons = True

        if do_convex_hull:
            have_convex_hulls = True
            if fkey not in convex_hull_features:
                convex_hull_features[fkey] = set()
                if fval not in convex_hull_features[fkey]:
                    convex_hull_features[fkey].add(fval)

        # if missing from the priority list add at the end
        if fkey not in feature_types:
            logging.info("Feature key {} not in priority list \'keys\' - adding at end".format(fkey))
            feature_types[fkey] = dict()

        cond = ""
        if not(do_point):
            if not(do_line):
                cond = "(way_area IS NOT NULL) AND (way_length IS NULL)"
            elif not(do_polygon or do_convex_hull):
                cond = "(way_length IS NOT NULL)"
            else:
                cond = "((way_area IS NOT NULL) OR (way_length IS NOT NULL))"
        else:
            if not(do_line):
                if not (do_polygon or do_convex_hull):
                    cond = "(way_area IS NULL) AND (way_length IS NULL)"
                else:
                    cond = "(way_length IS NULL)"
            elif not (do_polygon or do_convex_hull):
                cond = "(way_area IS NULL)"

        if 'condition' in params:
            cond = cond + " AND " + params['condition']

        if cond not in feature_types[fkey]:
            feature_types[fkey][cond] = dict()

        if fval not in feature_types[fkey][cond]:
            feature_types[fkey][cond][fval] = set()

        feature_types[fkey][cond][fval].add(variant)

        if fkey in columns_points_db:
            columns_points.add("\""+fkey+"\"")
        else:
            columns_points.add("tags->\'"+fkey+"\' AS \""+fkey+"\"")
        if fkey in columns_lines_db:
            columns_lines.add("\""+fkey+"\"")
        else:
            columns_lines.add("tags->\'"+fkey+"\' AS \""+fkey+"\"")
        if fkey in columns_polygons_db:
            columns_polygons.add("\""+fkey+"\"")
            columns_polygons_direct.add("\""+fkey+"\"")
        else:
            columns_polygons.add("tags->\'"+fkey+"\' AS \""+fkey+"\"")

        z_start = 100
        if 'start_symbol' in params:
            if int(params['start_symbol']) < z_start:
                z_start = int(params['start_symbol'])
        if 'start_label' in params:
            if int(params['start_label']) < z_start:
                z_start = int(params['start_label'])

        if 'snap' in params:
            if (params["snap"] == 'even'):
                snap_features_even.add(fkey+"_"+fval)
            elif (params["snap"] == 'odd'):
                snap_features_odd.add(fkey+"_"+fval)

        if 'attributes' in params:
            # we only want attributes as columns in the inner query
            # if they don't start with 'int_', 'tmp_' or '_'
            for attr in params['attributes']:
                if not (attr.startswith('int_')) and not (attr.startswith('tmp_')) and not (attr.startswith('_')):
                    if attr in columns_points_db:
                        columns_points.add("\""+attr+"\"")
                    else:
                        columns_points.add("tags->\'"+attr+"\' AS \""+attr+"\"")
                    if attr in columns_lines_db:
                        columns_lines.add("\""+attr+"\"")
                    else:
                        columns_lines.add("tags->\'"+attr+"\' AS \""+attr+"\"")
                    if attr in columns_polygons_db:
                        columns_polygons.add("\""+attr+"\"")
                        columns_polygons_direct.add("\""+attr+"\"")
                    else:
                        columns_polygons.add("tags->\'"+attr+"\' AS \""+attr+"\"")

            if hasattr(params['attributes'], 'items'):
                for attr, acond in params['attributes'].items():

                    if 'condition' in params:
                        if acond is None or (acond == ''):
                            acond = params['condition']
                        else:
                            acond = acond + " AND " + params['condition']

                    sql = ''
                    attr_mod = attr
                    if attr in config['attributes']:
                        if 'sql' in config['attributes'][attr]:
                            sql = config['attributes'][attr]['sql']
                    elif attr in expansion_depencencies:
                        attr_mod = expansion_depencencies[attr]
                        if attr_mod in config['attributes']:
                            if 'sql' in config['attributes'][attr_mod]:
                                sql = config['attributes'][attr_mod]['sql']

                    if attr_mod not in attributes:
                        attributes[attr_mod] = dict()
                    if sql not in attributes[attr_mod]:
                        attributes[attr_mod][sql] = dict()
                    if acond not in attributes[attr_mod][sql]:
                        attributes[attr_mod][sql][acond] = dict()
                    if fkey not in attributes[attr_mod][sql][acond]:
                        attributes[attr_mod][sql][acond][fkey] = dict()
                    if fval_base not in attributes[attr_mod][sql][acond][fkey]:
                        attributes[attr_mod][sql][acond][fkey][fval_base] = set()
                    attributes[attr_mod][sql][acond][fkey][fval_base].add(variant)

                    if attr not in attributes_expanded:
                        attributes_expanded[attr] = dict()
                    if sql not in attributes_expanded[attr]:
                        attributes_expanded[attr][sql] = dict()
                    if acond not in attributes_expanded[attr][sql]:
                        attributes_expanded[attr][sql][acond] = dict()
                    if fkey not in attributes_expanded[attr][sql][acond]:
                        attributes_expanded[attr][sql][acond][fkey] = dict()
                    if fval_base not in attributes_expanded[attr][sql][acond][fkey]:
                        attributes_expanded[attr][sql][acond][fkey][fval_base] = set()
                    attributes_expanded[attr][sql][acond][fkey][fval_base].add(variant)
            else:
                for attr in params['attributes']:
                    acond = ''

                    if 'condition' in params:
                        acond = params['condition']

                    sql = ''
                    attr_mod = attr
                    if attr in config['attributes']:
                        if 'sql' in config['attributes'][attr]:
                            sql = config['attributes'][attr]['sql']
                    elif attr in expansion_depencencies:
                        attr_mod = expansion_depencencies[attr]
                        if attr_mod in config['attributes']:
                            if 'sql' in config['attributes'][attr_mod]:
                                sql = config['attributes'][attr_mod]['sql']

                    if attr_mod not in attributes:
                        attributes[attr_mod] = dict()
                    if sql not in attributes[attr_mod]:
                        attributes[attr_mod][sql] = dict()
                    if acond not in attributes[attr_mod][sql]:
                        attributes[attr_mod][sql][acond] = dict()
                    if fkey not in attributes[attr_mod][sql][acond]:
                        attributes[attr_mod][sql][acond][fkey] = dict()
                    if fval_base not in attributes[attr_mod][sql][acond][fkey]:
                        attributes[attr_mod][sql][acond][fkey][fval_base] = set()
                    attributes[attr_mod][sql][acond][fkey][fval_base].add(variant)

                    if attr not in attributes_expanded:
                        attributes_expanded[attr] = dict()
                    if sql not in attributes_expanded[attr]:
                        attributes_expanded[attr][sql] = dict()
                    if acond not in attributes_expanded[attr][sql]:
                        attributes_expanded[attr][sql][acond] = dict()
                    if fkey not in attributes_expanded[attr][sql][acond]:
                        attributes_expanded[attr][sql][acond][fkey] = dict()
                    if fval_base not in attributes_expanded[attr][sql][acond][fkey]:
                        attributes_expanded[attr][sql][acond][fkey][fval_base] = set()
                    attributes_expanded[attr][sql][acond][fkey][fval_base].add(variant)

            if attr in config['attributes']:
                if 'score' in config['attributes'][attr]:
                    if config['attributes'][attr]['score']:
                        score_attributes.append(attr)

        if fn not in zooms:
            zooms[fn] = dict()
        if None not in zooms[fn]:
            zooms[fn][None] = dict()
            symbol_file = None
            if 'symbol_file' in params:
                symbol_file = params['symbol_file']
            if 'start_symbol' in params:
                zooms[fn][None]['start_symbol'] = params['start_symbol']
                if symbol_file is None:
                    if os.path.exists(basedir+"/sources/"+fnn+".svg"):
                        symbol_file = basedir+"/sources/"+fnn+".svg"
                    elif fval is not None:
                        if os.path.exists(basedir+"/sources/"+fkey+"/"+fvaln+".svg"):
                            symbol_file = basedir+"/sources/"+fkey+"/"+fvaln+".svg"
                        elif os.path.exists(basedir+"/sources/"+fkey+"_"+fvaln+".svg"):
                            symbol_file = basedir+"/sources/"+fkey+"_"+fvaln+".svg"
                        elif os.path.exists(basedir+"/sources/"+fvaln+".svg"):
                            symbol_file = basedir+"/sources/"+fvaln+".svg"
                if symbol_file is None:
                    if os.path.exists(basedir+"/"+fnn+".svg"):
                        symbol_file = basedir+"/"+fnn+".svg"
                    elif fval is not None:
                        if os.path.exists(basedir+"/"+fkey+"/"+fvaln+".svg"):
                            symbol_file = basedir+"/"+fkey+"/"+fvaln+".svg"
                        elif os.path.exists(basedir+"/"+fkey+"_"+fvaln+".svg"):
                            symbol_file = basedir+"/"+fkey+"_"+fvaln+".svg"
                        elif os.path.exists(basedir+"/"+fvaln+".svg"):
                            symbol_file = basedir+"/"+fvaln+".svg"
            else:
                zooms[fn][None]['start_symbol'] = 'NULL'
            if 'start_label' in params:
                zooms[fn][None]['start_label'] = params['start_label']
            else:
                zooms[fn][None]['start_label'] = 'NULL'

            if 'symbol_color' in params:
                symbol_color = resolve_color(params['symbol_color'], config['colors'])
            elif 'symbol_color' in config['defaults']:
                symbol_color = config['defaults']['symbol_color']
            else:
                symbol_color = None

            if 'symbol_color2' in params:
                symbol_color2 = resolve_color(params['symbol_color2'], config['colors'])
            else:
                symbol_color2 = None

            if 'label_color' in params:
                label_color = resolve_color(params['label_color'], config['colors'])
            elif 'label_color' in config['defaults']:
                label_color = config['defaults']['label_color']
            else:
                label_color = None

            if symbol_file is not None:
                if 'symbol_color' in params:
                    colorize_svg(symbol_file, basedir, fnn, symbol_color, symbol_color2)
                else:
                    logging.info("Copying symbol for {}...".format(fn))
                    copyfile(symbol_file, basedir+"/colored/"+fnn+".svg")
                zooms[fn][None]['symbol_file'] = basedir+"/colored/"+fnn+".svg"

                if not(opts.nopreviews):
                    svg_convert(basedir+"/colored/"+fnn+".svg", basedir+"/previews/"+fnn+'.png', True, opts.inkscape, opts.rsvg, opts.dpi)
                    contactsheet_files.append(basedir+"/previews/"+fnn+".png")

            zooms[fn][None]['symbol_color'] = symbol_color
            zooms[fn][None]['label_color'] = label_color

            for pn, default in config['defaults'].items():
                if pn not in ['symbol_color', 'label_color', 'style']:
                    if pn in params:
                        zooms[fn][None][pn] = params[pn]
                    else:
                        zooms[fn][None][pn] = default

        if 'modifications' in params:
            if fn not in modifications:
                modifications[fn] = dict()
                for modification, params_m in params['modifications'].items():
                    modification = modification.replace("=", "_")

                    # apply template if specified and exists
                    if 'template' in params_m:
                        if params_m['template'] in templates:
                            for param, pval in templates[params_m['template']].items():
                                if param not in params_m:
                                    params_m[param] = pval
                        else:
                            logging.warning("Unknown template {template} referenced in feature modification {fn} - ignoring".format(template=params_m['template'], fn=fn+"_"+modification))

                    if modification not in modifications[fn]:
                        modifications[fn][modification] = dict()
                        symbol_file_mod = None
                        if 'symbol_file' in params_m:
                            symbol_file_mod = params_m['symbol_file']
                        else:
                            symbol_file_mod = symbol_file

                        if 'style' in params_m:
                            modifications[fn][modification]['style'] = params_m['style']
                        else:
                            logging.warning("Feature modification {} without style specified.".format(fn+"_"+modification))

                        if 'attribute' in params_m:
                            modifications[fn][modification]['attribute'] = params_m['attribute']
                        if 'filters' in params_m:
                            modifications[fn][modification]['filters'] = params_m['filters']

                        if 'start_symbol' in params_m:
                            modifications[fn][modification]['start_symbol'] = params_m['start_symbol']
                            if int(params_m['start_symbol']) < z_start:
                                z_start = int(params_m['start_symbol'])
                        if 'start_label' in params_m:
                            modifications[fn][modification]['start_label'] = params_m['start_label']
                            if int(params_m['start_label']) < z_start:
                                z_start = int(params_m['start_label'])

                        if 'symbol_color' in params_m:
                            symbol_color_mod = resolve_color(params_m['symbol_color'], config['colors'])
                        elif 'symbol_color' in params:
                            symbol_color_mod = resolve_color(params['symbol_color'], config['colors'])
                        elif 'symbol_color' in config['defaults']:
                            symbol_color_mod = config['defaults']['symbol_color']
                        else:
                            symbol_color_mod = None

                        if 'symbol_color2' in params_m:
                            symbol_color2_mod = resolve_color(params_m['symbol_color2'], config['colors'])
                        elif 'symbol_color2' in params:
                            symbol_color2_mod = resolve_color(params['symbol_color2'], config['colors'])
                        else:
                            symbol_color2_mod = None

                        if 'label_color' in params_m:
                            label_color_mod = resolve_color(params_m['label_color'], config['colors'])
                        elif 'label_color' in params:
                            label_color_mod = resolve_color(params['label_color'], config['colors'])
                        elif 'label_color' in config['defaults']:
                            label_color_mod = config['defaults']['label_color']
                        else:
                            label_color_mod = None

                        if symbol_file_mod is not None:
                            # only colorize own symbol for variant if a different symbol file or color is set
                            if ('symbol_file' in params_m) or ('symbol_color' in params_m):
                                if symbol_color_mod is not None:
                                    colorize_svg(symbol_file_mod, basedir, fnn+"_"+modification, symbol_color_mod, symbol_color2_mod)
                                else:
                                    logging.info("Copying symbol for {}...".format(fn+"_"+modification))
                                    copyfile(symbol_file_mod, basedir+"/colored/"+fnn+"_"+modification+".svg")

                                modifications[fn][modification]['symbol_file'] = basedir+"/colored/"+fnn+"_"+modification+".svg"

                                if not(opts.nopreviews):
                                    svg_convert(basedir+"/colored/"+fnn+"_"+modification+".svg", basedir+"/previews/"+fnn+"_"+modification+'.png', True, opts.inkscape, opts.rsvg, opts.dpi)
                                    contactsheet_files.append(basedir+"/previews/"+fnn+"_"+modification+".png")

                            else:
                                modifications[fn][modification]['symbol_file'] = basedir+"/colored/"+fnn+".svg"

                        modifications[fn][modification]['symbol_color'] = symbol_color_mod
                        modifications[fn][modification]['label_color'] = label_color_mod

                        for pn, default in config['defaults'].items():
                            if pn not in ['symbol_color', 'label_color', 'style', 'type', 'way_pixels_min']:
                                if pn in params_m:
                                    modifications[fn][modification][pn] = params_m[pn]

        if 'way_pixels_min' in params:
            if fn not in way_pixels_thresholds:
                way_pixels_thresholds[fn] = dict()
                way_pixels_thresholds[fn]['way_pixels_min'] = params['way_pixels_min']
                if 'way_pixels_start_all' in params:
                    way_pixels_thresholds[fn]['way_pixels_start_all'] = params['way_pixels_start_all']

            if kv not in way_pixels_thresholds_kv:
                way_pixels_thresholds_kv[kv] = dict()
                wpmin = int(params['way_pixels_min'])
                if 'way_pixels_min' not in way_pixels_thresholds_kv[kv]:
                    way_pixels_thresholds_kv[kv]['way_pixels_min'] = wpmin
                elif wpmin < way_pixels_thresholds_kv[kv]['way_pixels_min']:
                    way_pixels_thresholds_kv[kv]['way_pixels_min'] = wpmin
                if 'way_pixels_start_all' in params:
                    wpsa = int(params['way_pixels_start_all'])
                    if 'way_pixels_start_all' not in way_pixels_thresholds_kv[kv]:
                        way_pixels_thresholds_kv[kv]['way_pixels_start_all'] = wpsa
                    elif wpsa < way_pixels_thresholds_kv[kv]['way_pixels_start_all']:
                        way_pixels_thresholds_kv[kv]['way_pixels_start_all'] = wpsa
                elif 'way_pixels_start_all' not in way_pixels_thresholds_kv[kv]:
                    way_pixels_thresholds_kv[kv]['way_pixels_start_all'] = 100

        variants_style = list()
        nvar = 0

        if 'variants' in params:
            nvar = len(params['variants'])
            for variant, params_v in params['variants'].items():
                variant = variant.replace("=", "_")

                # apply template if specified and exists
                if 'template' in params_v:
                    if params_v['template'] in templates:
                        for param, pval in templates[params_v['template']].items():
                            if param not in params_v:
                                params_v[param] = pval
                    else:
                        logging.warning("Unknown template {template} referenced in feature variant {fn} - ignoring".format(template=params_v['template'], fn=fn+"_"+variant))

                if 'style' in params_v:
                    variants_style.append(variant)
                elif 'symbol_file' in params_v:
                    variants_style.append(variant)

                if fn not in variants:
                    variants[fn] = dict()
                if variant not in variants[fn]:
                    if 'condition' in params_v:
                        variants[fn][variant] = params_v['condition']
                    else: # variant without condition means: start zoom level is condition
                        if 'start_symbol' in params_v:
                            variants[fn][variant] = "z(!scale_denominator!) >= "+str(params_v['start_symbol'])
                        elif 'start_label' in params_v:
                            variants[fn][variant] = "z(!scale_denominator!) >= "+str(params_v['start_label'])
                if variant not in zooms[fn]:
                    zooms[fn][variant] = dict()
                    symbol_file_variant = None
                    if 'symbol_file' in params_v:
                        symbol_file_variant = params_v['symbol_file']
                    else:
                        symbol_file_variant = symbol_file

                    if 'style' in params_v:
                        zooms[fn][variant]['style'] = params_v['style']

                    if 'start_symbol' in params_v:
                        zooms[fn][variant]['start_symbol'] = params_v['start_symbol']
                        if int(params_v['start_symbol']) < z_start:
                            z_start = int(params_v['start_symbol'])
                    elif 'start_symbol' in params:
                        zooms[fn][variant]['start_symbol'] = params['start_symbol']
                    else:
                        zooms[fn][variant]['start_symbol'] = 'NULL'
                    if 'start_label' in params_v:
                        zooms[fn][variant]['start_label'] = params_v['start_label']
                        if int(params_v['start_label']) < z_start:
                            z_start = int(params_v['start_label'])
                    elif 'start_label' in params:
                        zooms[fn][variant]['start_label'] = params['start_label']
                    else:
                        zooms[fn][variant]['start_label'] = 'NULL'

                    if 'symbol_color' in params_v:
                        symbol_color_variant = resolve_color(params_v['symbol_color'], config['colors'])
                    elif 'symbol_color' in params:
                        symbol_color_variant = resolve_color(params['symbol_color'], config['colors'])
                    elif 'symbol_color' in config['defaults']:
                        symbol_color_variant = config['defaults']['symbol_color']
                    else:
                        symbol_color_variant = None

                    if 'symbol_color2' in params_v:
                        symbol_color2_variant = resolve_color(params_v['symbol_color2'], config['colors'])
                    elif 'symbol_color2' in params:
                        symbol_color2_variant = resolve_color(params['symbol_color2'], config['colors'])
                    else:
                        symbol_color2_variant = None

                    if 'label_color' in params_v:
                        label_color_variant = resolve_color(params_v['label_color'], config['colors'])
                    elif 'label_color' in params:
                        label_color_variant = resolve_color(params['label_color'], config['colors'])
                    elif 'label_color' in config['defaults']:
                        label_color_variant = config['defaults']['label_color']
                    else:
                        label_color_variant = None

                    if symbol_file_variant is not None:
                        # only colorize own symbol for variant if a different symbol file or color is set
                        if ('symbol_file' in params_v) or ('symbol_color' in params_v):
                            if symbol_color_variant is not None:
                                colorize_svg(symbol_file_variant, basedir, fnn+"_"+variant, symbol_color_variant, symbol_color2_variant)
                            else:
                                logging.info("Copying symbol for {}...".format(fnn+"_"+variant))
                                copyfile(symbol_file_variant, basedir+"/colored/"+fnn+"_"+variant+".svg")

                            zooms[fn][variant]['symbol_file'] = basedir+"/colored/"+fnn+"_"+variant+".svg"

                            if not(opts.nopreviews):
                                svg_convert(basedir+"/colored/"+fnn+"_"+variant+".svg", basedir+"/previews/"+fnn+"_"+variant+'.png', True, opts.inkscape, opts.rsvg, opts.dpi)
                                contactsheet_files.append(basedir+"/previews/"+fnn+"_"+variant+".png")

                        else:
                            zooms[fn][variant]['symbol_file'] = basedir+"/colored/"+fnn+".svg"

                    zooms[fn][variant]['symbol_color'] = symbol_color_variant
                    zooms[fn][variant]['label_color'] = label_color_variant

                    for pn, default in config['defaults'].items():
                        if pn not in ['symbol_color', 'label_color', 'style', 'way_pixels_min']:
                            if pn in params_v:
                                zooms[fn][variant][pn] = params_v[pn]
                            elif pn in params:
                                zooms[fn][variant][pn] = params[pn]
                            else:
                                zooms[fn][variant][pn] = default


        # record the overall starting zoom levels or pre-filtering
        if z_start < 100:
            if do_point:
                if z_start not in prefilters_points:
                    prefilters_points[z_start] = dict()
                if fkey not in prefilters_points[z_start]:
                    prefilters_points[z_start][fkey] = set()
                if fval not in prefilters_points[z_start][fkey]:
                    prefilters_points[z_start][fkey].add(fval)

            if do_line:
                if z_start not in prefilters_lines:
                    prefilters_lines[z_start] = dict()
                if fkey not in prefilters_lines[z_start]:
                    prefilters_lines[z_start][fkey] = set()
                if fval not in prefilters_lines[z_start][fkey]:
                    prefilters_lines[z_start][fkey].add(fval)

            if do_polygon:
                if z_start not in prefilters_polygons:
                    prefilters_polygons[z_start] = dict()
                if fkey not in prefilters_polygons[z_start]:
                    prefilters_polygons[z_start][fkey] = set()
                if fval not in prefilters_polygons[z_start][fkey]:
                    prefilters_polygons[z_start][fkey].add(fval)


        # generate MSS code
        if len(variants_style) == 0:
            print ("  [feature = \'"+fn+"\'] {", file=file_mss)
        elif len(variants_style) == nvar:
            print ("  [feature = \'"+fn+"\'][variant = null] {", file=file_mss)
        else:
            print ("  [feature = \'"+fn+"\'][variant != \'"+("\'][variant != \'".join(variants_style))+"\'] {", file=file_mss)

        if 'style' in params:
            style = params['style']
        else:
            style = "standard"

        if isinstance(style, list):
            for style2 in style:
                if style2 in config['styles']:
                    style_mss = config['styles'][style2]
                    if 'symbol_file' in zooms[fn][None]:
                        style_mss = style_mss.replace("[[symbol_file]]", zooms[fn][None]['symbol_file'])
                    elif "[[symbol_file]]" in style_mss:
                        logging.warning("No symbol_file specified for feature type {} - failed to replace symbol placeholder.".format(fn))

                    style_mss = style_mss.replace("[[feature]]", fn)

                    for pn in config['defaults']:
                        if pn != 'style':
                            style_mss = style_mss.replace("[["+pn+"]]", str(zooms[fn][None][pn]))

                    print ("    "+("\n    ".join(style_mss.splitlines())), file=file_mss)

                else:
                    print ("    // missing style code here due to unknown style", file=file_mss)
                    logging.warning("Unknown style {sty} for feature type {fn} - not generating mss code.".format(sty=style, fn=fn))
        elif style in config['styles']:
            style_mss = config['styles'][style]
            if 'symbol_file' in zooms[fn][None]:
                style_mss = style_mss.replace("[[symbol_file]]", zooms[fn][None]['symbol_file'])
            elif "[[symbol_file]]" in style_mss:
                logging.warning("No symbol_file specified for feature type {} - failed to replace symbol placeholder.".format(fn))

            style_mss = style_mss.replace("[[feature]]", fn)

            for pn in config['defaults']:
                if pn != 'style':
                    style_mss = style_mss.replace("[["+pn+"]]", str(zooms[fn][None][pn]))

            print ("    "+("\n    ".join(style_mss.splitlines())), file=file_mss)

        else:
            print ("    // missing style code here due to unknown style", file=file_mss)
            logging.warning("Unknown style {sty} for feature type {fn} - not generating mss code.".format(sty=style, fn=fn))

        if fn in modifications:
            for modification, params_m in modifications[fn].items():
                if 'style' in params_m:
                    style_m = params_m['style']
                    if style_m in config['styles']:
                        style_mss = config['styles'][style_m]
                        if 'symbol_file' in params_m:
                            style_mss = style_mss.replace("[[symbol_file]]", params_m['symbol_file'])
                        elif "[[symbol_file]]" in style_mss:
                            logging.warning("No symbol_file specified for feature type modification {} - failed to replace symbol placeholder.".format(fn+"+"+modification))

                        for pn in config['defaults']:
                            if pn != 'style':
                                if pn in params_m:
                                    style_mss = style_mss.replace("[["+pn+"]]", str(params_m[pn]))
                                elif "[["+pn+"]]" in style_mss:
                                    lines_mss = style_mss.splitlines()
                                    for line in lines_mss:
                                        if "[["+pn+"]]" in line:
                                            lines_mss.remove(line)
                                            logging.info("Removing un-substituted line with symbol {pn} from style {sty} for feature type modification {fn}+{modification}...".format(pn=pn, sty=style_m, fn=fn, modification=modification))
                                    style_mss = "\n".join(lines_mss)

                        style_mss = style_mss.replace("[[feature]]", fn+"_"+modification)

                        for pn in ['start_symbol', 'start_label']:
                            if pn != 'style':
                                if pn in params_m:
                                    style_mss = style_mss.replace("[["+pn+"]]", str(params_m[pn]))

                        if 'filters' in params_m:
                            style_mss = style_mss.replace("[[attribute_selector]]", params_m['filters'])
                        if 'attribute' in params_m:
                            if 'filters' in params_m:
                                logging.warning("Both 'attribute' and 'filters' specified in feature type modification {fn}+{modification} - ignoring 'attribute'".format(fn=fn, modification=modification))
                            else:
                                style_mss = style_mss.replace("[[attribute_selector]]", "[\""+params_m['attribute']+"\" = \'"+modification+"\']")
                                if params_m['attribute'] not in attributes:
                                    logging.warning("Unknown attribute {attr} used in feature type modification {fn}+{modification} - mss code might not work".format(attr=params_m['attribute'], fn=fn, modification=modification))

                        if "[[attribute_selector]]" in style_mss:
                            logging.warning("Unsubstituted attribute selector in feature type modification {fn}+{modification} - mss code will likely not work".format(fn=fn, modification=modification))

                        print ("    // modification {fn}+{modification} based on style {sty}".format(fn=fn, modification=modification, sty=style_m), file=file_mss)
                        print ("    "+("\n    ".join(style_mss.splitlines())), file=file_mss)

                    else:
                        print ("    // missing style code here due to unknown style", file=file_mss)
                        logging.warning("Unknown style {sty} for feature type modification {fn}+{modification} - not generating mss code.".format(sty=style_m, fn=fn, modification=modification))

        for variant, params_v in zooms[fn].items():
            if variant is not None:
                if variant in variants_style:
                    print ("  }", file=file_mss)
                    print ("  [feature = \'"+fn+"\'][variant = \'"+variant+"\'] {", file=file_mss)

                    if 'style' in params_v:
                        style_v = params_v['style']
                    else:
                        style_v = style

                    logging.info("Style {sty} for feature type {fn}+{var}...".format(sty=style, fn=fn, var=variant))

                    if style_v in config['styles']:
                        style_mss = config['styles'][style_v]
                        if 'symbol_file' in zooms[fn][variant]:
                            style_mss = style_mss.replace("[[symbol_file]]", zooms[fn][variant]['symbol_file'])
                        elif 'symbol_file' in zooms[fn][None]:
                            style_mss = style_mss.replace("[[symbol_file]]", zooms[fn][None]['symbol_file'])
                        elif "[[symbol_file]]" in style_mss:
                            logging.warning("No symbol_file specified for feature type variant {} - failed to replace symbol placeholder.".format(fn+"+"+variant))

                        style_mss = style_mss.replace("[[feature]]", fn+"_"+variant)

                        for pn in config['defaults']:
                            if pn != 'style':
                                style_mss = style_mss.replace("[["+pn+"]]", str(zooms[fn][variant][pn]))

                        print ("      "+("\n      ".join(style_mss.splitlines())), file=file_mss)

                    else:
                        print ("      // missing style code here due to unknown style", file=file_mss)
                        logging.warning("Unknown style {sty} for feature type variant {fn}+{var} - not generating mss code.".format(sty=style_v, fn=fn, var=variant))

                    if variant not in variants_style:
                        print ("    }", file=file_mss)

        print ("  }", file=file_mss)

    # assemble the actual SQL query

    cols_generated = set()
    cols_combined = list()
    cols_zoom_thresholds = list()
    cols_final = list()
    cols_final_symbol_only = list()
    cols_final_label_only = list()
    cols_final_addon = dict()

    addon_columns_required = dict()

    column_substitutes = dict()

    if 'column_substitutes' in config:
        for sname, params in config['column_substitutes'].items():
            column_substitutes[sname] = params
            cols_final_addon[sname] = list()

    # these are reserved column names that cannot be used by attributes
    cols_generated.add("way")
    cols_generated.add("feature")
    cols_generated.add("variant")
    cols_generated.add("start_symbol")
    cols_generated.add("start_label")
    cols_generated.add("vis_type")
    cols_generated.add("prio")
    cols_generated.add("score")
    cols_generated.add("way_area")
    cols_generated.add("way_length")
    cols_generated.add("way_pixels")
    cols_generated.add("zoom_threshold")

    #cols_combined.append("way")
    cols_zoom_thresholds.append("way")
    cols_final.append("way")
    cols_final_symbol_only.append("way")
    cols_final_label_only.append("way")

    for sname, params in column_substitutes.items():
        if 'way' in params:
            cols_final_addon[sname].append("\""+params['way']+"\" AS way")
            addon_columns_required[sname] = params['way']
        else:
            cols_final_addon[sname].append("way")

    # expansion of array based columns
    for attr, params in default_attributes.items():
        if not (attr in cols_generated):
            if 'expand' in params:
                if hasattr(params['expand'], 'items'):
                    for col, esql in params['expand'].items():
                        cols_combined.append(esql+" AS \""+col+"\"")
                        cols_zoom_thresholds.append("\""+col+"\"")
                        if not (col.startswith('tmp_')):
                            cols_final.append("\""+col+"\"")
                            cols_final_symbol_only.append("\""+col+"\"")
                            cols_final_label_only.append("\""+col+"\"")
                            for sname, params in column_substitutes.items():
                                if col in params:
                                    cols_final_addon[sname].append(params[col]+" AS \""+col+"\"")
                                else:
                                    cols_final_addon[sname].append("\""+col+"\"")
                        cols_generated.add(col)

                else:
                    for i, col in enumerate(params['expand']):
                        cols_combined.append(("\""+attr+"\"[%s] AS \""+col+"\"") % (i+1))
                        cols_zoom_thresholds.append("\""+col+"\"")
                        if not (col.startswith('tmp_')):
                            cols_final.append("\""+col+"\"")
                            cols_final_symbol_only.append("\""+col+"\"")
                            cols_final_label_only.append("\""+col+"\"")
                            for sname, params in column_substitutes.items():
                                if col in params:
                                    cols_final_addon[sname].append(params[col]+" AS \""+col+"\"")
                                else:
                                    cols_final_addon[sname].append("\""+col+"\"")
                        cols_generated.add(col)
            else:
                cols_combined.append("\""+attr+"\"")
                cols_zoom_thresholds.append("\""+attr+"\"")
                if not (attr.startswith('tmp_')):
                    cols_final.append("\""+attr+"\"")
                    cols_final_symbol_only.append("\""+attr+"\"")
                    cols_final_label_only.append("\""+attr+"\"")
                    for sname, params in column_substitutes.items():
                        if attr in params:
                            cols_final_addon[sname].append(params[attr]+" AS \""+attr+"\"")
                        else:
                            cols_final_addon[sname].append("\""+attr+"\"")
                cols_generated.add(attr)

    cols_combined.append("feature")
    cols_zoom_thresholds.append("combined.feature AS feature")
    cols_final.append("feature")
    cols_final_symbol_only.append("feature")
    cols_final_label_only.append("feature")
    for sname, params in column_substitutes.items():
        if "feature" in params:
            cols_final_addon[sname].append(params["feature"]+" AS feature")
        else:
            cols_final_addon[sname].append("feature")

    # variant column
    if len(variants) == 0:
        cols_combined.append("NULL AS variant")
    else:
        line = "CASE\n"
        for fn, variant in variants.items():
            line += indent_base+"            WHEN feature = \'"+fn+"\' THEN\n"
            if len(variant) > 0:
                line += indent_base+"              CASE\n"
                for vn, cond in variant.items():
                    line += indent_base+"                WHEN "+cond+" THEN \'"+vn+"\'\n"
                line += indent_base+"              END\n"
        line += indent_base+"          END AS variant"
        cols_combined.append(line)

    cols_zoom_thresholds.append("combined.variant AS variant")
    cols_final.append("variant")
    cols_final_symbol_only.append("variant")
    cols_final_label_only.append("variant")
    for sname, params in column_substitutes.items():
        if "variant" in params:
            cols_final_addon[sname].append(params["variant"]+" AS variant")
        else:
            cols_final_addon[sname].append("variant")

    # zoom_threshold column
    if len(way_pixels_thresholds) == 0:
        cols_combined.append("NULL AS zoom_threshold")
    else:
        zoom_threshold_groups = dict()
        for fn, params in way_pixels_thresholds.items():
            if 'way_pixels_start_all' in params:
                expr = "LEAST(zoom_from_pixelsize(SQRT(way_area/"+str(params['way_pixels_min'])+")::numeric), "+str(params['way_pixels_start_all'])+")"
                if expr not in zoom_threshold_groups:
                    zoom_threshold_groups[expr] = set()
                zoom_threshold_groups[expr].add(fn)
            else:
                expr = "zoom_from_pixelsize(SQRT(way_area/"+str(params['way_pixels_min'])+")::numeric)"
                if expr not in zoom_threshold_groups:
                    zoom_threshold_groups[expr] = set()
                zoom_threshold_groups[expr].add(fn)

        line = "CASE\n"
        for expr, fns in zoom_threshold_groups.items():
            fns_comb = "\', \'".join(sorted(fns))
            line += indent_base+"            WHEN feature IN (\'"+fns_comb+"\') THEN "+expr+"\n"
        line += indent_base+"          END AS zoom_threshold"
        cols_combined.append(line)


    # zoom level thresholds
    for attr in ['start_symbol', 'start_label']:

        zoom_threshold_feature_groups = dict()
        for fn, variant in zooms.items():
            expr = None
            if (len(variant) == 1) and (None in variant):
                if variant[None][attr] != 'NULL':
                    if fn in way_pixels_thresholds:
                        expr = "GREATEST("+str(variant[None][attr])+", zoom_threshold)"
                    else:
                        expr = str(variant[None][attr])
            else:
                has_variant = False
                for vn, params in variant.items():
                    if vn is not None:
                        if params[attr] != variant[None][attr]:
                            has_variant = True

                if not(has_variant):
                    if variant[None][attr] != 'NULL':
                        if fn in way_pixels_thresholds:
                            expr = "GREATEST("+str(variant[None][attr])+", zoom_threshold)"
                        else:
                            expr = str(variant[None][attr])

            if expr is not None:
                if expr not in zoom_threshold_feature_groups:
                    zoom_threshold_feature_groups[expr] = set()
                zoom_threshold_feature_groups[expr].add(fn)

        line = "CASE\n"
        for fn, variant in zooms.items():
            if (len(variant) > 1) or (None not in variant):
                line2 = indent_base+"          WHEN combined.feature = \'"+fn+"\' THEN\n"
                line2 += indent_base+"            CASE\n"
                has_variant = False
                for vn, params in variant.items():
                    if vn is not None:
                        if params[attr] != variant[None][attr]:
                            if fn in way_pixels_thresholds:
                                line2 += indent_base+"              WHEN combined.variant = \'"+vn+"\' THEN GREATEST("+str(params[attr])+", zoom_threshold)\n"
                            else:
                                line2 += indent_base+"              WHEN combined.variant = \'"+vn+"\' THEN "+str(params[attr])+"\n"
                            has_variant = True
                if None in variant:
                    if variant[None][attr] != 'NULL':
                        if fn in way_pixels_thresholds:
                            line2 += indent_base+"              ELSE GREATEST("+str(variant[None][attr])+", zoom_threshold)\n"
                        else:
                            line2 += indent_base+"              ELSE "+str(variant[None][attr])+"\n"
                line2 += indent_base+"            END\n"

                if has_variant:
                    line += line2

        for expr, fns in zoom_threshold_feature_groups.items():
            fns_comb = "\', \'".join(sorted(fns))
            line += indent_base+"          WHEN combined.feature IN (\'"+fns_comb+"\') THEN "+expr+"\n"

        line += indent_base+"        END AS "+attr
        cols_zoom_thresholds.append(line)
        cols_final.append(attr)
        cols_final_symbol_only.append(attr)
        cols_final_label_only.append(attr)
        for sname, params in column_substitutes.items():
            if attr in params:
                cols_final_addon[sname].append(params[attr]+" AS "+attr)
            else:
                cols_final_addon[sname].append(attr)

    cols_final.append("prio")
    cols_final_symbol_only.append("prio")
    cols_final_label_only.append("prio")
    for sname, params in column_substitutes.items():
        if "prio" in params:
            cols_final_addon[sname].append(params["prio"]+" AS prio")
        else:
            cols_final_addon[sname].append("prio")

    line = "CASE\n"
    line += indent_base+"          WHEN z(!scale_denominator!) >= start_symbol THEN\n"
    line += indent_base+"            CASE\n"
    line += indent_base+"              WHEN z(!scale_denominator!) >= start_label THEN\n"
    line += indent_base+"                \'symbol-label\'\n"
    line += indent_base+"              ELSE\n"
    line += indent_base+"                \'symbol-only\'\n"
    line += indent_base+"            END\n"
    line += indent_base+"          WHEN z(!scale_denominator!) >= start_label THEN\n"
    line += indent_base+"            \'label-only\'\n"
    line += indent_base+"        END AS vis_type"

    cols_final.append(line)

    line = "CASE\n"
    line += indent_base+"          WHEN z(!scale_denominator!) >= start_label THEN\n"
    line += indent_base+"            \'symbol-for-label\'\n"
    line += indent_base+"          ELSE\n"
    line += indent_base+"            \'symbol-only\'\n"
    line += indent_base+"        END AS vis_type"

    cols_final_symbol_only.append(line)

    line = "CASE\n"
    line += indent_base+"          WHEN z(!scale_denominator!) >= start_symbol THEN\n"
    line += indent_base+"            \'label-for-symbol\'\n"
    line += indent_base+"          ELSE\n"
    line += indent_base+"            \'label-only\'\n"
    line += indent_base+"        END AS vis_type"

    cols_final_label_only.append(line)

    for sname, params in column_substitutes.items():
        cols_final_addon[sname].append("\'"+sname+"\' AS vis_type")

    cols_zoom_thresholds.append("f.prio AS prio")
    if (len(score_attributes) == 0):
        cols_zoom_thresholds.append("NULL AS score")
    elif (len(score_attributes) == 1):
        cols_zoom_thresholds.append("\""+score_attributes[0]+"\" AS score")
    else:
        cols_zoom_thresholds.append("COALESCE(\""+("\",\"".join(score_attributes))+"\") AS score")

    # attributes
    for attr in attributes_expanded:
        if not (attr in cols_generated):

            if attr in expansion_depencencies:

                if hasattr(expansions[expansion_depencencies[attr]], 'items'):
                    for col, esql in expansions[expansion_depencencies[attr]].items():
                        esql_mod = "CASE WHEN "+expansion_depencencies[attr]+" IS NOT NULL THEN "+esql+" END"
                        cols_combined.append(esql_mod+" AS \""+col+"\"")
                        cols_zoom_thresholds.append("\""+col+"\"")
                        if not (col.startswith('tmp_')):
                            cols_final.append("\""+col+"\"")
                            cols_final_symbol_only.append("\""+col+"\"")
                            cols_final_label_only.append("\""+col+"\"")
                            for sname, params in column_substitutes.items():
                                if col in params:
                                    cols_final_addon[sname].append(params[col]+" AS \""+col+"\"")
                                else:
                                    cols_final_addon[sname].append("\""+col+"\"")
                        cols_generated.add(col)

                else:
                    for i, col in enumerate(expansions[expansion_depencencies[attr]]):
                        cols_combined.append(("\""+attr+"\"[%s] AS \""+col+"\"") % (i+1))
                        cols_zoom_thresholds.append("\""+col+"\"")
                        if not (col.startswith('tmp_')):
                            cols_final.append("\""+col+"\"")
                            cols_final_symbol_only.append("\""+col+"\"")
                            cols_final_label_only.append("\""+col+"\"")
                            for sname, params in column_substitutes.items():
                                if col in params:
                                    cols_final_addon[sname].append(params[col]+" AS \""+col+"\"")
                                else:
                                    cols_final_addon[sname].append("\""+col+"\"")
                        cols_generated.add(col)
            else:
                cols_combined.append("\""+attr+"\"")
                cols_zoom_thresholds.append("\""+attr+"\"")
                if not (attr.startswith('tmp_')):
                    cols_final.append("\""+attr+"\"")
                    cols_final_symbol_only.append("\""+attr+"\"")
                    cols_final_label_only.append("\""+attr+"\"")
                    for sname, params in column_substitutes.items():
                        if attr in params:
                            cols_final_addon[sname].append(params[attr]+" AS \""+attr+"\"")
                        else:
                            cols_final_addon[sname].append("\""+attr+"\"")
                cols_generated.add(attr)

    cols_combined.append("way_area")
    cols_combined.append("way_length")
    cols_combined.append("way_pixels")
    cols_zoom_thresholds.append("way_area")
    cols_zoom_thresholds.append("way_length")
    cols_zoom_thresholds.append("way_pixels")
    cols_final.append("way_area")
    cols_final.append("way_length")
    cols_final.append("way_pixels")
    cols_final_symbol_only.append("way_area")
    cols_final_symbol_only.append("way_length")
    cols_final_symbol_only.append("way_pixels")
    cols_final_label_only.append("way_area")
    cols_final_label_only.append("way_length")
    cols_final_label_only.append("way_pixels")
    for sname, params in column_substitutes.items():
        if "way_area" in params:
            cols_final_addon[sname].append(params["way_area"]+" AS way_area")
        else:
            cols_final_addon[sname].append("way_area")
        if "way_length" in params:
            cols_final_addon[sname].append(params["way_length"]+" AS way_length")
        else:
            cols_final_addon[sname].append("way_length")
        if "way_pixels" in params:
            cols_final_addon[sname].append(params["way_pixels"]+" AS way_pixels")
        else:
            cols_final_addon[sname].append("way_pixels")

    print (indent_base+"(SELECT", file=file_mml)
    print (indent_base+"    *", file=file_mml)
    print (indent_base+"  FROM", file=file_mml)
    print (indent_base+"  ( -- this subselect (with CTE) allows splitting and where necessary duplicating features for separate rendering of symbol and label", file=file_mml)
    print (indent_base+"    WITH zoom_thresholds AS", file=file_mml)
    print (indent_base+"    (SELECT -- this subselect generates the zoom level threshols and allows filtering for them", file=file_mml)
    print (indent_base+"        "+((",\n"+indent_base+"        ").join(cols_zoom_thresholds)), file=file_mml)
    print (indent_base+"      FROM", file=file_mml)
    print (indent_base+"      (SELECT -- this subselect generates the variant and zoom_threshold columns and expands arrays", file=file_mml)

    if (snap_features_even or snap_features_odd):
        print (indent_base+"          CASE", file=file_mml)

        if snap_features_even:
            ft_snap_even = "\'"+("\', \'".join(sorted(snap_features_even)))+"\'"
            print (indent_base+"            WHEN feature IN ("+ft_snap_even+") THEN", file=file_mml)
            print (indent_base+"              ST_SnapToGrid(", file=file_mml)
            print (indent_base+"                way,", file=file_mml)
            print (indent_base+"                NULLIF(!scale_denominator!*0.001*0.28,0), NULLIF(!scale_denominator!*0.001*0.28,0))", file=file_mml)

        if snap_features_odd:
            ft_snap_odd = "\'"+("\', \'".join(sorted(snap_features_odd)))+"\'"
            print (indent_base+"            WHEN feature IN ("+ft_snap_odd+") THEN", file=file_mml)
            print (indent_base+"              ST_SnapToGrid(", file=file_mml)
            print (indent_base+"                way,", file=file_mml)
            print (indent_base+"                0.5*NULLIF(!scale_denominator!*0.001*0.28,0), 0.5*NULLIF(!scale_denominator!*0.001*0.28,0),", file=file_mml)
            print (indent_base+"                NULLIF(!scale_denominator!*0.001*0.28,0), NULLIF(!scale_denominator!*0.001*0.28,0))", file=file_mml)

        print (indent_base+"            ELSE way", file=file_mml)
        print (indent_base+"          END AS way,", file=file_mml)
    else:
        print (indent_base+"          way,", file=file_mml)

    print (indent_base+"          "+((",\n"+indent_base+"          ").join(cols_combined)), file=file_mml)
    print (indent_base+"        FROM", file=file_mml)
    print (indent_base+"        (SELECT -- This subselect generates the feature column allows filtering on it", file=file_mml)
    print (indent_base+"            way,", file=file_mml)

    for attr, params in default_attributes.items():
        if 'sql' in params:
            print (indent_base+"            "+params['sql']+" AS \""+attr+"\",", file=file_mml)
        else:
            print (indent_base+"            \""+attr+"\",", file=file_mml)

    print (indent_base+"            COALESCE(", file=file_mml)

    feature_lines = list()

    for fkey, conds in feature_types.items():
        # feature keys are all put into distinct columns in the inner query so we can use them as such here
        key = "\""+fkey+"\""

        for cond, fvals in conds.items():
            vals_plain = set()
            for fval, fvariants in fvals.items():

                if fval is not None:
                    if fval.find("/") >= 0:
                        (fval_real, fval_mod) = fval.split('/')
                    else:
                        fval_real = fval
                        fval_mod = None

                for variant in fvariants:
                    if variant is None:
                        if fval_mod is None:
                            if fval is not None:
                                vals_plain.add(fval_real)
                            else: # key only feature
                                line = indent_base+"              \'"+fkey+"\' || CASE WHEN "+cond+" THEN \'\' END"
                                feature_lines.append(line)
                                # variants have priority
                                for fn2, variant2 in variants.items():
                                    if fn2 == fkey:
                                        for vn in variant2:
                                            feature_priorities.append(fkey+"+"+vn)
                                feature_priorities.append(fkey)
                        elif fval is not None:
                            line = indent_base+"              \'"+fkey+"_\' || CASE WHEN "+key+" IN (\'"+fval_real+"\') AND "+cond+" THEN \'"+fval+"\' END"
                            feature_lines.append(line)
                            # variants have priority
                            for fn2, variant2 in variants.items():
                                if fn2 == fkey+"_"+fval:
                                    for vn in variant2:
                                        feature_priorities.append(fkey+"_"+fval+"+"+vn)
                            feature_priorities.append(fkey+"_"+fval)
                        else:
                            line = indent_base+"              \'"+fkey+"_\' || CASE WHEN "+cond+" THEN \'/"+fval_mod+"\' END"
                            feature_lines.append(line)
                            # variants have priority
                            for fn2, variant2 in variants.items():
                                if fn2 == fkey:
                                    for vn in variant2:
                                        feature_priorities.append(fkey+"/"+fval_mod+"+"+vn)
                            feature_priorities.append(fkey)
                    else:
                        if fval is not None:
                            line = indent_base+"              \'"+fkey+"_\' || CASE WHEN "+key+" IN (\'"+fval_real+"\') AND "+cond+" THEN \'"+fval+"_"+variant+"\' END"
                            feature_lines.append(line)
                            # variants have priority
                            for fn2, variant2 in variants.items():
                                if fn2 == fkey+"_"+fval:
                                    for vn in variant2:
                                        feature_priorities.append(fkey+"_"+fval+"_"+variant+"+"+vn)
                            feature_priorities.append(fkey+"_"+fval+"_"+variant)
                        else:
                            line = indent_base+"              \'"+fkey+"_\' || CASE WHEN "+cond+" THEN \'"+variant+"\' END"
                            feature_lines.append(line)
                            # variants have priority
                            for fn2, variant2 in variants.items():
                                if fn2 == fkey:
                                    for vn in variant2:
                                        feature_priorities.append(fkey+"_"+variant+"+"+vn)
                            feature_priorities.append(fkey+"_"+variant)

            if len(vals_plain) > 0:
                vals = "\'"+("\', \'".join(sorted(vals_plain)))+"\'"
                line = indent_base+"              \'"+fkey+"_\' || CASE WHEN "+key+" IN ("+vals+") AND "+cond+" THEN "+key+" END"
                feature_lines.append(line)
                for fval, fvariants in fvals.items():
                    if variant is None:
                        # variants have priority
                        for fn2, variant2 in variants.items():
                            if fn2 == fkey+"_"+fval:
                                for vn in variant2:
                                    feature_priorities.append(fkey+"_"+fval+"+"+vn)
                        feature_priorities.append(fkey+"_"+fval)

    print (",\n".join(feature_lines), file=file_mml)
    print (indent_base+"            ) AS feature,", file=file_mml)

    for attr, params in attributes.items():
        for sql, params2 in params.items():
            fconds_all = None
            have_cond = False
            for cond, params3 in params2.items():
                fconds = None
                for fkey, fvals in params3.items():
                    vals_plain = set()
                    for fval, variants in fvals.items():
                        if fval is not None:
                            vals_plain.add(fval)
                        #for variant in variants.items():
                        #    if variant is not None:

                    if len(vals_plain) > 0:
                        vals = "\'"+("\', \'".join(sorted(vals_plain)))+"\'"
                        fcond = "\""+fkey+"\" IN ("+vals+")"
                        if fconds is None:
                            fconds = fcond
                        else:
                            fconds = fconds+" OR "+fcond
                if fconds_all is None:
                    if (cond is not None) and (cond != ''):
                        fconds_all = "(("+fconds+") AND "+cond+")"
                        have_cond = True
                    else:
                        fconds_all = fconds
                else:
                    if (cond is not None) and (cond != ''):
                        fconds_all += " OR\n"+indent_base+"                    (("+fconds+") AND "+cond+")"
                        have_cond = True
                    else:
                        fconds_all += " OR\n"+indent_base+"                    ("+fconds+")"

            if (sql is None) or (sql == ''):
                if not(have_cond):
                    print (indent_base+"            \""+attr+"\",", file=file_mml)
                else:
                    print (indent_base+"            CASE", file=file_mml)
                    print (indent_base+"              WHEN "+fconds_all+" THEN \""+attr+"\"", file=file_mml)
                    print (indent_base+"            END AS \""+attr+"\",", file=file_mml)
            else:

                if not(have_cond):
                    # this is a heuristic if to make this column conditional or not:
                    # if the sql code is longer than the condition make it conditional, otherwise always evaluate the sql
                    if fconds_all is None:
                        sqlx = ("\n"+indent_base+"            ").join(sql.splitlines())
                        print (indent_base+"            "+sqlx+" AS \""+attr+"\",", file=file_mml)
                    elif len(sql) > len(fconds_all):
                        sqlx = ("\n"+indent_base+"                ").join(sql.splitlines())
                        print (indent_base+"            CASE", file=file_mml)
                        print (indent_base+"              WHEN "+fconds_all+" THEN\n"+indent_base+"                "+sqlx, file=file_mml)
                        print (indent_base+"            END AS \""+attr+"\",", file=file_mml)
                    else:
                        sqlx = ("\n"+indent_base+"            ").join(sql.splitlines())
                        print (indent_base+"            "+sqlx+" AS \""+attr+"\",", file=file_mml)
                else:
                    sqlx = ("\n"+indent_base+"                ").join(sql.splitlines())
                    print (indent_base+"            CASE", file=file_mml)
                    print (indent_base+"              WHEN "+fconds_all+" THEN\n"+indent_base+"                "+sqlx, file=file_mml)
                    print (indent_base+"            END AS \""+attr+"\",", file=file_mml)

    print (indent_base+"            way_length,", file=file_mml)
    print (indent_base+"            way_area,", file=file_mml)
    print (indent_base+"            COALESCE(way_area/NULLIF(POW(!scale_denominator!*0.001*0.28,2),0), 0) AS way_pixels", file=file_mml)
    print (indent_base+"          FROM", file=file_mml)

    print (indent_base+"          (", file=file_mml)
    if have_points:
        print (indent_base+"            SELECT", file=file_mml)
        print (indent_base+"                way,", file=file_mml)
        print (indent_base+"                {},".format((",\n"+indent_base+"                ").join(sorted(columns_points))), file=file_mml)
        print (indent_base+"                tags,", file=file_mml)
        print (indent_base+"                NULL AS way_length,", file=file_mml)
        print (indent_base+"                NULL AS way_area", file=file_mml)
        print (indent_base+"              FROM planet_osm_point", file=file_mml)
        print (indent_base+"              WHERE way && !bbox! AND", file=file_mml)
        print (indent_base+"                CASE", file=file_mml)

        filter_first = True
        kvs = dict()

        for z in sorted(prefilters_points):
            if filter_first:
                print (indent_base+"                  WHEN z(!scale_denominator!) <= "+str(z-1)+" THEN FALSE", file=file_mml)
                filter_first = False

            for filter_key, filter_vals in prefilters_points[z].items():
                if filter_key not in kvs:
                    kvs[filter_key] = set()
                for v in filter_vals:
                    if v is None:
                        kvs[filter_key].add(v)
                    else:
                        v_base = v.split("/")[0]
                        if v_base not in kvs[filter_key]:
                            kvs[filter_key].add(v_base)

            fconds_all = None

            for filter_key, filter_vals in kvs.items():
                if filter_key in columns_points_db:
                    filter_col = "\""+filter_key+"\""
                else:
                    filter_col = "(tags->\'"+filter_key+"\')"

                fconds_nowp = None

                if (len(filter_vals) > 0) and (None not in filter_vals):
                    vals = "\'"+("\', \'".join(sorted(filter_vals)))+"\'"
                    fconds_nowp = filter_col+" IN ("+vals+")"

                else:
                    fconds_nowp = filter_col+" IS NOT NULL"

                if fconds_nowp is not None:
                    if fconds_all is None:
                        fconds_all = ""
                    else:
                        fconds_all += " OR\n"+indent_base+"                    "
                    fconds_all += "("+fconds_nowp+")"

            if fconds_all is not None:
                if z == sorted(prefilters_points)[-1]:
                    print (indent_base+"                  ELSE", file=file_mml)
                else:
                    print (indent_base+"                  WHEN z(!scale_denominator!) <= "+str(z)+" THEN", file=file_mml)
                print (indent_base+"                    "+fconds_all, file=file_mml)

        print (indent_base+"                END", file=file_mml)

    if have_lines:
        if have_points:
            print (indent_base+"            UNION ALL", file=file_mml)
        print (indent_base+"            SELECT", file=file_mml)
        print (indent_base+"                ST_LineInterpolatePoint(way, 0.5) AS way,", file=file_mml)
        print (indent_base+"                {},".format((",\n"+indent_base+"                ").join(sorted(columns_lines))), file=file_mml)
        print (indent_base+"                tags,", file=file_mml)
        print (indent_base+"                ST_Length(way) AS way_length,", file=file_mml)
        print (indent_base+"                NULL AS way_area", file=file_mml)
        print (indent_base+"              FROM planet_osm_line", file=file_mml)
        print (indent_base+"              WHERE way && !bbox! AND", file=file_mml)
        print (indent_base+"                CASE", file=file_mml)

        filter_first = True
        kvs = dict()

        for z in sorted(prefilters_lines):
            if filter_first:
                print (indent_base+"                  WHEN z(!scale_denominator!) <= "+str(z-1)+" THEN FALSE", file=file_mml)
                filter_first = False

            for filter_key, filter_vals in prefilters_lines[z].items():
                if filter_key not in kvs:
                    kvs[filter_key] = set()
                for v in filter_vals:
                    if v is None:
                        kvs[filter_key].add(v)
                    else:
                        v_base = v.split("/")[0]
                        if v_base not in kvs[filter_key]:
                            kvs[filter_key].add(v_base)

            fconds_all = None

            for filter_key, filter_vals in kvs.items():
                if filter_key in columns_lines_db:
                    filter_col = "\""+filter_key+"\""
                else:
                    filter_col = "(tags->\'"+filter_key+"\')"

                fconds_nowp = None

                if (len(filter_vals) > 0) and (None not in filter_vals):
                    vals = "\'"+("\', \'".join(sorted(filter_vals)))+"\'"
                    fconds_nowp = filter_col+" IN ("+vals+")"

                else:
                    fconds_nowp = filter_col+" IS NOT NULL"

                if fconds_nowp is not None:
                    if fconds_all is None:
                        fconds_all = ""
                    else:
                        fconds_all += " OR\n"+indent_base+"                    "
                    fconds_all += "("+fconds_nowp+")"

            if fconds_all is not None:
                if z == sorted(prefilters_lines)[-1]:
                    print (indent_base+"                  ELSE", file=file_mml)
                else:
                    print (indent_base+"                  WHEN z(!scale_denominator!) <= "+str(z)+" THEN", file=file_mml)
                print (indent_base+"                    "+fconds_all, file=file_mml)

        print (indent_base+"                END", file=file_mml)

    if have_polygons:
        if have_points or have_lines:
            print (indent_base+"            UNION ALL", file=file_mml)
        print (indent_base+"            SELECT", file=file_mml)
        print (indent_base+"                ST_PointOnSurface(way) AS way,", file=file_mml)
        print (indent_base+"                {},".format((",\n"+indent_base+"                ").join(sorted(columns_polygons))), file=file_mml)
        print (indent_base+"                tags,", file=file_mml)
        print (indent_base+"                NULL AS way_length,", file=file_mml)
        print (indent_base+"                way_area", file=file_mml)
        print (indent_base+"              FROM planet_osm_polygon", file=file_mml)
        print (indent_base+"              WHERE way && !bbox!", file=file_mml)
        print (indent_base+"                AND way_area < 768000*POW(!scale_denominator!*0.001*0.28,2)", file=file_mml)
        if have_convex_hulls:
            for attr, vals_plain in convex_hull_features.items():
                if attr in columns_polygons_db:
                    col = "\""+attr+"\""
                else:
                    col = "tags->\'"+attr+"\'"
                vals = "\'"+("\', \'".join(sorted(vals_plain)))+"\'"
                print (indent_base+"                AND ("+col+" NOT IN ("+vals+") OR "+col+" IS NULL)", file=file_mml)
        print (indent_base+"                AND", file=file_mml)
        print (indent_base+"                CASE", file=file_mml)

        filter_first = True
        kvs = dict()

        for z in sorted(prefilters_polygons):
            if filter_first:
                print (indent_base+"                  WHEN z(!scale_denominator!) <= "+str(z-1)+" THEN FALSE", file=file_mml)
                filter_first = False

            for filter_key, filter_vals in prefilters_polygons[z].items():
                if filter_key not in kvs:
                    kvs[filter_key] = set()
                for v in filter_vals:
                    if v is None:
                        kvs[filter_key].add(v)
                    else:
                        v_base = v.split("/")[0]
                        if v_base not in kvs[filter_key]:
                            kvs[filter_key].add(v_base)

            fconds_all = None

            for filter_key, filter_vals in kvs.items():
                if filter_key in columns_polygons_db:
                    filter_col = "\""+filter_key+"\""
                else:
                    filter_col = "(tags->\'"+filter_key+"\')"

                fconds_wp = None
                fconds_nowp = None

                if (len(filter_vals) > 0) and (None not in filter_vals):
                    vals_wp = set()
                    vals_nowp = set()
                    wpmin = 1000000000
                    for fval in filter_vals:
                        has_wp = False
                        if filter_key+"="+fval in way_pixels_thresholds_kv:
                            if way_pixels_thresholds_kv[filter_key+"="+fval]['way_pixels_start_all'] > z:
                                if way_pixels_thresholds_kv[filter_key+"="+fval]['way_pixels_min'] < wpmin:
                                    wpmin = way_pixels_thresholds_kv[filter_key+"="+fval]['way_pixels_min']
                                vals_wp.add(fval)
                                has_wp = True
                        if not(has_wp):
                            vals_nowp.add(fval)

                    if len(vals_wp) > 0:
                        vals = "\'"+("\', \'".join(sorted(vals_wp)))+"\'"
                        fconds_wp = filter_col+" IN ("+vals+")"
                        fconds_wp = fconds_wp+" AND way_area >= "+str(wpmin)+"*NULLIF(POW(!scale_denominator!*0.001*0.28,2),0)"

                    if len(vals_nowp) > 0:
                        vals = "\'"+("\', \'".join(sorted(vals_nowp)))+"\'"
                        fconds_nowp = filter_col+" IN ("+vals+")"

                else:
                    fconds_nowp = filter_col+" IS NOT NULL"

                    if filter_key in way_pixels_thresholds_kv:
                        if way_pixels_thresholds_kv[filter_key]['way_pixels_start_all'] > z:
                            fconds_nowp = fconds_nowp+" AND way_area >= "+str(way_pixels_thresholds_kv[filter_key]['way_pixels_min'])+"*NULLIF(POW(!scale_denominator!*0.001*0.28,2),0)"

                if fconds_wp is not None:
                    if fconds_all is None:
                        fconds_all = ""
                    else:
                        fconds_all += " OR\n"+indent_base+"                    "
                    fconds_all += "("+fconds_wp+")"
                if fconds_nowp is not None:
                    if fconds_all is None:
                        fconds_all = ""
                    else:
                        fconds_all += " OR\n"+indent_base+"                    "
                    fconds_all += "("+fconds_nowp+")"

            if fconds_all is not None:
                if z == sorted(prefilters_polygons)[-1]:
                    print (indent_base+"                  ELSE", file=file_mml)
                else:
                    print (indent_base+"                  WHEN z(!scale_denominator!) <= "+str(z)+" THEN", file=file_mml)
                print (indent_base+"                    "+fconds_all, file=file_mml)

        print (indent_base+"                END", file=file_mml)

    if have_convex_hulls:
        if have_points or have_lines or have_polygons:
            print (indent_base+"            UNION ALL", file=file_mml)
        print (indent_base+"            SELECT -- This is separately the archipelagos with the convex hull geometry processing", file=file_mml)
        print (indent_base+"                ST_ClosestPoint(oway,ST_PointOnSurface(way)) AS way,", file=file_mml)
        print (indent_base+"                {},".format((",\n"+indent_base+"                ").join(sorted(columns_polygons))), file=file_mml)
        print (indent_base+"                tags,", file=file_mml)
        print (indent_base+"                NULL AS way_length,", file=file_mml)
        print (indent_base+"                ST_Area(ST_Envelope(oway)) AS way_area", file=file_mml)
        print (indent_base+"              FROM", file=file_mml)
        print (indent_base+"                (SELECT", file=file_mml)
        print (indent_base+"                    (ST_Dump(", file=file_mml)
        print (indent_base+"                      -- this detects multipolygons extending over the 180 degree meridian to split them", file=file_mml)
        print (indent_base+"                      CASE WHEN (ST_XMax(way)-ST_XMin(way)) < 20037508 THEN", file=file_mml)
        print (indent_base+"                        ST_ConvexHull(way)", file=file_mml)
        print (indent_base+"                      ELSE", file=file_mml)
        print (indent_base+"                        -- splits the polygon into the two hemisphere parts", file=file_mml)
        print (indent_base+"                        ST_Collect(", file=file_mml)
        print (indent_base+"                          ST_ConvexHull(ST_Intersection(way, ST_SetSRID(ST_GeomFromText('POLYGON((-20037508 -20037508, -20037508 20037508, 0  20037508, 0 -20037508, -20037508 -20037508))'), 3857))),", file=file_mml)
        print (indent_base+"                          ST_ConvexHull(ST_Intersection(way, ST_SetSRID(ST_GeomFromText('POLYGON((0 -20037508, 0 20037508, 20037508 20037508, 20037508 -20037508, 0 -20037508))'), 3857)))", file=file_mml)
        print (indent_base+"                        )", file=file_mml)
        print (indent_base+"                      END", file=file_mml)
        print (indent_base+"                    )).geom AS way,", file=file_mml)
        print (indent_base+"                    way AS oway,", file=file_mml)
        print (indent_base+"                    {},".format((",\n"+indent_base+"                    ").join(sorted(columns_polygons_direct))), file=file_mml)
        print (indent_base+"                    tags", file=file_mml)
        print (indent_base+"                  FROM planet_osm_polygon", file=file_mml)
        print (indent_base+"                  WHERE way && !bbox!", file=file_mml)
        print (indent_base+"                    AND building IS NULL", file=file_mml)

        for attr, vals_plain in convex_hull_features.items():
            if attr in columns_polygons_db:
                col = "\""+attr+"\""
            else:
                col = "tags->\'"+attr+"\'"
            vals = "\'"+("\', \'".join(sorted(vals_plain)))+"\'"
            print (indent_base+"                    AND "+col+" IN ("+vals+")", file=file_mml)

        print (indent_base+"                ) AS archipelagos", file=file_mml)

    print (indent_base+"          ) AS points_all", file=file_mml)

    print (indent_base+"        ) AS features", file=file_mml)
    print (indent_base+"        WHERE feature IS NOT NULL", file=file_mml)

    print (indent_base+"      ) AS combined", file=file_mml)

    print (indent_base+"      JOIN (VALUES", file=file_mml)

    for i, fn in enumerate(feature_priorities):
        if (i < len(feature_priorities)-1):
            print (indent_base+"          (\'"+fn+"\', "+str(i+1)+"),", file=file_mml)
        else:
            print (indent_base+"          (\'"+fn+"\', "+str(i+1)+")", file=file_mml)

    print (indent_base+"        ) AS f (feature, prio)", file=file_mml)
    print (indent_base+"        ON f.feature = CONCAT(combined.feature, '+'||combined.variant)", file=file_mml)

    print (indent_base+"    ) -- end of zoom_thresholds CTE", file=file_mml)

    if labels_symbols_mode == 'combined':
        print (indent_base+"    SELECT -- this is the combined symbol/label features - only on those zoom levels where they are shown", file=file_mml)
        print (indent_base+"        "+((",\n"+indent_base+"        ").join(cols_final)), file=file_mml)
        print (indent_base+"      FROM zoom_thresholds", file=file_mml)
        print (indent_base+"      WHERE z(!scale_denominator!) >= LEAST(start_symbol, start_label)", file=file_mml)
    else:
        print (indent_base+"    SELECT -- this is the symbols features only", file=file_mml)
        print (indent_base+"        "+((",\n"+indent_base+"        ").join(cols_final_symbol_only)), file=file_mml)
        print (indent_base+"      FROM zoom_thresholds", file=file_mml)
        print (indent_base+"      WHERE z(!scale_denominator!) >= start_symbol", file=file_mml)
        print (indent_base+"    UNION ALL", file=file_mml)
        print (indent_base+"    SELECT -- this is the labels features only", file=file_mml)
        print (indent_base+"        "+((",\n"+indent_base+"        ").join(cols_final_label_only)), file=file_mml)
        print (indent_base+"      FROM zoom_thresholds", file=file_mml)
        print (indent_base+"      WHERE z(!scale_denominator!) >= start_label", file=file_mml)

    for sname, params in column_substitutes.items():
        print (indent_base+"    UNION ALL", file=file_mml)
        print (indent_base+"    SELECT -- column substituted "+sname, file=file_mml)
        print (indent_base+"        "+((",\n"+indent_base+"        ").join(cols_final_addon[sname])), file=file_mml)
        print (indent_base+"      FROM zoom_thresholds", file=file_mml)
        if sname in addon_columns_required:
            print (indent_base+"      WHERE \""+addon_columns_required[sname]+"\" IS NOT NULL", file=file_mml)
            print (indent_base+"        AND z(!scale_denominator!) >= start_symbol", file=file_mml)
        else:
            print (indent_base+"      WHERE z(!scale_denominator!) >= start_symbol", file=file_mml)

    print (indent_base+"  ) AS final", file=file_mml)

    print (indent_base+"  ORDER BY", file=file_mml)
    if labels_symbols_mode != 'combined':
        print (indent_base+"    (CASE WHEN vis_type IN ('label-for-symbol') THEN 2 ELSE 1 END) ASC, -- put the addon labels for symbols last", file=file_mml)
    print (indent_base+"    (CASE", file=file_mml)
    print (indent_base+"      WHEN start_symbol IS NULL THEN start_label", file=file_mml)
    print (indent_base+"      WHEN start_label IS NULL THEN start_symbol", file=file_mml)
    print (indent_base+"      ELSE 0.5*(start_symbol+start_label)", file=file_mml)
    print (indent_base+"    END) ASC NULLS LAST,", file=file_mml)
    print (indent_base+"    prio ASC NULLS LAST,", file=file_mml)
    print (indent_base+"    way_pixels DESC NULLS LAST,", file=file_mml)
    print (indent_base+"    way_length DESC NULLS LAST,", file=file_mml)
    print (indent_base+"    char_length(name) DESC NULLS LAST,", file=file_mml)
    i = 2;
    if (len(column_substitutes) > 0):
        print (indent_base+"    name DESC NULLS LAST,", file=file_mml)
        print (indent_base+"    (CASE -- put the column substituted types after the normal ones", file=file_mml)
        for sname, params in column_substitutes.items():
            print (indent_base+"      WHEN vis_type = '"+sname+"' THEN "+str(i), file=file_mml)
            i += 1
        print (indent_base+"      ELSE 1", file=file_mml)
        print (indent_base+"    END) ASC", file=file_mml)
    else:
        print (indent_base+"    name DESC NULLS LAST", file=file_mml)

    print (indent_base+") AS "+config["settings"].get("layer").replace("-", "_"), file=file_mml)

    print ("    properties:", file=file_mml)
    min_zoom = 10
    if 'min_zoom' in config['settings']:
        min_zoom = config['settings']['min_zoom']
    print ("      minzoom: "+str(min_zoom), file=file_mml)
    file_mml.close()

    if 'gmic' in config['settings']:
        print ("  gmic: \'"+config['settings']['gmic']+"\';", file=file_mss)
    if 'gmic-after' in config['settings']:
        print ("  gmic-after: \'"+config['settings']['gmic-after']+"\';", file=file_mss)

    print ("}", file=file_mss)
    file_mss.close()

    if not(opts.nopreviews):

        if contactsheet_files:

            logging.info("Assembling contact sheet...")

            sys.stdout.flush()

            if subprocess.call(
                ["montage" ] + contactsheet_files +
                ["-tile", "16x", "-geometry", "1x1+4+4<", "-background", "#f2efe9",
                 "doc/contactsheet_symbols.png"],
                stderr=subprocess.STDOUT) != 0:
                logging.warning("'montage' error: contaxt sheet generation failed")

            sys.stdout.flush()

        if 'addon_mss' in config["settings"]:

            contactsheet_files_all = []

            for mss in config["settings"]['addon_mss']:

                contactsheet_files2 = []

                lnm = os.path.splitext(os.path.basename(mss))[0]

                fin = open(mss, "rt")

                for line in fin:

                    if "marker-file" in line:
                        if "url(" in line:

                            m = re.match(r".*url\([\"']*([^\"')]+)[\"']*\)", line)

                            fnm = m.group(1)
                            fnm_base = os.path.splitext(os.path.basename(fnm))[0]
                            fnm_preview = basedir+"/previews/addon_"+fnm_base+'.png'

                            if os.path.exists(fnm):
                                if not(fnm_preview in contactsheet_files_all):
                                    logging.info("Rasterizing preview of "+fnm_base)
                                    svg_convert(fnm, fnm_preview, True, opts.inkscape, opts.rsvg, opts.dpi)
                                    if os.path.exists(fnm_preview):
                                        contactsheet_files2.append(fnm_preview)
                                        contactsheet_files_all.append(fnm_preview)

                fin.close()

                if contactsheet_files2:

                    logging.info("Assembling addon symbols contact sheet for %s..." % lnm)

                    sys.stdout.flush()

                    if subprocess.call(
                        ["montage" ] + contactsheet_files2 +
                        ["-tile", "16x", "-geometry", "1x1+4+4<", "-background", "#f2efe9",
                         "doc/contactsheet_symbols_"+lnm+".png"],
                        stderr=subprocess.STDOUT) != 0:
                        logging.warning("'montage' error: contaxt sheet generation failed")

                    sys.stdout.flush()


            contactsheet_files2 = []

            for filename in os.listdir("symbols/currencies"):
                fnm = os.path.join("symbols/currencies", filename)
                if os.path.isfile(fnm):
                    fnm_base = os.path.splitext(os.path.basename(fnm))[0]
                    fnm_preview = basedir+"/previews/currency_"+fnm_base+'.png'
                    if not(fnm_preview in contactsheet_files2):
                        logging.info("Rasterizing preview of "+fnm_base)
                        svg_convert(fnm, fnm_preview, True, opts.inkscape, opts.rsvg, opts.dpi)
                        if os.path.exists(fnm_preview):
                            contactsheet_files2.append(fnm_preview)

            if contactsheet_files2:

                logging.info("Assembling currency symbols contact sheet...")

                sys.stdout.flush()

                if subprocess.call(
                    ["montage" ] + contactsheet_files2 +
                    ["-tile", "16x", "-geometry", "1x1+4+4<", "-background", "#f2efe9",
                     "doc/contactsheet_symbols_currencies.png"],
                    stderr=subprocess.STDOUT) != 0:
                    logging.warning("'montage' error: contaxt sheet generation failed")

                sys.stdout.flush()


if __name__ == "__main__":
    main()
