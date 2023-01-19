#!/usr/bin/env python3
# ---------------------------------------------------------------------------
#  assemble_project.py
#
#  assembles a project.mml YAML file for the style based on individual
#  layer files and the settings from layers.yaml.
#  Style variants can be chosen based on tags in layers.yaml.
#
#  Copyright 2012-2023 by OSM-Carto contributors
#  Copyright 2017-2023 by Christoph Hormann <chris_hormann@gmx.de>
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

import logging

def load_settings(config_file):
    """Read the settings from YAML."""
    return yaml.safe_load(open(config_file, 'r'))

def main():
    parser = argparse.ArgumentParser(description='Generates project.mml from layers.yaml')

    parser.add_argument("-c", "--config", action="store", default="layers.yaml",
                        help="Name of configuration file (default layers.yaml)")

    parser.add_argument("-t", "--tag", action="store", default="ac",
                        help="Tag to filter layers")
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

    project = dict()

    if 'layers' in config:
        with open("project.mml", 'wt') as fout:

            print ("# This is generated code, do not change this file manually.", file=fout)
            print ("#", file=fout)
            print ("# To change these definitions, alter layers/*.mml and run:", file=fout)
            print ("#", file=fout)
            print ("#   ./scripts/assemble_project.py", file=fout)
            print ("#", file=fout)
            print ("# Content subject to AGPL v3.0/CC BY-SA 4.0 - see LICENSE.txt for details", file=fout)
            print ("#", file=fout)

            stylesheets = dict()

            for layer, params in config['layers'].items():
                if 'stylesheets' in params:
                    for sty in params['stylesheets']:
                        stylesheets[sty] = None

            first = True
            for layer, params in config['layers'].items():
                if 'source' in params:
                    if os.path.exists(params['source']):
                        with open(params['source'], 'rt') as fin:
                            if first:
                                logging.info("  Processing header ({})...".format(layer))
                            else:
                                logging.info("  Processing layer {}...".format(layer))
                            ln = 0
                            header = True
                            for line in fin:
                                if header:
                                    if line.lstrip(" ").startswith("#"):
                                        continue
                                    else:
                                        header = False
                                if ln == 0:
                                    if first:
                                        indent = -(len(line) - len(line.lstrip(" ")))
                                    else:
                                        indent = len(line) - len(line.lstrip(" "))
                                        if line.lstrip(" ").startswith("- id:"):
                                            indent = 2-indent
                                        else:
                                            print ("  - id: "+layer, file=fout)
                                            indent = 4-indent
                                if indent == 0:
                                    fout.write(line)
                                elif indent < 0:
                                    fout.write(line[-indent:])
                                else:
                                    fout.write((" "*indent)+line)
                                ln += 1

                            if first:
                                logging.info("Writing stylesheet list...")
                                print ("Stylesheet:", file=fout)
                                for sty in stylesheets:
                                    print ("  - "+sty, file=fout)
                                logging.info("Writing layers...")
                                print ("Layer:", file=fout)
                                first = False
                    else:
                        logging.warning("Source {src} not found - skipping layer {layer}.".format(src=params['source'], layer=layer))
                else:
                    logging.warning("No source specified in layer {} - skipping.".format(layer))

    else:
        logging.critical("No layers section in {}.".format(opts.config))

if __name__ == "__main__":
    main()
