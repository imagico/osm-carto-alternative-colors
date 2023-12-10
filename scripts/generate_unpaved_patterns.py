#!/usr/bin/env python3

# Colours for unpaved roads
# Script by Lukas Sommer from
# https://github.com/gravitystorm/openstreetmap-carto/pull/3399

# This reads some color variables from some .mss files and also reads
# symbols/unpaved/unpaved.svg and generates colourized versions of
# the unpaved pattern for all road types and saves them in the symbols/unpaved
# folder. Existing files of the same name are overwritten!
#
# This script produces patterns that perceptually have the same overall
# brightness as the original road color. Therefor, the pattern foreground
# is darker than the original color, and the pattern background lighter than
# the original color. This script does its very best, but the same overall
# brightness is not always possible (for example for white roads) and also
# depends on the monitor gammut on which the pattern is finally displayed.
#
# Usage: Call this script in the main directory of openstreetmap-carto
# without further parameters.
#
# Customize:
# You can customize this script by changing the first variables of in the main()
# function (color_names, file_names, darken, brighten_darken_ratio).

import argparse
import sys
import yaml
import os
import subprocess
import re
import math

from PIL import ImageColor

# color space conversion functions
# from https://github.com/antimatter15/rgb-lab
# MIT License
# Copyright (c) 2014 Kevin Kwok <antimatter15@gmail.com>

def lab2srgb(lab):
    y = (lab[0] + 16.0) / 116.0
    x = lab[1] / 500.0 + y
    z = y - lab[2] / 200.0

    x = 0.95047 * (x * x * x if (x * x * x > 0.008856) else (x - 16.0/116.0) / 7.787);
    y = 1.00000 * (y * y * y if (y * y * y > 0.008856) else (y - 16.0/116.0) / 7.787);
    z = 1.08883 * (z * z * z if (z * z * z > 0.008856) else (z - 16.0/116.0) / 7.787);

    r = x *  3.2406 + y * -1.5372 + z * -0.4986;
    g = x * -0.9689 + y *  1.8758 + z *  0.0415;
    b = x *  0.0557 + y * -0.2040 + z *  1.0570;

    r = (1.055 * math.pow(r, 1.0/2.4) - 0.055) if (r > 0.0031308) else 12.92 * r;
    g = (1.055 * math.pow(g, 1.0/2.4) - 0.055) if (g > 0.0031308) else 12.92 * g;
    b = (1.055 * math.pow(b, 1.0/2.4) - 0.055) if (b > 0.0031308) else 12.92 * b;

    return [max(0.0, min(1.0, r)) * 255, max(0.0, min(1.0, g)) * 255, max(0.0, min(1.0, b)) * 255]

def srgb2lab(rgb):
    r = rgb[0] / 255.0
    g = rgb[1] / 255.0
    b = rgb[2] / 255.0

    r = math.pow((r + 0.055) / 1.055, 2.4) if (r > 0.04045) else r / 12.92;
    g = math.pow((g + 0.055) / 1.055, 2.4) if (g > 0.04045) else g / 12.92;
    b = math.pow((b + 0.055) / 1.055, 2.4) if (b > 0.04045) else b / 12.92;

    x = (r * 0.4124 + g * 0.3576 + b * 0.1805) / 0.95047;
    y = (r * 0.2126 + g * 0.7152 + b * 0.0722) / 1.00000;
    z = (r * 0.0193 + g * 0.1192 + b * 0.9505) / 1.08883;

    x = math.pow(x, 1.0/3.0) if (x > 0.008856) else (7.787 * x) + 16.0/116.0;
    y = math.pow(y, 1.0/3.0) if (y > 0.008856) else (7.787 * y) + 16.0/116.0;
    z = math.pow(z, 1.0/3.0) if (z > 0.008856) else (7.787 * z) + 16.0/116.0;

    return [(116.0 * y) - 16.0, 500.0 * (x - y), 200.0 * (y - z)]


def load_settings(config_file):
    """Read the settings from YAML."""
    return yaml.safe_load(open(config_file, 'r'))

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
            if int(dpi) > 0:
                params = ["convert", "-background", "none", "-density", dpi, fin, fout]
            else:
                params = ["convert", "-background", "none", fin, fout]
        else:
            if int(dpi) > 0:
                params = ["convert", "-density", dpi, fin, fout]
            else:
                params = ["convert", fin, fout]

        if subprocess.call(params, stderr=subprocess.STDOUT) != 0:
            sys.exit("\n\n   'convert' error: SVG conversion failed.\n")

        if not(os.path.exists(fout)):
            sys.exit("\n\n   'convert' error: SVG conversion failed.\n")

    sys.stdout.flush()

# def get_color_value_by_name(variable_name, file_names):
#
# Searches in MSS files for variable values with the given name. Returns
# the first value it finds. Only supports very basic syntax like:
# @test: 12; # Comment
# which would return "12".
#
# Paramaters:
# variable_name: the name of the variable for which we search the value
# file_names: list of files where we search for the variable value
#
# Return value: the variable value (if any)
def get_color_value_by_name(variable_name, file_names):
    for files in file_names:
        with open(files) as f:
            for line in f:
                if line.startswith("@" + variable_name + ":"):
                    temp = line.strip("@" + variable_name + ":").split(";")[0].strip()
                    # if another variable is referenced
                    if (temp[0] == '@'):
                        return get_color_value_by_name(temp[1:], file_names)
                    # test if the value length is okay (#abc or #aabbcc)
                    if (len(temp) == 4) or (len(temp)== 7):
                        # remove the first character (#)
                        temp = temp[1:]
                        # expand value like #abc to #aabbcc
                        if len(temp) == 3:
                            temp = temp[0] + temp [0] + temp [1] + temp [1] + temp [2] + temp [2]
                        # make sure that the content is really a (lowercase) hex value
                        if all(c in set("0123456789abcdef") for c in temp):
                            # if so, return the hex value with a leading "#"
                            return ("#" + temp)

# Takes an RGB hex values, applies the indicated Lab lightness change and returns the result as RGB hex value again
# def change_lightness(base_color_rgb_hex, lightness_change):
#
# Changes the lightness of a given color. This function
# tries to do a perceptual transformation.
#
# Paramaters:
# base_color_rgb_hex: An RGB hex value like #1212ab
# lightness_change: A number (positive or negative), interpreted as change to the lightness component like in Lab perceptual color space (range: 0..100)
#
# Return value: The RGB hex value with the lightness change applied. If the lightness change leaves
# us with an out-of-gammut value, it is clipped to make sure to be within the RGB gammut. So the return
# value is guarantied to be always a valid RGB value.
def change_lightness(base_color_rgb_hex, lightness_change):
    base_color_rgb = list(ImageColor.getrgb(base_color_rgb_hex))
    base_color_lab = srgb2lab(base_color_rgb)

    new_color_lab = [
        base_color_lab[0] + lightness_change,
        base_color_lab[1],
        base_color_lab[2]]

    new_color_rgb = lab2srgb(new_color_lab);

    #print ('base rgb: %d:%d:%d' % (base_color_rgb[0], base_color_rgb[1], base_color_rgb[2]))
    #print ('base lab: %.2f:%.2f:%.2f' % (base_color_lab[0], base_color_lab[1], base_color_lab[2]))
    #print ('new lab: %.2f:%.2f:%.2f' % (new_color_lab[0], new_color_lab[1], new_color_lab[2]))
    #print ('new rgb: %d:%d:%d' % (int(new_color_rgb[0]), int(new_color_rgb[1]), int(new_color_rgb[2])))

    return '#%02x%02x%02x' % (int(new_color_rgb[0]), int(new_color_rgb[1]), int(new_color_rgb[2]))

def process_color_pattern(pattern, color_name, darken, brighten_darken_ratio, contactsheet_files, config, opts):

    if pattern not in config["patterns"]:
        print("-- Unknown pattern %s referenced in color list - skipping" % pattern)

    basedir = opts.basedir or config["settings"].get("dir")

    if contactsheet_files is not None:
        if not os.path.exists(basedir+"/previews"):
            os.makedirs(basedir+"/previews")
        if not os.path.exists(basedir+"/png"):
            os.makedirs(basedir+"/png")

    file_names = config['file_names']

    if darken is None:
        darken = config["patterns"][pattern].get("darken")
    if brighten_darken_ratio is None:
        brighten_darken_ratio = config["patterns"][pattern].get("brighten_darken_ratio")

    pattern_source = config["patterns"][pattern].get("source")

    print("Pattern/Color: %s/%s" % (pattern, color_name))
    original_color_value = get_color_value_by_name(color_name, file_names)
    pattern_colors = [change_lightness(original_color_value, darken),
                      change_lightness(original_color_value, darken * brighten_darken_ratio)]
    print("Colors: %s -> %s (%.1f/%.3f)" % (original_color_value, str(pattern_colors), darken, brighten_darken_ratio))

    if pattern_colors:
        with open(pattern_source, 'rt') as fin:
            with open(basedir+'/'+pattern+'_' + color_name + '.svg', 'wt') as fout:
                for line in fin:
                    temp = line
                    temp = temp.replace('#0000ff', pattern_colors[0])
                    temp = temp.replace('fill:none', 'fill:' + pattern_colors[1])
                    fout.write(temp)
        print("Pattern file: " + basedir+'/'+pattern+'_' + color_name + '.svg')

        if contactsheet_files is not None:

            if not os.path.exists(basedir+"/previews/"+pattern):
                os.makedirs(basedir+"/previews/"+pattern)
            if not os.path.exists(basedir+"/png/"+pattern):
                os.makedirs(basedir+"/png/"+pattern)

            svg_convert(basedir+'/'+pattern+'_' + color_name + '.svg', basedir+'/png/'+pattern+"/" + color_name + '.png', True, opts.inkscape, opts.dpi)

            sys.stdout.flush()

            if subprocess.call(
                ["convert", "-depth", "8", basedir+'/png/'+pattern+"/" + color_name + '.png',
                 "-gravity", "center", "-crop", "64x64+0+0", "+repage", "-fill", original_color_value, "-draw", "rectangle 24,24 40,40",
                 "-bordercolor", original_color_value, "-border", "16x16", basedir+'/previews/'+pattern+"/" + color_name + '.png' ],
                    stderr=subprocess.STDOUT) != 0:
                sys.exit("\n\n   'convert' error: preview generation failed.\n")

            sys.stdout.flush()

            if not(os.path.exists(basedir+'/previews/'+pattern+"/" + color_name + '.png')):
                sys.exit("\n\n   'convert' error: preview generation failed.\n")

            contactsheet_files.append(basedir+'/previews/'+pattern+"/" + color_name + '.png')



def main():

    parser = argparse.ArgumentParser(description='Generates unpaved patterns')

    parser.add_argument("-c", "--config", action="store", default="unpaved_patterns.yaml",
                        help="Name of configuration file (default unpaved_patterns.yaml)")

    parser.add_argument('-b', '--basedir', dest='basedir', help='Base directory for pattern files', action='store')
    parser.add_argument('-i', '--inkscape', dest='inkscape', help='Use inkscape for SVG rasterization', action='store_true', default=False)
    parser.add_argument("-d", "--dpi", dest="dpi", help="Set SVG rasterizing resolution (default is 72, 90 or 96 dpi depending on RSVG/inkscape version)", default=0)

    parser.add_argument('-N', '--nopreviews', dest='nopreviews', help='Do not generate previews (to run faster)', action='store_true', default=False)

    opts = parser.parse_args()

    config = load_settings(opts.config)

    file_names = config['file_names']
    colors = config['colors']

    if opts.nopreviews:
        contactsheet_files = None
    else:
        contactsheet_files = []

    for color_name, col_pars in colors.items():
        if hasattr(col_pars, 'items'):
            for pattern, params in col_pars.items():
                darken = None
                brighten_darken_ratio = None
                if params:
                    if 'darken' in params:
                        darken = params['darken']
                    if 'brighten_darken_ratio' in params:
                        brighten_darken_ratio = params['brighten_darken_ratio']
                process_color_pattern(pattern, color_name, darken, brighten_darken_ratio, contactsheet_files, config, opts)

        elif isinstance(col_pars, list):
            for pattern in col_pars:
                process_color_pattern(pattern, color_name, None, None, contactsheet_files, config, opts)
        else:
            process_color_pattern(col_pars, color_name, None, None, contactsheet_files, config, opts)

    if contactsheet_files:

        print ("Assembling contact sheet...")

        sys.stdout.flush()

        if subprocess.call(
            ["montage", "-label", "%t", "-size", "256x256" ] + contactsheet_files +
            ["-tile", "4x", "-geometry", "1x1+4+4<", "-background", "#f2efe9",
             "doc/contactsheet_unpaved_patterns.png"],
            stderr=subprocess.STDOUT) != 0:
            logging.warning("'montage' error: contaxt sheet generation failed")

        sys.stdout.flush()

    return 0


    for pattern, params in config["patterns"].items():

        pattern_source = params.get("source")
        darken = params.get("darken")
        brighten_darken_ratio = params.get("brighten_darken_ratio")

        print("\n== Processing pattern: %s (%.1f, %.3f)" % (pattern, darken, brighten_darken_ratio))

        contactsheet_files = []

        # actual code
        for color_name, col_pars in colors.items():
            print("Color name: " + color_name)
            original_color_value = get_color_value_by_name(color_name, file_names)
            print("Plain color: " + original_color_value)
            pattern_colors = [change_lightness(original_color_value, darken),
                              change_lightness(original_color_value, darken * brighten_darken_ratio)]
            print("Colors for pattern: " + str(pattern_colors))
            if pattern_colors:
                with open(pattern_source, 'rt') as fin:
                    with open(basedir+'/'+pattern+'_' + color_name + '.svg', 'wt') as fout:
                        for line in fin:
                            temp = line
                            temp = temp.replace('#0000ff', pattern_colors[0])
                            temp = temp.replace('fill:none', 'fill:' + pattern_colors[1])
                            fout.write(temp)
                print("Pattern file: " + basedir+'/'+pattern+'_' + color_name + '.svg')

                if not(opts.nopreviews):

                    if not os.path.exists(basedir+"/previews/"+pattern):
                        os.makedirs(basedir+"/previews/"+pattern)
                    if not os.path.exists(basedir+"/png/"+pattern):
                        os.makedirs(basedir+"/png/"+pattern)

                    svg_convert(basedir+'/'+pattern+'_' + color_name + '.svg', basedir+'/png/'+pattern+"/" + color_name + '.png', True, opts.inkscape, opts.dpi)

                    sys.stdout.flush()

                    if subprocess.call(
                        ["convert", "-depth", "8", basedir+'/png/'+pattern+"/" + color_name + '.png',
                         "-gravity", "center", "-crop", "64x64+0+0", "+repage", "-fill", original_color_value, "-draw", "rectangle 24,24 40,40",
                         "-bordercolor", original_color_value, "-border", "16x16", basedir+'/previews/'+pattern+"/" + color_name + '.png' ],
                            stderr=subprocess.STDOUT) != 0:
                        sys.exit("\n\n   'convert' error: preview generation failed.\n")

                    sys.stdout.flush()

                    if not(os.path.exists(basedir+'/previews/'+pattern+"/" + color_name + '.png')):
                        sys.exit("\n\n   'convert' error: preview generation failed.\n")

                    contactsheet_files.append(basedir+'/previews/'+pattern+"/" + color_name + '.png')

        if not(opts.nopreviews):
            if contactsheet_files:

                print ("Assembling contact sheet...")

                sys.stdout.flush()

                if subprocess.call(
                    ["montage", "-label", "%t", "-size", "256x256" ] + contactsheet_files +
                    ["-tile", "4x", "-geometry", "1x1+4+4<", "-background", "#f2efe9",
                     "doc/contactsheet_"+pattern+"_patterns.png"],
                    stderr=subprocess.STDOUT) != 0:
                    logging.warning("'montage' error: contaxt sheet generation failed")

                sys.stdout.flush()

if __name__ == "__main__":
    main()
