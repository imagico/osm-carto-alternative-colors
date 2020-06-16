#!/usr/bin/env python3

# Generates png pattern images from svgs and switch mss code between svg and png.

import argparse
import sys
import yaml
import os
import subprocess
import re

from PIL import Image

from collections import OrderedDict, namedtuple

from shutil import copyfile

def load_settings():
    """Read the settings from YAML."""
    return yaml.load(open('patterns.yaml', 'r'), Loader=yaml.FullLoader)

def svg_convert(fin, fout, transparent, inkscape, dpi):

    sys.stdout.flush()

    if inkscape:
        if transparent:
            if dpi > 0:
                params = ["inkscape", "-z", "--export-png="+fout, "--export-dpi="+dpi, fin]
            else:
                params = ["inkscape", "-z", "--export-png="+fout, fin]
        else:
            if dpi > 0:
                params = ["inkscape", "-z", "--export-png="+fout, "--export-dpi="+dpi, "--export-background=white", fin]
            else:
                params = ["inkscape", "-z", "--export-png="+fout, "--export-background=white", fin]

        if subprocess.call(params, stderr=subprocess.STDOUT) != 0:
            sys.exit("\n\n   'inkscape' error: SVG conversion failed.\n")

        if not(os.path.exists(fout)):
            sys.exit("\n\n   'inkscape' error: SVG conversion failed.\n")
    else:
        if transparent:
            if dpi > 0:
                params = ["convert", "-background", "none", "-density", dpi, fin, fout]
            else:
                params = ["convert", "-background", "none", fin, fout]
        else:
            if dpi > 0:
                params = ["convert", "-density", dpi, fin, fout]
            else:
                params = ["convert", fin, fout]

        if subprocess.call(params, stderr=subprocess.STDOUT) != 0:
            sys.exit("\n\n   'convert' error: SVG conversion failed.\n")

        if not(os.path.exists(fout)):
            sys.exit("\n\n   'convert' error: SVG conversion failed.\n")

    sys.stdout.flush()


def generate_pattern(pattern, colors, inkscape, dpi):

    source_name = os.path.join("symbols/patterns/sources", pattern + ".svg")

    if not(os.path.exists(source_name)):
        pattern_components = pattern.split("_")
        pattern_components.pop()
        pattern_base = "_".join(pattern_components)
        source_name = os.path.join("symbols/patterns/sources", pattern_base + ".svg")

    if os.path.exists(source_name):
        png_bw_name = os.path.join("symbols/patterns/processed", pattern + "_bw.png")
        svg_bw_name = os.path.join("symbols/patterns/processed", pattern + "_bw.svg")
        preview_name = os.path.join("symbols/patterns/previews", pattern + "_preview.png")
        #png_name = os.path.join("symbols/patterns/previews", pattern + "_overlay.png")
        png_name = os.path.join("symbols/patterns", pattern + ".png")
        svg_name = os.path.join("symbols/patterns", pattern + ".svg")

        if colors[pattern][1] == "native":

            print (pattern+" (native)...")

            copyfile(source_name, svg_name)

            svg_convert(source_name, png_name, True, inkscape, dpi)

            im = Image.open(png_name)
            (width, height) = im.size

            sys.stdout.flush()

            if subprocess.call(
                ["convert", "-depth", "8", "-size", ("%dx%d" % (width, height)), "xc:"+colors[pattern][0], 
                    png_name, "-composite", preview_name ],
                    stderr=subprocess.STDOUT) != 0:
                sys.exit("\n\n   'convert' error: preview generation failed.\n")

            sys.stdout.flush()

            if not(os.path.exists(preview_name)):
                sys.exit("\n\n   'convert' error: preview generation failed.\n")

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

            svg_convert(svg_bw_name, png_bw_name, False, inkscape, dpi)

            im = Image.open(png_bw_name)
            (width, height) = im.size

            sys.stdout.flush()

            if subprocess.call(
                ["convert", "-depth", "8", "-size", ("%dx%d" % (width, height)), "xc:"+colors[pattern][1], 
                    "(", png_bw_name, "-negate", ")", "-alpha", "Off", 
                    "-compose", "CopyOpacity", "-composite", "+gamma", "-", 
                    png_name ],
                    stderr=subprocess.STDOUT) != 0:
                sys.exit("\n\n   'convert' error: PNG colorization failed.\n")

            sys.stdout.flush()

            if not(os.path.exists(png_name)):
                sys.exit("\n\n   'convert' error: PNG colorization failed.\n")

            sys.stdout.flush()

            if subprocess.call(
                ["convert", "-depth", "8", "-size", ("%dx%d" % (width, height)), "xc:"+colors[pattern][0], 
                    png_name, "-composite", "-flatten", "+gamma", "-", preview_name ],
                    stderr=subprocess.STDOUT) != 0:
                sys.exit("\n\n   'convert' error: preview generation failed.\n")

            sys.stdout.flush()

            if not(os.path.exists(preview_name)):
                sys.exit("\n\n   'convert' error: preview generation failed.\n")


def main():
    parser = argparse.ArgumentParser(description='Generates patterns')
    parser.add_argument('-s', '--svg', dest='svg', help='Switch to svg use', action='store_true', default=False)
    parser.add_argument('-p', '--png', dest='png', help='Switch to png use', action='store_true', default=False)
    parser.add_argument('-g', '--generate', dest='gen', help='Generate pngs', action='store_true', default=False)
    parser.add_argument('-i', '--inkscape', dest='inkscape', help='Use inkscape for SVG rasterization', action='store_true', default=False)
    parser.add_argument("-d", "--dpi", dest="dpi", help="Set SVG rasterizing resolution (default is 72, 90 or 96 dpi depending on RSVG/inkscape version)", default=0)
    args = parser.parse_args()

    settings = load_settings()

    patterns = settings['patterns']
    colors = settings['colors']
    mss_files = settings['mss']

    if args.gen:
        print ("Generating pattern images...")
        for pattern in patterns:
            generate_pattern(pattern, colors, args.inkscape, args.dpi)

    if args.svg:
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
                    (line_out, cnt) = re.subn('symbols/patterns/'+pattern+'\.png', 'symbols/patterns/'+pattern+'.svg', line_out)
                    sub_count += cnt

                fout.write(line_out)

            fin.close()
            fout.close()
            print ("  "+("%d" % sub_count)+" patterns")

    elif args.png:
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
                    (line_out, cnt) = re.subn('symbols/patterns/'+pattern+'\.svg', 'symbols/patterns/'+pattern+'.png', line_out)
                    sub_count += cnt

                fout.write(line_out)

            fin.close()
            fout.close()
            print ("  "+("%d" % sub_count)+" patterns")



if __name__ == "__main__":
    main()
