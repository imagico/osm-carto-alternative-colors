#!/usr/bin/env python3
# ---------------------------------------------------------------------------
#  generate_line_patterns.py
#
#  generates colored SVG files from plain color sources for line patterns
#  used by the style based on definition in a YAML file (line_patterns.yaml)
#
#  Copyright 2012-2023 by OSM-Carto contributors
#  Copyright 2023 by Christoph Hormann <chris_hormann@gmx.de>
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

indent_base = "        "

def load_settings(config_file):
    """Read the settings from YAML."""
    return yaml.safe_load(open(config_file, 'r'))

def svg_convert(fin, fout, inkscape, dpi):

    sys.stdout.flush()

    if inkscape:
        if dpi > 0:
            params = ["inkscape", "-z", "--export-png="+fout, "--export-dpi="+dpi, fin]
        else:
            params = ["inkscape", "-z", "--export-png="+fout, fin]

        if subprocess.call(params, stderr=subprocess.STDOUT) != 0:
            logging.warning("inkscape' error: SVG conversion failed")

        if not(os.path.exists(fout)):
            logging.warning("inkscape' error: SVG conversion failed")
    else:
        if int(dpi) > 0:
            params = ["convert", "-background", "none", "-density", dpi, fin, fout]
        else:
            params = ["convert", "-background", "none", fin, fout]

        if subprocess.call(params, stderr=subprocess.STDOUT) != 0:
            logging.warning("convert' error: SVG conversion failed")

        if not(os.path.exists(fout)):
            logging.warning("convert' error: SVG conversion failed")

    sys.stdout.flush()

def colorize_svg(source, basedir, symbol_name, color):
    with open(source, 'rt') as fin:
        with open(basedir + "/colored/" + symbol_name + '.svg', 'wt') as fout:
            logging.info("Colorizing symbol for {name} ({col})...".format(name=symbol_name, col=color))
            for line in fin:
                fout.write(line.replace('#000000', color))


def svg_from_sql(conn, basedir, symbol_name, sql, sql_width, sql_height, line_width, color):
    with conn.cursor() as cur:
        cur.execute('''SELECT ST_AsSVG(ST_Translate({sql}, 0.0, -0.5*({height}))) AS svg, ({width}) AS width, ({height}) AS height'''.format(sql=sql.replace('!line_width!', str(line_width)), width=sql_width.replace('!line_width!', str(line_width)), height=sql_height.replace('!line_width!', str(line_width))))
        results = cur.fetchone()
        if results is not None:
            with open(basedir + "/colored/" + symbol_name + '.svg', 'wt') as fout:
                logging.info("Generating symbol for {name} ({col}) from SQL...".format(name=symbol_name, col=color))
                print (('''<?xml version="1.0" encoding="UTF-8" standalone="no"?>\n'''
                        '''<svg\n'''
                        '''   version="1.1"\n'''
                        '''   height="{height}"\n'''
                        '''   width="{width}"\n'''
                        '''   xmlns="http://www.w3.org/2000/svg"\n'''
                        '''   xmlns:svg="http://www.w3.org/2000/svg">\n'''
                        '''  <path\n'''
                        '''     d="{path}"\n'''
                        '''     style="fill:{color}" />\n'''
                        '''  <rect\n'''
                        '''     width="{width}"\n'''
                        '''     height="{height}"\n'''
                        '''     x="0"\n'''
                        '''     y="0"\n'''
                        '''     style="fill:none;fill-opacity:1" />\n'''
                        '''</svg>\n''').format(path=results[0], width=results[1], height=results[2], color=color), file=fout)
        else:
                logging.warn("Error generating symbol for {name} ({col}) from SQL...".format(name=symbol_name, col=color))


def generate_preview(basedir, symbol_name, opts):

    svg_convert(basedir+"/colored/"+symbol_name + '.svg', basedir+"/previews/"+symbol_name + '.tmp.png', opts.inkscape, opts.dpi)

    if os.path.exists(basedir+"/previews/"+symbol_name + '.tmp.png'):

        sys.stdout.flush()

        if subprocess.call(
            ["montage", basedir+"/previews/"+symbol_name + ".tmp.png",
             "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone",
             "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone",
             "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone",
             "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone",
             "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone",
             "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone", "+clone",
             "-tile", "x1", "-geometry", "+0+0", "-background", "#f2efe9",
             basedir+"/previews/"+symbol_name + ".tmp2.png"],
             stderr=subprocess.STDOUT) != 0:
            logging.warning("'montage' error: preview generation failed")

        if subprocess.call(
            ["convert", basedir+"/previews/"+symbol_name + ".tmp2.png",
             "-gravity", "center", "-background", "#f2efe9", "-extent", "180x32",
             basedir+"/previews/"+symbol_name + ".png"],
             stderr=subprocess.STDOUT) != 0:
            logging.warning("'convert' error: preview generation failed")

        os.remove(basedir+"/previews/"+symbol_name + ".tmp.png")
        os.remove(basedir+"/previews/"+symbol_name + ".tmp2.png")



def main():
    parser = argparse.ArgumentParser(description='Generates colored line pattern symbols')

    parser.add_argument("-c", "--config", action="store", default="line_patterns.yaml",
                        help="Name of configuration file (default line_patterns.yaml)")

    parser.add_argument("-d", "--database", action="store",
                        help="Override database name to connect to")
    parser.add_argument("-H", "--host", action="store",
                        help="Override database server host or socket directory")
    parser.add_argument("-p", "--port", action="store",
                        help="Override database server port")
    parser.add_argument("-U", "--username", action="store",
                        help="Override database user name")
    parser.add_argument("-w", "--password", action="store",
                        help="Override database password")

    parser.add_argument('-b', '--basedir', dest='basedir', help='Base directory for symbols', action='store')
    parser.add_argument('-i', '--inkscape', dest='inkscape', help='Use inkscape for SVG rasterization', action='store_true', default=False)
    parser.add_argument("-D", "--dpi", dest="dpi", help="Set SVG rasterizing resolution (default is 72, 90 or 96 dpi depending on RSVG/inkscape version)", default=0)

    parser.add_argument('-N', '--nopreviews', dest='nopreviews', help='Do not generate previews (to run faster)', action='store_true', default=False)

    parser.add_argument("-v", "--verbose", action="store_true",
                        help="Be more verbose. Overrides -q")
    parser.add_argument("-q", "--quiet", action="store_true",
                        help="Only report serious problems")

    opts = parser.parse_args()

    if opts.verbose:
        logging.basicConfig(level=logging.DEBUG)
    elif opts.quiet:
        logging.basicConfig(level=logging.WARNING)
    else:
        logging.basicConfig(level=logging.INFO)

    config = load_settings(opts.config)

    basedir = opts.basedir or config["settings"].get("dir")

    if not os.path.exists(basedir+'/previews'):
        os.makedirs(basedir+'/previews')
    if not os.path.exists(basedir+'/colored'):
        os.makedirs(basedir+'/colored')

    database = opts.database or config["settings"].get("database")
    host = opts.host or config["settings"].get("host")
    port = opts.port or config["settings"].get("port")
    user = opts.username or config["settings"].get("username")
    password = opts.password or config["settings"].get("password")

    conn = None
    conn = psycopg2.connect(database=database,
                     host=host, port=port,
                     user=user,
                     password=password)

    contactsheet_files = []
    contactsheet_files2 = []

    if 'symbols' in config:

        logging.info("Colorizing line pattern SVGs and generating previews...")

        for symbol_name, params in config['symbols'].items():

            if 'color' in params:
                color = params['color']
            else:
                color = "#000000"

            if 'sql' in params:

                if ('min-size' in params) and ('max-size' in params):
                    min_size = params['min-size']
                    max_size = params['max-size']
                elif 'size' in params:
                    min_size = params['size']
                    max_size = params['size']
                else:
                    logging.warning("No size specified for line pattern {name} based on SQL - ignoring".format(name=symbol_name))
                    continue

                if ('pattern-width' not in params) or ('pattern-height' not in params):
                    logging.warning("No pattern-width/pattern-height specified for line pattern {name} based on SQL - ignoring".format(name=symbol_name))
                    continue

                for line_width in range(min_size, max_size+1):
                    svg_from_sql(conn, basedir, symbol_name+"_"+str(line_width), params['sql'], str(params['pattern-width']), str(params['pattern-height']), line_width, color)

                    if not(opts.nopreviews):
                        if (line_width < 36):
                            generate_preview(basedir, symbol_name+"_"+str(line_width), opts)
                            if os.path.exists(basedir+"/previews/"+symbol_name+"_"+str(line_width) + '.png'):
                                contactsheet_files2.append(basedir+"/previews/"+symbol_name+"_"+str(line_width) + '.png')

            else:

                if 'file' in params:
                    source = params['file']
                else:
                    source = symbol_name+".svg"

                if 'file_start' in params:
                    source_start = params['file_start']
                else:
                    source_start = symbol_name+"_start.svg"

                if 'file_end' in params:
                    source_end = params['file_end']
                else:
                    source_end = symbol_name+"_end.svg"

                if os.path.exists(basedir+"/sources/"+source):

                    colorize_svg(basedir+"/sources/"+source, basedir, symbol_name, color)

                    if os.path.exists(basedir+"/sources/"+source_start):

                        colorize_svg(basedir+"/sources/"+source_start, basedir, symbol_name+"_start", color)

                    if os.path.exists(basedir+"/sources/"+source_end):

                        colorize_svg(basedir+"/sources/"+source_end, basedir, symbol_name+"_end", color)

                    if not(opts.nopreviews):
                        generate_preview(basedir, symbol_name, opts)
                        if os.path.exists(basedir+"/previews/"+symbol_name + '.png'):
                            contactsheet_files.append(basedir+"/previews/"+symbol_name + '.png')

                else:
                    logging.warning("No source SVG file found for line pattern {name} - ignoring".format(name=symbol_name))


                sys.stdout.flush()


        if not(opts.nopreviews):
            if contactsheet_files:

                logging.info("Assembling contact sheet...")

                sys.stdout.flush()

                if subprocess.call(
                    ["montage", "-label", "%t" ] + contactsheet_files +
                    ["-tile", "2x", "-geometry", "+4+4", "-background", "#f2efe9",
                     "doc/contactsheet_line_patterns.png"],
                    stderr=subprocess.STDOUT) != 0:
                    logging.warning("'montage' error: contact sheet generation failed")

                sys.stdout.flush()

            if contactsheet_files2:

                logging.info("Assembling contact sheet 2...")

                sys.stdout.flush()

                if subprocess.call(
                    ["montage", "-label", "%t" ] + contactsheet_files2 +
                    ["-tile", "2x", "-geometry", "+4+4", "-background", "#f2efe9",
                     "doc/contactsheet_line_patterns2.png"],
                    stderr=subprocess.STDOUT) != 0:
                    logging.warning("'montage' error: contact sheet generation failed")

                sys.stdout.flush()

if __name__ == "__main__":
    main()
