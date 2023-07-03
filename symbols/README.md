# SVG symbology of the OSM-Carto alternative colors map style

This directory contains all SVG based symbology used in the style.  The point symbols are
mostly based on work done by OSM-Carto developers, the polygon and line patterns are mostly
specific designs made for the AC-Style.

Most of the symbols are processed by python scripts into the version actually used for rendering.

Details on this can be seen below.  The scripts also produces a contact sheet with previous of the
symbols processed which can be found below.

## Point symbols

![contact sheet point symbols](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/contactsheet_symbols.png)

The point symbols are processed with a script ([/scripts/generate_symbols_labels.py](../scripts/generate_symbols_labels.py))
that colorizes the symbols and generates the SQL/MSS code for the POI layer.  The whole process is 
described [in this blog post](https://imagico.de/blog/en/competing-priorities-symbols-and-labels-in-rule-based-map-rendering/).

Symbol sources can be found in the [sources/](sources/) subdirectory, the definition 
of colors and rendering parameters in [symbols-labels.yaml](../symbols-labels.yaml)

## Line patterns

![contact sheet line patterns](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/contactsheet_line_patterns.png)

![contact sheet parametric line patterns](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/contactsheet_line_patterns2.png)

The line pattern SVGs are processed with ([/scripts/generate_line_patterns.py](../scripts/generate_line_patterns.py)) based
on parameters in [line_patterns.yaml](../line_patterns.yaml)

## Polygon fill patterns

![contact sheet patterns](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/contactsheet_patterns.png)

The polygon pattern SVGs are processed with ([/scripts/generate_patterns.py](../scripts/generate_patterns.py)) based
on parameters in [patterns.yaml](../patterns.yaml)

