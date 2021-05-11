# OSM-Carto alternative colors map style

![screenshot](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview.png)

This is a fork of the [OpenStreetMap Carto map style](https://github.com/gravitystorm/openstreetmap-carto/)
implementing a different color scheme, various improvements regarding path, road and water feature rendering
and overall a different approach to cartographic design.

![screenshot2](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview2.png)
![screenshot3](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview3.png)
![screenshot4](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview4.png)

# Features

The following are the major design differences of this style compared to OpenStreetMap Carto:

* a different low to mid zoom color scheme that is used without algorithmic color fading and that therefore
allows more conscious color design choices.
* various changes in the landcover color scheme matching the cartographic principles (see below).
* a three color system for waterbody rendering.
* low zoom waterbody rendering based on preprocessed data.
* extensive redesign of waterbody rendering in general including distinct rendering of intermittent and 
saltwater waterbodies and waterways.
* different color for administrative boundaries, distinct rendering of maritime boundaries.
* changed road colors with purple motorways and yellow tertiary roads
* different color scheme and different design of path/footway/cycleway rendering as well as track rendering 
at mid zoom levels.
* more sophisticated rendering of waterway barriers (dams, lock gates, weirs and waterfalls) as well as fords.
* different rendering of springs and addition of rendering of other water related point features.
* different color for transportation and accomodation related point symbols.
* different patterns for woodland and differentiated rendering of leaf_cycle.
* rendering of implicit embankments and cuttings (embankment=yes/cutting=yes) in highways, railways and waterways
* rendering of archipelagos based on convex hull
* rendering of various farmland and orchard types with special patterns
* rendering of natural=earth_bank
* rendering of landuse=salt_pond
* rendering of natura=ridge and natural=arete with a linear structure pattern
* golf course rendering derived from the French style
* rendering sport type on pitches using single symbol patterns
* rendering of entrances in barriers mapped with nodes
* complete re-design of the road rendering framework with:
  - ground unit width rendering of roads
  - lane depiction on roads
  - rendering of implicitly mapped sidewalks on roads
  - differentiated rendering of turning circles, turning loops, mini roundabouts and passing places
  - rendering of details on steps
  - differentiation of unpaved roads

# Samples

There is a collection of sample rendering available for a more extensive impression of the looks of this style
on https://imagico.de/map/ac_samples_en.php

# Cartographic principles

[CARTOGRAPHY.md](CARTOGRAPHY.md) outlines the guiding principles of cartographic design in this project.

# Upstream changes

This style is not regularly synchronized with upstream changes but I occasionally integrate changes that
fit into the design concept here.

# Installation

See [INSTALL.md](INSTALL.md) for the generic OSM-Carto installation instructions.  In addition you need to 
install the a number of functions in PostGIS supplied in:

* `sql/z.sql`
* `sql/line-widths-generated.sql`
* `sql/scale_factor.sql`
* `sql/roads.sql`

Be aware that this style does not work well together with Postgresql JIT optimization.  It is highly 
advisable to turn that feature off in your Postgresql configuration

## Simplified version for faster rendering

Some of the features of this style are fairly slow in rendering due to complex SQL code.  There is builtin 
support for a more simple version of the style that disables the slowest parts, in particular parts of the 
water barriers and the variable width road rendering.

To enable this simplified version you need to:

* run `sql/ac-lite.sql` on your database (which overrides some of the functions in roads.sql)
* disable the `water-barriers-line` layer and enable the `water-barriers-line-simple` layer, for example
by using (with kosmtik) the following in `localconfig.json`:

```
    {
        "where": "Layer",
        "if": {
            "id": "water-barriers-line-simple"
        },
        "then": {
            "properties.minzoom": 11
        }
    },
    {
        "where": "Layer",
        "if": {
            "id": "water-barriers-line"
        },
        "then": {
            "Datasource.table": " (SELECT way, waterway, 'line' AS wtype, name FROM planet_osm_line WHERE FALSE) AS water_barriers_line"
        }
    }
```
