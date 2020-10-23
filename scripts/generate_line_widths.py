#!/usr/bin/env python3

# Generates a line width selection function to be stored in line-widths-generated.sql.

import argparse
import sys
import yaml

from collections import OrderedDict, namedtuple

def load_settings():
    """Read the settings from YAML."""
    return yaml.safe_load(open('line-widths.yaml', 'r'))

def generate_sql(group, cl_list, classes, tags):

    print ("")
    line = "/* {grp} */"
    print (line.format(grp = group))
    line = "create or replace function carto_{grp}_line_width (text, numeric)"
    print (line.format(grp = group))
    print ("  returns numeric")
    print ("  language sql")
    print ("  immutable")
    print ("  returns null on null input")
    print ("as $func$")
    print ("select")
    print ("  case")

    for name in cl_list:
        if name in tags:
            line = "    when $1 {cl} then"
            print (line.format(cl = tags[name]))
        else:
            line = "    when $1 = '{cl}' then"
            print (line.format(cl = name))
        print ("      (case")
        width_prev = -1.0;
        zoom_prev = -1;
        for zoom in range(20):
            if zoom in classes[name]:
                line = "        when $2 = {z} then {wdth}"
                print (line.format(z = zoom, wdth = float(classes[name][zoom])))
                width_prev = classes[name][zoom]
                zoom_prev = zoom
            elif (width_prev >= 0.0):
                line = "        when $2 = {z} then {wdth}"
                print (line.format(z = zoom, wdth = float(classes[name][zoom_prev])))
        print ("        else 0.0")
        print ("      end)")

    print ("    else 0.0")
    print ("  end;")
    print ("$func$;")

def generate_mss(group, cl_list, classes):

    print ("")
    line = "/* {grp} */"
    print (line.format(grp = group))

    for name in cl_list:
        for zoom in range(20):
            if zoom in classes[name]:
                line = "@{cl}-width-z{z}: {wdth};"
                print (line.format(cl = name, z = zoom, wdth = classes[name][zoom]))


def main():
    parser = argparse.ArgumentParser(description='Generates line widths')
    parser.add_argument('-s', '--sql', dest='sql', help='Generates sql code', action='store_true', default=False)
    args = parser.parse_args()

    settings = load_settings()

    tags = settings['tags']

    classes = settings['classes']

    if args.sql:
        groups = settings['sql']
        # Print a warning about the nature of these definitions.
        print ("/* This is generated code, do not change this file manually.            */")
        print ("/*                                                                      */")
        print ("/* To change these definitions, alter line-widths.yaml and run:         */")
        print ("/*                                                                      */")
        print ("/*   ./scripts/generate_line_widths.py -s > line-widths-generated.sql   */")
        print ("/*                                                                      */")
        for group, cl_list in groups.items():
            generate_sql(group, cl_list, classes, tags)
    else:
        groups = settings['mss']
        # Print a warning about the nature of these definitions.
        print ("/* This is generated code, do not change this file manually.         */")
        print ("/*                                                                   */")
        print ("/* To change these definitions, alter line-widths.yaml and run:      */")
        print ("/*                                                                   */")
        print ("/*   ./scripts/generate_line_widths.py > line-widths-generated.mss   */")
        print ("/*                                                                   */")
        for group, cl_list in groups.items():
            generate_mss(group, cl_list, classes)


if __name__ == "__main__":
    main()
