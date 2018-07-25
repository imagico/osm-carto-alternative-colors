# OSM-Carto alternative colors map style

![screenshot](https://raw.github.com/imagico/osm-carto-alternative-colors/master/preview.png)

This is a fork of the [OpenStreetMap Carto map style](https://github.com/gravitystorm/openstreetmap-carto/)
implementing a different color scheme, various improvements regarding path, road and water feature rendering
and overall a different approach to cartographic design.

![screenshot2](https://raw.github.com/imagico/osm-carto-alternative-colors/master/preview2.png)
![screenshot3](https://raw.github.com/imagico/osm-carto-alternative-colors/master/preview3.png)
![screenshot4](https://raw.github.com/imagico/osm-carto-alternative-colors/master/preview4.png)

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

# Cartographic principles

[CARTOGRAPHY.md](CARTOGRAPHY.md) outlines the guiding principles of cartographic design in this project.

# Upstream changes

This style is not regularly synchronized with upstream changes but I occasionally integrate changes that
fit into the design concept here.

# Installation

See [INSTALL.md](INSTALL.md) for the generic OSM-Carto installation instructions.  In addition you need to 
install the `z()` function in PostGIS which is supplied in `z.sql`.
