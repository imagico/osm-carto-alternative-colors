#!/usr/bin/env python3
# ---------------------------------------------------------------------------
#  generate_patterns.py
#
#  Generates png pattern images from svgs and switch mss code between
#  SVG and PNG.
#
#  Copyright 2012-2023 by OSM-Carto contributors
#  Copyright 2018-2025 by Christoph Hormann <chris_hormann@gmx.de>
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
import subprocess
import re

from PIL import Image

from collections import OrderedDict, namedtuple

from shutil import copyfile

from ac_functions import *

def generate_pattern(basedir, pattern, colors, inkscape, rsvg, dpi, nopreviews):

    source_name = os.path.join(basedir+"/sources", pattern + ".svg")

    if not(os.path.exists(source_name)):
        pattern_components = pattern.split("_")
        pattern_components.pop()
        pattern_base = "_".join(pattern_components)
        source_name = os.path.join(basedir+"/sources", pattern_base + ".svg")

    if os.path.exists(source_name):

        if not os.path.exists(basedir+"/processed"):
            os.makedirs(basedir+"/processed")
        if not os.path.exists(basedir+"/previews"):
            os.makedirs(basedir+"/previews")

        png_bw_name = os.path.join(basedir+"/processed", pattern + "_bw.png")
        svg_bw_name = os.path.join(basedir+"/processed", pattern + "_bw.svg")
        preview_name = os.path.join(basedir+"/previews", pattern + ".png")
        #png_name = os.path.join("symbols/patterns/previews", pattern + "_overlay.png")
        png_name = os.path.join(basedir, pattern + ".png")
        svg_name = os.path.join(basedir, pattern + ".svg")

        if colors[pattern][1] == "native":

            print (pattern+" (native)...")

            copyfile(source_name, svg_name)

            svg_convert(source_name, png_name, True, inkscape, rsvg, dpi)

            im = Image.open(png_name)
            (width, height) = im.size

            if not(nopreviews):
                sys.stdout.flush()

                if subprocess.call(
                    ["magick", "-size", ("%dx%d" % (width, height)), "xc:"+colors[pattern][0], 
                        png_name, "-composite", "-depth", "8", preview_name ],
                        stderr=subprocess.STDOUT) != 0:
                    sys.exit("\n\n   'magick' error: preview generation failed.\n")

                sys.stdout.flush()

                if not(os.path.exists(preview_name)):
                    sys.exit("\n\n   'magick' error: preview generation failed.\n")

        else:
            print (pattern+" (colorized)...")

            fin = open(source_name, "rt")
            fout = open(svg_bw_name, "wt")
            fout2 = open(svg_name, "wt")
            for line in fin:
                if len(colors[pattern]) > 2:
                    fout.write(re.sub('fill:#(?:[0-9a-fA-F]{3}){1,2}', 'fill:#000000;fill-opacity:'+str(colors[pattern][2]), line))
                    fout2.write(re.sub('fill:#(?:[0-9a-fA-F]{3}){1,2}', 'fill:'+colors[pattern][1]+';fill-opacity:'+str(colors[pattern][2]), line))
                else:
                    fout.write(re.sub('fill:#(?:[0-9a-fA-F]{3}){1,2}', 'fill:#000000', line))
                    fout2.write(re.sub('fill:#(?:[0-9a-fA-F]{3}){1,2}', 'fill:'+colors[pattern][1], line))

            fin.close()
            fout.close()
            fout2.close()

            sys.stdout.flush()

            svg_convert(svg_bw_name, png_bw_name, False, inkscape, rsvg, dpi)

            im = Image.open(png_bw_name)
            (width, height) = im.size

            sys.stdout.flush()

            if subprocess.call(
                ["magick", "-size", ("%dx%d" % (width, height)), "xc:"+colors[pattern][1], 
                    "(", png_bw_name, "-negate", ")", "-alpha", "Off", 
                    "-compose", "CopyOpacity", "-composite", "-depth", "8", 
                    png_name ],
                    stderr=subprocess.STDOUT) != 0:
                sys.exit("\n\n   'convert' error: PNG colorization failed.\n")

            sys.stdout.flush()

            if not(os.path.exists(png_name)):
                sys.exit("\n\n   'convert' error: PNG colorization failed.\n")

            if not(nopreviews):
                sys.stdout.flush()

                if subprocess.call(
                    ["magick", "-size", ("%dx%d" % (width, height)), "xc:"+colors[pattern][0], 
                        png_name, "-composite", "-flatten", "-depth", "8", preview_name ],
                        stderr=subprocess.STDOUT) != 0:
                    sys.exit("\n\n   'magick' error: preview generation failed.\n")

                sys.stdout.flush()

                if not(os.path.exists(preview_name)):
                    sys.exit("\n\n   'magick' error: preview generation failed.\n")


def main():
    parser = argparse.ArgumentParser(description='Generates patterns')

    parser.add_argument("-c", "--config", action="store", default="patterns.yaml",
                        help="Name of configuration file (default patterns.yaml)")

    parser.add_argument('-s', '--svg', dest='svg', help='Switch to svg use', action='store_true', default=False)
    parser.add_argument('-p', '--png', dest='png', help='Switch to png use', action='store_true', default=False)
    parser.add_argument('-g', '--generate', dest='gen', help='Generate pngs', action='store_true', default=False)

    parser.add_argument('-b', '--basedir', dest='basedir', help='Base directory for symbols', action='store')
    parser.add_argument('-i', '--inkscape', dest='inkscape', help='Use inkscape for SVG rasterization', action='store_true', default=False)
    parser.add_argument('-r', '--rsvg', dest='rsvg', help='Instrukt ImageMagick to use RSVG for SVG rasterization', action='store_true', default=False)
    parser.add_argument("-d", "--dpi", dest="dpi", help="Set SVG rasterizing resolution (default is 72, 90 or 96 dpi depending on RSVG/inkscape version)", default=0)

    parser.add_argument('-N', '--nopreviews', dest='nopreviews', help='Do not generate previews (to run faster)', action='store_true', default=False)

    opts = parser.parse_args()

    config = load_settings(opts.config)

    basedir = opts.basedir or config["settings"].get("dir")

    patterns = config['patterns']
    colors = config['colors']
    mss_files = config['mss']

    contactsheet_files = []

    if opts.gen:
        print ("Generating pattern images...")
        for pattern in patterns:
            generate_pattern(basedir, pattern, colors, opts.inkscape, opts.rsvg, opts.dpi, opts.nopreviews)

            if os.path.exists(os.path.join(basedir+"/previews", pattern + ".png")):
                contactsheet_files.append("tile:"+os.path.join(basedir+"/previews", pattern + ".png"))

    if opts.svg:
        print ("Converting mss code to use SVGs...")
        for mss in mss_files:
            print ("  "+mss+"...")
            copyfile(mss, mss+".bak")
            fin = open(mss+".bak", "rt")
            fout = open(mss, "wt")
            sub_count = 0
            for line in fin:
                line_out = line
                for pattern in patterns:
                    (line_out, cnt) = re.subn(basedir+'/'+pattern+'\\.png', basedir+'/'+pattern+'.svg', line_out)
                    sub_count += cnt

                fout.write(line_out)

            fin.close()
            fout.close()
            print ("  "+("%d" % sub_count)+" patterns")

    elif opts.png:
        print ("Converting mss code to use PNGs...")
        for mss in mss_files:
            print ("  "+mss+"...")
            copyfile(mss, mss+".bak")
            fin = open(mss+".bak", "rt")
            fout = open(mss, "wt")
            sub_count = 0
            for line in fin:
                line_out = line
                for pattern in patterns:
                    (line_out, cnt) = re.subn(basedir+'/'+pattern+'\\.svg', basedir+'/'+pattern+'.png', line_out)
                    sub_count += cnt

                fout.write(line_out)

            fin.close()
            fout.close()
            print ("  "+("%d" % sub_count)+" patterns")

    if not(opts.nopreviews):
        if contactsheet_files:

            print ("Assembling contact sheet...")

            sys.stdout.flush()

            if subprocess.call(
                ["montage", "-label", "%t", "-size", "256x256" ] + contactsheet_files +
                ["-extent", "180x64", "-tile", "2x", "-geometry", "1x1+4+4<", "-background", "#f2efe9",
                 "doc/contactsheet_patterns.png"],
                stderr=subprocess.STDOUT) != 0:
                logging.warning("'montage' error: contaxt sheet generation failed")

            sys.stdout.flush()


if __name__ == "__main__":
    main()
