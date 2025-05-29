# OSM-Carto alternative colors map style

![screenshot](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview.png)

This is a fork of the [OpenStreetMap Carto map style](https://github.com/gravitystorm/openstreetmap-carto/)
implementing a different color scheme, various improvements regarding path, road and water feature rendering
and overall a different approach to cartographic design.

![screenshot2](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview2.png)
![screenshot3](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview3.png)
![screenshot4](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview4.png)
![screenshot5](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview5.png)
![screenshot6](https://raw.github.com/imagico/osm-carto-alternative-colors/master/doc/preview6.png)

# Features

The following are the major design differences of this style compared to OpenStreetMap Carto:

* a different low to mid zoom color scheme that is used without algorithmic color fading and that therefore allows more conscious color design choices.
* various changes in the landcover color scheme matching the cartographic principles (see below).
* a three color system for waterbody rendering.
* low zoom waterbody rendering based on preprocessed data.
* extensive redesign of waterbody rendering in general including distinct rendering of intermittent and saltwater waterbodies and waterways.
* different color for administrative boundaries, distinct rendering of maritime boundaries.
* changed road colors with purple motorways and yellow tertiary roads
* different color scheme and different design of `path`/`footway`/`cycleway` rendering as well as `track` rendering at mid zoom levels.
* more sophisticated rendering of waterway barriers (dams, lock gates, weirs and waterfalls) as well as fords.
* different rendering of springs and addition of rendering of other water related point features.
* different color for transportation and accomodation related point symbols.
* different patterns for woodland and differentiated rendering of `leaf_cycle`.
* rendering of implicit embankments and cuttings (`embankment=yes`/`cutting=yes`) in highways, railways and waterways
* rendering of archipelagos based on convex hull
* rendering of various farmland and orchard types with special patterns
* rendering of `landuse=salt_pond`
* rendering of `natural=ridge` and `natural=arete` with a linear structure pattern
* golf course rendering derived from the French style
* rendering sport type on pitches using single symbol patterns
* rendering of entrances in barriers mapped with nodes
* complete re-design of the road rendering framework with:
  - ground unit width rendering of roads
  - lane depiction on roads
  - rendering of implicitly mapped sidewalks on roads
  - rendering of implicitly mapped streetside parkings and parking/cycle/bus lanes
  - differentiated rendering of turning circles, turning loops, mini roundabouts and passing places
  - rendering of details on steps
  - differentiation of unpaved roads
  - new access restriction semantics based on primary mode of transport and additional permissions
  - display of additional permissions on road classes with implicit access restrictions
* rendering of `natural=tree`, `natural=shrub`, `natural=tree_row` and `natural=hedge` differentiated by `leaf_type`/`leaf_cycle`
* embankment like illustration of `hedge=hedge_bank`
* a modular style definition with different layers in separate files and the possibility to define style variants like with simplified versions of specific high complexity layers.
* script generated MSS/SQL code for the POI symbol and label rendering making the style scale better with a large number of POI types.
* regionally differentiated font lists for label rendering to better conform with different regional typographic conventions (using preprocessed administrative area polygons for lookup).
* rendering of compound name labels in multilingual regions based on matching `name:<lang>` tags with parts of the `name` tag and interpreting `default_language` tags.
* rendering of `natural=earth_bank`, `natural=gully` and `natural=crevasse`
* differentiated rendering of `natural=earth_bank` with `earth_bank=grassy_steep_slope` and `natural=cliff` with `surface=ice`
* rendering of `man_made=dyke` with line signature parametrized according to `width` tagging
* differentiated rendering of `barrier=fence`, `barrier=guard_rail`, `barrier=wall`, `barrier=retaining_wall` and `barrier=ditch`.
* rendering of `barrier=wall`, `barrier=retaining_wall` and `barrier=ditch` and `barrier=city_wall`/`historic=citywalls` parametrized according to `width` tagging
* distinct rendering of `barrier=wall` and `barrier=retaining_wall` for `height<=0.5`
* rendering of different types of parking spaces using single symbol patterns
* rendering of surface type on parkings using a structure pattern
* symbol augmentation for parkings illustrating secondary tags
* symbol augmentation for bus/tram stops with a shelter
* rendering some types of buildings with a distinct design at high zoom levels (`building=roof`, `building=greenhouse`, `building=garages`, `building=garage`, `building=carport`)
* rendering of street lights with a design derived from the French style
* new rendering of pipelines with context adjusted dashing
* new dynamic rendering of viewpoints taking into account direction tagging
* re-designed rendering of point barriers using a common symbol design concept, adding various new barrier types
* adding symbols for various human structures with more differentiation by secondary tags
* new symbol designs with 3d shading for various human structures
* unified symbol design for waste/recycling infrastructure
* differentiated rendering of benches
* new symbols for `amenity=ferry_terminal`
* differentiated rendering of piers, breakwaters and groynes based on secondary tags and taking into account `width=*`
* rendering of `landuse=aquaculture` with differenciation by `produce=*`/`aquaculture=*`
* rendering of `man_made=quay`
* rendering of `emergency=life_ring`


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
* `sql/z_order.sql`
* `sql/line-widths-generated.sql`
* `sql/map_functions.sql`
* `sql/roads.sql`
* `sql/names.sql`
* `sql/symbols.sql`

Be aware that this style does not work well together with Postgresql JIT optimization.  It is highly 
advisable to turn that feature off in your Postgresql configuration.

Also the newest changes depend on [a custom version of Carto](https://github.com/imagico/carto/tree/xml-support).
If you don't want to use that you can remove the XML code within CartoCSS code in [symbols-labels.yaml](symbols-labels.yaml)
but you will loose the features that depend on that of course.  How you can modify kosmtik to use a custom local 
version of carto can be found [here](https://github.com/imagico/kosmtik).

Symbol augmentation used for rendering some symbols depends on a 
[custom extension of Mapnik](https://github.com/imagico/mapnik/tree/anchors-v4).  You can use the style without it,
but will get some warnings and will not be able to use the symbol augmentation.

For rendering all languages as intended you also need to download custom fonts - for which i adapted the
[get-fonts.sh](get-fonts.sh) from upstream.  To get just the AC-Style specific fonts you can run the script without parameters,
to get all the fonts used by OSM-Carto run `get-fonts.sh all`.

## Simplified version for faster rendering

The style uses a new, modular concept for setting up the rendering layers that allows specifying different
variants and simplified versions of layers that are expensive in rendering.

`scripts/assemble_project.py -t simple`

is going to be the way to invoke that.  This feature has not been finalized yet.

# License

Design components of the project are subject to the Creative Commons
Attribution ShareAlike 4.0 (CC BY-SA 4.0) License.

Software components of the project are subject to the GNU Affero General
Public License as published by the Free Software Foundation, either
version 3 of the License, or (at your option) any later version.

See [LICENSE.txt](LICENSE.txt) for details.
