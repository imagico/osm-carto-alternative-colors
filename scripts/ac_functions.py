#!/usr/bin/env python3
# ---------------------------------------------------------------------------
#  ac_functions.py
#
#  various python functions used in several scripts
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

import sys
import yaml
import os
import subprocess

import logging

def load_settings(config_file):
    """Read the settings from YAML."""
    return yaml.safe_load(open(config_file, 'r'))

def svg_convert(fin, fout, transparent, inkscape, rsvg, dpi):

    sys.stdout.flush()

    if inkscape:
        if transparent:
            if dpi > 0:
                params = ["inkscape", "-z", "--export-type=png", "--export-overwrite", "--export-filename="+fout, "--export-dpi="+dpi, fin]
            else:
                params = ["inkscape", "-z", "--export-type=png", "--export-overwrite", "--export-filename="+fout, fin]
        else:
            if dpi > 0:
                params = ["inkscape", "-z", "--export-type=png", "--export-overwrite", "--export-filename="+fout, "--export-dpi="+dpi, "--export-background=white", fin]
            else:
                params = ["inkscape", "-z", "--export-type=png", "--export-overwrite", "--export-filename="+fout, "--export-background=white", fin]

        if subprocess.call(params, stderr=subprocess.STDOUT) != 0:
            sys.exit("\n\n   'inkscape' error: SVG conversion failed.\n")

        if not(os.path.exists(fout)):
            sys.exit("\n\n   'inkscape' error: SVG conversion failed.\n")
    else:
        if rsvg:
            fin_mod = "RSVG:"+fin
        else:
            fin_mod = fin

        if transparent:
            if int(dpi) > 0:
                params = ["magick", "-background", "none", "-density", dpi, fin_mod, fout]
            else:
                params = ["magick", "-background", "none", fin_mod, fout]
        else:
            if int(dpi) > 0:
                params = ["magick", "-density", dpi, fin_mod, fout]
            else:
                params = ["magick", fin_mod, fout]

        if subprocess.call(params, stderr=subprocess.STDOUT) != 0:
            sys.exit("\n\n   'magick' error: SVG conversion failed.\n")

        if not(os.path.exists(fout)):
            sys.exit("\n\n   'magick' error: SVG conversion failed.\n")

    sys.stdout.flush()


def colorize_svg(source, basedir, symbol_name, color, color2 = None):
    with open(source, 'rt') as fin:
        with open(basedir + "/colored/" + symbol_name + '.svg', 'wt') as fout:
            if color2 is None:
                logging.info("Colorizing symbol for {name} ({col})...".format(name=symbol_name, col=color))
                for line in fin:
                    fout.write(line.replace('#000000', color))
            else:
                logging.info("Colorizing symbol for {name} ({col}, {col2})...".format(name=symbol_name, col=color, col2=color2))
                for line in fin:
                    fout.write(line.replace('#000000', color).replace('#ff0000', color2))
