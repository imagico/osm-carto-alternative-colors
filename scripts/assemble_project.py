#!/usr/bin/env python3
# ---------------------------------------------------------------------------
#  assemble_project.py
#
#  assembles a project.mml YAML file for the style based on individual
#  layer files and the settings from layers.yaml.
#  Style variants can be chosen based on tags in layers.yaml.
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

import logging

from ac_functions import *

def cmd_params(cmd):
    return cmd.split("(", 1)[1].split(")", 1)[0].split(",")

def include_file(fout, layer, ifile, tags, first, level, ibase):
    """include a file in project."""
    if os.path.exists(ifile):
        cdir = os.path.dirname(ifile)
        with open(ifile, 'rt') as fin:
            logging.info(("  "*level)+"    including file {}".format(ifile))
            ln = 0
            header = True
            control_level = 0
            skip_level = dict()
            skip_level[0] = -1
            skip = False
            lcnt = 0
            for line in fin:
                lcnt += 1
                # interpret control structures
                if line.lstrip(" ").startswith("@@"):
                    cmd = line.lstrip(" @")
                    if cmd.startswith("if"):
                        control_level += 1
                        skip_level[control_level] = 1
                        for ctag in cmd_params(cmd):
                            if ctag.startswith("!"):
                                if ctag.lstrip("!") in tags:
                                    if not(skip):
                                        skip_level[control_level] = 1
                                        skip = True
                            else:
                                if ctag in tags:
                                    if not(skip):
                                        skip_level[control_level] = -1
                                        skip = False
                        if (skip_level[control_level] == 1):
                            skip = True
                        #logging.info("    @@if {}".format(skip_level[control_level]))
                    elif cmd.startswith("else"):
                        if (skip_level[control_level] != 0):
                            if skip:
                                skip_level[control_level] = -1
                                skip = False
                            else:
                                skip_level[control_level] = 1
                                skip = True
                        #logging.info("    @@else {}".format(skip_level[control_level]))
                    elif cmd.startswith("end"):
                        #logging.info("    @@end {}".format(skip_level[control_level]))
                        if (skip_level[control_level] != 0):
                            skip_level[control_level] = 0
                            skip = False
                        control_level -= 1
                        if (control_level < 0):
                            logging.critical("Closing control structure with no matching start in {file}({line}).".format(file=ifile, line=lcnt))
                    elif cmd.startswith("include"):
                        #logging.info("    @@include {}".format(skip_level[control_level]))
                        if not(skip):
                            ibase_new = len(line) - len(line.lstrip(" ")) - indent
                            for ifile in cmd_params(cmd):
                                include_file(fout, layer, os.path.join(cdir,ifile), tags, first, level+1, ibase_new)
                    continue

                if skip:
                    continue

                if header:
                    if line.lstrip(" ").startswith("#"):
                        continue
                    else:
                        header = False
                if level == 0:
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
                else:
                    if ln == 0:
                        indent = ibase - (len(line) - len(line.lstrip(" ")))

                if indent == 0:
                    fout.write(line)
                elif indent < 0:
                    fout.write(line[-indent:])
                else:
                    fout.write((" "*indent)+line)
                ln += 1

    else:
        logging.warning("Source file {} not found - skipping.".format(ifile))


def main():
    parser = argparse.ArgumentParser(description='Generates project.mml from layers.yaml')

    parser.add_argument("-c", "--config", action="store", default="layers.yaml",
                        help="Name of configuration file (default layers.yaml)")

    parser.add_argument("-t", "--tags", action="store", default="ac",
                        help="Tag to filter layers")
    parser.add_argument("-n", "--names", action="store",
                        help="Layer names to filter (for testing)")
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

    tags = opts.tags.split(",")

    names = None
    if opts.names:
        names = opts.names.split(",")

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
            layers_active = set()

            for layer, params in config['layers'].items():
                if opts.names:
                    if layer not in names:
                        continue
                elif 'tags' in params:
                    skip = 0
                    for ftag in params['tags']:
                        if ftag.startswith("!"):
                            if ftag.lstrip("!") in tags:
                                skip = 1
                        else:
                            # existence of tags means the default of 'all' is overridden
                            if skip == 0:
                                skip = 1
                            if ftag in tags:
                                skip = -1
                    if skip > 0:
                        continue

                logging.info("  Active layer {layer}.".format(layer=layer))

                layers_active.add(layer)

                if 'stylesheets' in params:
                    for sty in params['stylesheets']:
                        stylesheets[sty] = None

            first = True
            for layer, params in config['layers'].items():

                if layer not in layers_active:
                    if opts.names:
                        logging.info("  Skipping layer {layer} because of names ({names}).".format(layer=layer, names=opts.names))
                    else:
                        logging.info("  Skipping layer {layer} because of tags ({tags}).".format(layer=layer, tags=opts.tags))
                    continue

                if first:
                    logging.info("  Processing header ({})...".format(layer))
                else:
                    logging.info("  Processing layer {}...".format(layer))

                if 'source' in params:
                    include_file(fout, layer, params['source'], tags, first, 0, 2)

                    if first:
                        logging.info("Writing stylesheet list...")
                        print ("Stylesheet:", file=fout)
                        for sty in stylesheets:
                            print ("  - "+sty, file=fout)
                        logging.info("Writing layers...")
                        print ("Layer:", file=fout)
                        first = False
                else:
                    logging.warning("No source specified in layer {} - skipping.".format(layer))

    else:
        logging.critical("No layers section in {}.".format(opts.config))

if __name__ == "__main__":
    main()
