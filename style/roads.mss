/* For the main linear features, such as roads and railways. */

@residential-fill: #ffffff;
@service-fill: @residential-fill;
@living-street-fill: #eaeaf2;
@pedestrian-fill: @living-street-fill;
@raceway-fill: #ffc0cb;
@road-fill: #ddd;
@bridleway-fill: green;
@bridleway-fill-noaccess: #aaddaa;
@track-fill: #996600;
@track-area-fill: #cdbea0;
@track-fill-noaccess: #e2c5bb;
@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;
@access-marking: #eaeaea;
@access-marking-living-street: #cccccc;

@platform-fill: #bbbbbb;

@footway-fill-lowzoom: #ff5069;
@footway-fill: #fc592f;
@footway-fill-noaccess: lighten(desaturate(@footway-fill, 56%), 12%);
@steps-fill: lighten(@footway-fill, 10%);
@steps-fill-noaccess: lighten(desaturate(@steps-fill, 56%), 12%);
@cycleway-fill-lowzoom: #ff5069;
@cycleway-fill: #cd63ef;
@cycleway-fill-noaccess: lighten(desaturate(@cycleway-fill, 56%), 12%);

@default-casing: white;
@residential-casing: #bbbbbb;
@road-casing: @residential-casing;
@service-casing: @residential-casing;
@living-street-casing: #b0b0b0;
@pedestrian-casing: @living-street-casing;
@path-casing: @default-casing;
@footway-casing: @default-casing;
@steps-casing: @default-casing;
@cycleway-casing: @default-casing;
@bridleway-casing: @default-casing;
@track-casing: @default-casing;

@unimportant-road: white;

@residential-construction: #aaa;
@service-construction: #aaa;

@destination-marking: #c2e0ff;
@private-marking: #efa9a9;
@private-marking-for-red: #C26363;

@runway-centerline: #eeeeee;
@taxiway-centerline: #eeeeee;

@tunnel-casing: grey;
@bridge-casing: black;
/* same color as for swimming pool outline */
@ford-casing: saturate(darken(@water-color, 40%), 30%);
@mountain-pass-casing: saturate(darken(@landform-color, 10%), 15%);

@raceway-casing: darken(@raceway-fill, 15%);

@motorway-tunnel-fill: lighten(@motorway-fill, 10%);
@trunk-tunnel-fill: lighten(@trunk-fill, 10%);
@primary-tunnel-fill: lighten(@primary-fill, 10%);
@secondary-tunnel-fill: lighten(@secondary-fill, 5%);
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);
@residential-tunnel-fill: darken(@residential-fill, 5%);
@service-tunnel-fill: darken(@service-fill, 5%);
@pedestrian-tunnel-fill: lighten(@pedestrian-fill, 2%);
@living-street-tunnel-fill: lighten(@living-street-fill, 2%);
@raceway-tunnel-fill: lighten(@raceway-fill, 5%);

@sidewalks-width:                 0.8;
@paths-background-width:          1;
@track-background-width:          1.35;
@paths-bridge-casing-width:       0.5;
@paths-tunnel-casing-width:       1;
@paths-ford-casing-width:         0.85;
@paths-ford-casing-width-z14:     0.7;

@mini-roundabout-width:           4;

@junction-text-color:             darken(@motorway-casing, 20%);
@halo-color-for-minor-road:       white;
@lowzoom-halo-color:              white;
@vlowzoom-halo-width:             0.65;
@lowzoom-halo-width:              1;
@lowzoom-halo-width-unimportant:  1;
@lowzoom-halo-unimportant-color:  #e5e2dd;

@motorway-oneway-arrow-color:     darken(@motorway-casing, 25%);
@trunk-oneway-arrow-color:        darken(@trunk-casing, 25%);
@primary-oneway-arrow-color:      darken(@primary-casing, 15%);
@secondary-oneway-arrow-color:    darken(@secondary-casing, 10%);
@tertiary-oneway-arrow-color:     darken(@tertiary-casing, 30%);
@residential-oneway-arrow-color:  darken(@residential-casing, 40%);
@living-street-oneway-arrow-color: darken(@living-street-casing, 25%);
@pedestrian-oneway-arrow-color:   darken(@pedestrian-casing, 25%);
@raceway-oneway-arrow-color:      darken(@raceway-fill, 50%);
@footway-oneway-arrow-color:      darken(@footway-fill, 35%);
@steps-oneway-arrow-color:        darken(@steps-fill, 35%);
@cycleway-oneway-arrow-color:     darken(@cycleway-fill, 25%);
@track-oneway-arrow-color:        darken(@track-fill, 15%);
@bridleway-oneway-arrow-color:    darken(@track-fill, 10%);

// Shield’s line wrap is based on OpenStreetMap data and not on line-wrap-width,
// but lines are typically rather short, so we use narrow line spacing.
@shield-size: 10;
@shield-line-spacing: -1.50; // -0.15 em
@shield-size-z16: 11;
@shield-line-spacing-z16: -1.65; // -0.15 em
@shield-size-z18: 12;
@shield-line-spacing-z18: -1.80; // -0.15 em
@shield-spacing: 760;
@shield-repeat-distance: 400;
@shield-margin: 40;
@shield-font: @book-fonts;
@shield-clip: false;

/* Roads MSS code is primarily structured by road_layer now (the sublayyer in the roads SQL) */

/* Data on z<10 comes from osm_planet_roads, data on z>=10 comes from
osm_planet_line. This is for performance reasons: osm_planet_roads contains less
data, and is thus faster. Chosen is for zoom level 10 as cut-off, because
tertiary is rendered from z10 and is not included in osm_planet_roads. */

/* Practically this is z<12 only, higher zoom levels have separate casing rules below */

#roads-low-zoom[zoom < 10],
#roads[zoom >= 10] {

  [road_layer = 'casing'] {
    [feature = 'highway_motorway'][link != 'yes'][int_tunnel = 'no'][int_bridge = 'no'][zoom >= 8][zoom < 12],
    [feature = 'highway_trunk'][link != 'yes'][int_tunnel = 'no'][int_bridge = 'no'][zoom >= 8][zoom < 12],
    [feature = 'highway_primary'][link != 'yes'][int_tunnel = 'no'][int_bridge = 'no'][zoom >= 8][zoom < 12],
    [feature = 'highway_secondary'][link != 'yes'][int_tunnel = 'no'][int_bridge = 'no'][zoom >= 10][zoom < 12] {
      [feature = 'highway_motorway'] {
        line-width: [width_nominal] + 2 * @vlowzoom-halo-width;
        [zoom >= 8] { line-width: [width_nominal] + 2 * @lowzoom-halo-width; }
      }
      [feature = 'highway_trunk'] {
        line-width: [width_nominal] + 2 * @vlowzoom-halo-width;
        [zoom >= 8] { line-width: [width_nominal] + 2 * @lowzoom-halo-width; }
      }
      [feature = 'highway_primary'] {
        [zoom >= 8] { line-width: [width_nominal] + 2 * @lowzoom-halo-width; }
      }
      [feature = 'highway_secondary'] {
        [zoom >= 10] { line-width: [width_nominal] + 2 * @lowzoom-halo-width; }
      }
      line-color: @lowzoom-halo-color;
      line-opacity: .4;
    }
    [feature = 'highway_secondary'][link != 'yes'][zoom >= 9][zoom < 10],
    [feature = 'highway_tertiary'][link != 'yes'][zoom >= 10][zoom < 12],
    [feature = 'highway_residential'][zoom = 12],
    [feature = 'highway_unclassified'][zoom = 12] {
      [feature = 'highway_secondary'] {
        line-width: [width_nominal] + 2 * @lowzoom-halo-width-unimportant;
      }
      [feature = 'highway_tertiary'] {
        [zoom >= 10] { line-width: [width_nominal] + 2 * @lowzoom-halo-width-unimportant; }
      }
      [feature = 'highway_residential'][zoom = 12] {
        line-width: [width_nominal] + 2 * @lowzoom-halo-width-unimportant;
      }
      [feature = 'highway_unclassified'][zoom = 12] {
        line-width: [width_nominal] + 2 * @lowzoom-halo-width-unimportant;
      }
      line-color: @lowzoom-halo-unimportant-color;
      line-opacity: 1;
      line-comp-op: darken;
    }
  } // == end casing ==

}

#roads {

  [road_layer = 'casing'][zoom >= 12] {

    // normal high zoom road casings (including bridge casings for railways and aeroways)
    [feature = 'highway_motorway'] {
      [zoom >= 12] {
        line-color: @motorway-low-zoom-casing;
        [zoom >= 13] {
          line-color: @motorway-casing;
        }
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              line-color: @mountain-pass-casing;
            }
          }
        }
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 12] {
        line-color: @trunk-low-zoom-casing;
        [zoom >= 13] {
          line-color: @trunk-casing;
        }
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              line-color: @mountain-pass-casing;
            }
          }
        }
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 12] {
        line-color: @primary-low-zoom-casing;
        [zoom >= 13] {
          line-color: @primary-casing;
        }
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-join: round;
            line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              line-color: @mountain-pass-casing;
            }
          }
        }
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 12] {
        line-color: @secondary-low-zoom-casing;
        [zoom >= 13] {
          line-color: @secondary-casing;
        }
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-join: round;
            line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              line-color: @mountain-pass-casing;
            }
          }
        }
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 12] {
        line-color: @tertiary-casing;
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
            line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              line-color: @mountain-pass-casing;
            }
          }
        }
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom >= 13] {
        line-color: @residential-casing;
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
            line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              line-color: @mountain-pass-casing;
            }
          }
        }
      }
    }

    [feature = 'highway_road'] {
      [zoom >= 14] {
        line-color: @road-casing;
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          line-color: @bridge-casing;
          line-join: round;
          line-cap: butt;
          [int_bridge = 'ford'],
          [int_bridge = 'ford_node'] {
            line-color: @ford-casing;
          }
          [int_bridge = 'mountain_pass'] {
            line-color: @mountain-pass-casing;
          }
        }
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-casing;
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          line-color: @bridge-casing;
          line-join: round;
          line-cap: butt;
          [int_bridge = 'ford'],
          [int_bridge = 'ford_node'] {
            line-color: @ford-casing;
          }
          [int_bridge = 'mountain_pass'] {
            line-color: @mountain-pass-casing;
          }
        }
      }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-color: @pedestrian-casing;
        line-width: [width_nominal];
        line-join: round;
        line-cap: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
            line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              line-color: @mountain-pass-casing;
            }
          }
        }
      }
    }

    [feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-color: @living-street-casing;
        line-width: [width_nominal];
        line-cap: round;
        line-join: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
            line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              line-color: @mountain-pass-casing;
            }
          }
        }
      }
    }

    [feature = 'highway_steps'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: [width_max] + 2 * (@paths-background-width + @paths-bridge-casing-width);
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      [int_bridge != 'yes'] {
        [zoom >= 15] {
          halo/line-width: [width_max] + 2 * @paths-background-width;
          halo/line-color: @steps-casing;
          halo/line-join: round;
          halo/line-opacity: 0.4;
        }
      }
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 14][access != 'no'][int_bridge = 'ford'],
        [zoom >= 15] {
          a/line-color: @ford-casing;
          b/line-color: @ford-casing;
          [int_bridge = 'mountain_pass'] {
            a/line-color: @mountain-pass-casing;
            b/line-color: @mountain-pass-casing;
          }
          a/line-width: @paths-ford-casing-width-z14;
          b/line-width: @paths-ford-casing-width-z14;
          a/line-offset: 0.5*[width_max] + @paths-background-width + 0.5*@paths-ford-casing-width-z14;
          b/line-offset: -0.5*[width_max] - @paths-background-width - 0.5*@paths-ford-casing-width-z14;
          [zoom >= 15] {
            a/line-width: @paths-ford-casing-width;
            b/line-width: @paths-ford-casing-width;
            a/line-offset: 0.5*[width_max] + @paths-background-width + 0.5*@paths-ford-casing-width;
            b/line-offset: -0.5*[width_max] - @paths-background-width - 0.5*@paths-ford-casing-width;
          }
          a/line-join: round;
          b/line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: [width_max] + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
          line-opacity: 1.0;
        }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-bridge-casing-width);
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 14][access != 'no'][int_bridge = 'ford'],
        [zoom >= 15] {
          a/line-color: @ford-casing;
          b/line-color: @ford-casing;
          [int_bridge = 'mountain_pass'] {
            a/line-color: @mountain-pass-casing;
            b/line-color: @mountain-pass-casing;
          }
          a/line-width: @paths-ford-casing-width-z14;
          b/line-width: @paths-ford-casing-width-z14;
          a/line-offset: 0.5*[width_nominal] + @paths-background-width + 0.5*@paths-ford-casing-width-z14;
          b/line-offset: -0.5*[width_nominal] - @paths-background-width - 0.5*@paths-ford-casing-width-z14;
          [zoom >= 15] {
            a/line-width: @paths-ford-casing-width;
            b/line-width: @paths-ford-casing-width;
            a/line-offset: 0.5*[width_nominal] + @paths-background-width + 0.5*@paths-ford-casing-width;
            b/line-offset: -0.5*[width_nominal] - @paths-background-width - 0.5*@paths-ford-casing-width;
          }
          a/line-join: round;
          b/line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-bridge-casing-width);
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 14][access != 'no'][int_bridge = 'ford'],
        [zoom >= 15] {
          a/line-color: @ford-casing;
          b/line-color: @ford-casing;
          [int_bridge = 'mountain_pass'] {
            a/line-color: @mountain-pass-casing;
            b/line-color: @mountain-pass-casing;
          }
          a/line-width: @paths-ford-casing-width-z14;
          b/line-width: @paths-ford-casing-width-z14;
          a/line-offset: 0.5*[width_nominal] + @paths-background-width + 0.5*@paths-ford-casing-width-z14;
          b/line-offset: -0.5*[width_nominal] - @paths-background-width - 0.5*@paths-ford-casing-width-z14;
          [zoom >= 15] {
            a/line-width: @paths-ford-casing-width;
            b/line-width: @paths-ford-casing-width;
            a/line-offset: 0.5*[width_nominal] + @paths-background-width + 0.5*@paths-ford-casing-width;
            b/line-offset: -0.5*[width_nominal] - @paths-background-width - 0.5*@paths-ford-casing-width;
          }
          a/line-join: round;
          b/line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-bridge-casing-width);
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 14][access != 'no'][int_bridge = 'ford'],
        [zoom >= 15] {
          a/line-color: @ford-casing;
          b/line-color: @ford-casing;
          [int_bridge = 'mountain_pass'] {
            a/line-color: @mountain-pass-casing;
            b/line-color: @mountain-pass-casing;
          }
          a/line-width: @paths-ford-casing-width-z14;
          b/line-width: @paths-ford-casing-width-z14;
          a/line-offset: 0.5*[width_nominal] + @paths-background-width + 0.5*@paths-ford-casing-width-z14;
          b/line-offset: -0.5*[width_nominal] - @paths-background-width - 0.5*@paths-ford-casing-width-z14;
          [zoom >= 15] {
            a/line-width: @paths-ford-casing-width;
            b/line-width: @paths-ford-casing-width;
            a/line-offset: 0.5*[width_nominal] + @paths-background-width + 0.5*@paths-ford-casing-width;
            b/line-offset: -0.5*[width_nominal] - @paths-background-width - 0.5*@paths-ford-casing-width;
          }
          a/line-join: round;
          b/line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_track'] {
      [int_bridge = 'yes'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-bridge-casing-width);
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 14][access != 'no'][int_bridge = 'ford'],
        [zoom >= 15] {
          a/line-color: @ford-casing;
          b/line-color: @ford-casing;
          [int_bridge = 'mountain_pass'] {
            a/line-color: @mountain-pass-casing;
            b/line-color: @mountain-pass-casing;
          }
          a/line-width: @paths-ford-casing-width-z14;
          b/line-width: @paths-ford-casing-width-z14;
          a/line-offset: 0.5*[width_nominal] + @paths-background-width + 0.5*@paths-ford-casing-width-z14;
          b/line-offset: -0.5*[width_nominal] - @paths-background-width - 0.5*@paths-ford-casing-width-z14;
          [zoom >= 15] {
            a/line-width: @paths-ford-casing-width;
            b/line-width: @paths-ford-casing-width;
            a/line-offset: 0.5*[width_nominal] + @paths-background-width + 0.5*@paths-ford-casing-width;
            b/line-offset: -0.5*[width_nominal] - @paths-background-width - 0.5*@paths-ford-casing-width;
          }
          a/line-join: round;
          b/line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
          line-width: @track-width-z13 + 2 * (@track-background-width + @paths-tunnel-casing-width);
          [zoom >= 15]{
            line-width: @track-width-z15 + 2 * (@track-background-width + @paths-tunnel-casing-width);
          }
        }
      }
    }

    // bridge casings railways
    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      [int_bridge = 'yes'] {
        [zoom >= 13] {
          line-width: 4;
          [zoom >= 15] {
            line-width: 5;
          }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_subway'] {
      [int_bridge = 'yes'] {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [int_bridge = 'yes'] {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_rail'],
    [feature = 'railway_preserved'],
    [feature = 'railway_monorail'][zoom >= 14] {
      [int_bridge = 'yes'] {
        [zoom >= 13] {
          line-width: 6.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      [int_bridge = 'yes'] {
        [zoom >= 13] {
          line-width: 5.7;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 15],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      [int_bridge = 'yes'] {
        [zoom >= 13] {
          line-width: 6;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    // bridge casings aeroways
    [feature = 'aeroway_runway'] {
      [int_bridge = 'yes'][int_tunnel = 'no'] {
        [zoom >= 14] {
          line-width: [width_max] + 2 * [casing_width];
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_taxiway'] {
      [int_bridge = 'yes'][int_tunnel = 'no'] {
        [zoom >= 14] {
          line-width: [width_max] + 2 * [casing_width];
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_raceway'] {
      [int_bridge = 'yes'] {
        [zoom >= 14] {
          line-width: [width_max] + 2 * [casing_width];
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 14] {
          line-color: @raceway-casing;
          line-width: [width_max] + 2 * [casing_width];
          line-dasharray: 4,2;
          line-join: round;
        }
      }
    }

    // ground unit tagged width casings
    [int_tunnel = 'no'] {
      [width > 0.0] {
        [feature = 'highway_motorway'] {
          tagged/line-color: @motorway-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }
        [feature = 'highway_trunk'] {
          tagged/line-color: @trunk-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }
        [feature = 'highway_primary'] {
          tagged/line-color: @primary-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }
        [feature = 'highway_secondary'] {
          tagged/line-color: @secondary-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }
        [feature = 'highway_tertiary'] {
          tagged/line-color: @tertiary-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }
        [feature = 'highway_residential'],
        [feature = 'highway_unclassified'] {
          tagged/line-color: @residential-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            line-join: round;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }
        [feature = 'highway_road'] {
          tagged/line-color: @road-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }

        [feature = 'highway_service'] {
          tagged/line-color: @service-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }

        [feature = 'highway_pedestrian'] {
          tagged/line-color: @pedestrian-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }

        [feature = 'highway_living_street'] {
          tagged/line-color: @living-street-casing;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @bridge-casing;
            tagged/line-cap: butt;
            [int_bridge = 'ford'],
            [int_bridge = 'ford_node'] {
              tagged/line-color: @ford-casing;
            }
            [int_bridge = 'mountain_pass'] {
              tagged/line-color: @mountain-pass-casing;
            }
          }
        }

        // casing for paths with mapped width at high zoom levels
        [zoom >= 18][width >= 4.0] {
          [feature = 'highway_bridleway'],
          [feature = 'highway_footway'],
          [feature = 'highway_cycleway'],
          [feature = 'highway_path'] {
            tagged/line-color: @pedestrian-casing;
            tagged/line-width: [width];
            tagged/line-join: round;
            tagged/line-cap: round;
            [int_bridge != 'no'] {
              tagged/line-color: @bridge-casing;
              tagged/line-cap: butt;
              [int_bridge = 'ford'],
              [int_bridge = 'ford_node'] {
                tagged/line-color: @ford-casing;
              }
              [int_bridge = 'mountain_pass'] {
                tagged/line-color: @mountain-pass-casing;
              }
            }
          }
          [feature = 'highway_track'] {
            tagged/line-color: @track-fill;
            tagged/line-width: [width];
            tagged/line-join: round;
            tagged/line-cap: round;
            [int_bridge != 'no'] {
              tagged/line-color: @bridge-casing;
              tagged/line-cap: butt;
              [int_bridge = 'ford'],
              [int_bridge = 'ford_node'] {
                tagged/line-color: @ford-casing;
              }
              [int_bridge = 'mountain_pass'] {
                tagged/line-color: @mountain-pass-casing;
              }
            }
          }
        }
      } // end width > 0
    } // end no tunnel

    // sidewalks casings
    [zoom >= 18] {
      [feature = 'highway_sidewalk_foot'],
      [feature = 'highway_sidewalk_cycle'],
      [feature = 'highway_sidewalk_both'] {
        line-color: @footway-casing;
        //line-cap: round;
        line-join: round;
        line-opacity: 0.65;
        line-width: @sidewalks-width + 2 * @paths-background-width;
        [feature = 'highway_sidewalk_cycle'] { line-color: @cycleway-casing; }
        [int_bridge != 'no'] {
          bridge/line-color: @bridge-casing;
          [int_bridge = 'ford'],
          [int_bridge = 'ford_node'] {
            bridge/line-color: @ford-casing;
          }
          [int_bridge = 'mountain_pass'] {
            bridge/line-color: @mountain-pass-casing;
          }
          bridge/line-join: round;
          bridge/line-offset: -2.5 * [casing_width];
          bridge/line-width: [casing_width];
        }
      }
    }

  } // == end casing ==


  [road_layer = 'background'] {

    // bright background for bridges/tunnels of paths and rails
    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [int_bridge != 'no'] {
        [int_bridge != 'ford'][int_bridge != 'ford_node'][int_bridge != 'mountain_pass'] {
          [zoom >= 14][access != 'no'],
          [zoom >= 15] {
            line-width: [width_nominal] + 2 * @paths-background-width;
            line-color: @bridleway-casing;
            line-join: round;
          }
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @bridleway-casing;
          line-join: round;
          line-cap: round;
          line-width: [width_nominal] + 2 * @paths-background-width;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      [int_bridge != 'no'] {
        [int_bridge != 'ford'][int_bridge != 'ford_node'][int_bridge != 'mountain_pass'] {
          [zoom >= 14][access != 'no'],
          [zoom >= 15] {
            line-width: [width_nominal] + 2 * @paths-background-width;
            line-color: @footway-casing;
            line-join: round;
          }
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @footway-casing;
          line-join: round;
          line-cap: round;
          line-width: [width_nominal] + 2 * @paths-background-width;
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * @paths-background-width;
          line-color: @cycleway-casing;
          line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @cycleway-casing;
          line-join: round;
          line-cap: round;
          line-width: [width_nominal] + 2 * @paths-background-width;
        }
      }
    }

    [feature = 'highway_steps'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: [width_max] + 2 * @paths-background-width;
          line-color: @steps-casing;
          line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @steps-casing;
          line-join: round;
          line-width: [width_max] + 2 * @paths-background-width;
        }
      }
    }

    [feature = 'highway_track'] {
      /* We don't set opacity here, so it's 1.0. Aside from that, it's basically a copy of roads-fill::background in the track part of ::fill */
      [int_bridge = 'yes'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @track-casing;
          line-join: round;
          line-width: [width_nominal] + 2 * @paths-background-width;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @track-casing;
          line-join: round;
          line-cap: round;
          line-width: [width_nominal] + 2 * @paths-background-width;
          [zoom >= 15] {
            line-width: [width_nominal] + 2 * @track-background-width;
          }
        }
      }
    }

    [feature = 'railway_rail'][zoom >= 13],
    [feature = 'railway_preserved'][zoom >= 13],
    [feature = 'railway_monorail'][zoom >= 14] {
      [int_bridge != 'no'] {
        line-width: 5;
        line-color: white;
        line-join: round;
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      [int_bridge != 'no'] {
        [zoom >= 13] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 15],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      [int_bridge != 'no'] {
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      [int_bridge != 'no'] {
        [zoom >= 13] {
          line-width: 3;
          [zoom >= 15] {
            line-width: 4;
          }
          line-color: white;
        }
      }
    }

    [feature = 'railway_subway'] {
      [int_bridge != 'no'] {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [int_bridge != 'no'] {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'highway_platform'],
    [feature = 'railway_platform'] {
      [zoom >= 16] {
        line-width: [width_max] + 2;
        line-color: grey;
        line-cap: round;
        line-join: round;
      }
    }

    // paths with mapped width at high zoom levels
    // their fill is rendered as background so the center line is above it
    // excludes unpaved - which are a separate sublayer below
    [int_tunnel = 'no'][int_surface != 'unpaved'] {
      [zoom >= 18][width >= 4.0] {
        [feature = 'highway_bridleway'],
        [feature = 'highway_footway'],
        [feature = 'highway_cycleway'],
        [feature = 'highway_path'] {
          tagged/line-color: @pedestrian-fill;
          tagged/line-width: [width] - 2 * [casing_width];
          tagged/line-join: round;
          tagged/line-cap: round;
        }
        [feature = 'highway_track'] {
          tagged/line-color: @track-area-fill;
          tagged/line-width: [width] - 2 * [casing_width];
          tagged/line-join: round;
          tagged/line-cap: round;
        }
      }
    }
  } // == end background ==

  [road_layer = 'background_unpaved'] {
    // paths with mapped width at high zoom levels
    // their fill is rendered as background so the center line is above it
    [int_tunnel = 'no'][int_surface = 'unpaved'] {
      [zoom >= 18][width >= 4.0] {
        [feature = 'highway_bridleway'],
        [feature = 'highway_footway'],
        [feature = 'highway_cycleway'],
        [feature = 'highway_path'] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_pedestrian-fill.svg');
          polygon-pattern-alignment: global;
        }
        [feature = 'highway_track'] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_track-area-fill.svg');
          polygon-pattern-alignment: global;
        }
      }
    }
  } // == end background_unpaved ==

}

#roads-low-zoom[zoom < 10],
#roads[zoom >= 10] {

  [road_layer = 'fill'] {

    /*
     * The construction rules for small roads are strange, since if construction is null its assumed that
     * it's a more major road. The line-width = 0 could be removed by playing with the query to set a construction
     * string for non-small roads.
     *
     * Also note that these rules are quite sensitive to re-ordering, since the instances end up swapping round
     * (and then the dashes appear below the fills). See
     * https://github.com/gravitystorm/openstreetmap-carto/issues/23
     * https://github.com/mapbox/carto/issues/235
     * https://github.com/mapbox/carto/issues/237
     */
    [feature = 'highway_construction'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: @construction;

        [construction = 'motorway'],
        [construction = 'motorway_link'] {
          line-color: @motorway-fill;
        }
        [construction = 'trunk'],
        [construction = 'trunk_link'] {
          line-color: @trunk-fill;
        }
        [construction = 'primary'],
        [construction = 'primary_link'] {
          line-color: @primary-fill;
        }
        [construction = 'secondary'],
        [construction = 'secondary_link'] {
          line-color: @secondary-fill;
        }
        [construction = 'tertiary'],
        [construction = 'tertiary_link'] {
          line-color: @tertiary-fill;
        }
        [construction = 'residential'],
        [construction = 'unclassified'],
        [construction = 'living_street'] {
          [zoom < 13] {
            line-width: 0;
            b/line-width: 0;
          }
          [zoom >= 13][zoom < 14] {
            line-width: 3;
            b/line-width: 2;
            b/line-dasharray: 5,3;
          }
        }
        [construction = 'service'] {
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
        }
        b/line-width: 2;
        b/line-dasharray: 4,2;
        b/line-color: white;
        [zoom >= 13] {
          line-width: 4;
          b/line-width: 3.5;
          b/line-dasharray: 6,4;
        }
        [zoom >= 16] {
          line-width: 8;
          b/line-width: 7;
          b/line-dasharray: 8,6;
        }
        [construction = 'footway'],
        [construction = 'cycleway'],
        [construction = 'bridleway'],
        [construction = 'path'],
        [construction = 'track'] {
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
          line-color: white;
          line-width: 3;
          line-opacity: 0.4;
          b/line-width: 1.2;
          b/line-color: @construction;
          b/line-dasharray: 2,6;
        }
        [construction = 'steps'] {
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
          line-color: white;
          line-width: 3;
          line-opacity: 0.4;
          b/line-width: 1.2;
          b/line-color: @construction;
          b/line-dasharray: 2,3;
          [zoom >= 15] {
            line-width: 3.0 + 2 * @paths-background-width;
            b/line-width: 3.0;
          }
        }
      }
    }

    // paths halo and fill
    [int_bridge != 'ford_node'][int_bridge != 'mountain_pass'] {
      [feature = 'highway_steps'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line/line-color: @steps-fill;
          [access = 'no'] { line/line-color: @steps-fill-noaccess; }
          line/line-dasharray: 2,1;
          line/line-width: [width_max];
        }
      }

      [feature = 'highway_bridleway'],
      [feature = 'highway_path'][horse = 'designated'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
           [int_tunnel = 'no'][int_bridge = 'no'][zoom >= 15] {
            [zoom < 18],
            [width <= 4.0] {
              background/line-color: @bridleway-casing;
              background/line-cap: round;
              background/line-join: round;
              background/line-width: [width_nominal] + 2 * @paths-background-width;
              background/line-opacity: 0.4;
            }
          }
          line/line-color: @bridleway-fill;
          [access = 'no'] { line/line-color: @bridleway-fill-noaccess; }
          line/line-dasharray: 4,2;
          line/line-width: [width_nominal];
          [int_tunnel != 'no'] {
            line/line-join: round;
            line/line-cap: round;
          }
        }
      }

      [feature = 'highway_footway'],
      [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          [int_tunnel = 'no'][int_bridge = 'no'][zoom >= 15] {
            [zoom < 18],
            [width <= 4.0] {
              background/line-color: @footway-casing;
              background/line-cap: round;
              background/line-join: round;
              background/line-width: [width_nominal] + 2 * @paths-background-width*0.8;
              background/line-opacity: 0.65;
            }
          }
          line/line-color: @footway-fill-lowzoom;
          line/line-join: round;
          line/line-cap: round;
          line/line-width: [width_nominal];
          [zoom >= 15] {
            line/line-color: @footway-fill;
            [access = 'no'] { line/line-color: @footway-fill-noaccess; }
            line/line-dasharray: 7,2;
            line/line-color: @footway-fill;
            [zoom >= 17] {
              line/line-dasharray: 7.5,2.5;
            }
            [zoom >= 18] {
              line/line-dasharray: 8,3;
            }
            [zoom >= 19] {
              line/line-dasharray: 8,3;
            }

            [int_surface = 'unpaved'] {
              line/line-dasharray: 2,2.5;
              line/line-width: [width_nominal]*1.3;
              [zoom >= 17] {
                line/line-dasharray: 2.4,2.7;
              }
              [zoom >= 18] {
                line/line-dasharray: 2.8,3;
              }
              [zoom >= 19] {
                line/line-dasharray: 2.8,3;
              }
            }
            [int_surface = null] {
              line/line-dasharray: 4,3,1,3;
              line/line-width:  [width_nominal]*1.15;
            }
          }
        }
      }

      [feature = 'highway_cycleway'],
      [feature = 'highway_path'][bicycle = 'designated'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          [int_tunnel = 'no'][int_bridge = 'no'][zoom >= 15] {
            [zoom < 18],
            [width <= 4.0] {
              background/line-color: @cycleway-casing;
              background/line-cap: round;
              background/line-join: round;
              background/line-width: [width_nominal] + 2 * @paths-background-width*0.8;
              background/line-opacity: 0.65;
              [zoom >= 16] {
                background/line-width: [width_nominal] + 2 * @paths-background-width;
              }
            }
          }
          line/line-color: @cycleway-fill-lowzoom;
          line/line-join: round;
          line/line-cap: round;
          line/line-width: [width_nominal];
          [zoom >= 15] {
            line/line-color: @cycleway-fill;
            [access = 'no'] { line/line-color: @cycleway-fill-noaccess; }
            line/line-dasharray: 7,2;
            [zoom >= 17] {
              line/line-dasharray: 7.5,2.5;
            }
            [zoom >= 18] {
              line/line-dasharray: 8,3;
            }
            [zoom >= 19] {
              line/line-dasharray: 8,3;
            }
            [int_surface = 'unpaved'] {
              line/line-dasharray: 2,2.5;
              line/line-width: [width_nominal]*1.3;
              [zoom >= 17] {
                line/line-dasharray: 2.4,2.7;
              }
              [zoom >= 18] {
                line/line-dasharray: 2.8,3;
              }
              [zoom >= 19] {
                line/line-dasharray: 2.8,3;
              }
            }
            [int_surface = null] {
              line/line-dasharray: 4,3,1,3;
              line/line-width: [width_nominal]*1.15;
            }
          }
        }
      }

      [feature = 'highway_track'] {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          /* The white casing that you mainly see against forests and other dark features */
          [int_tunnel = 'no'][int_bridge = 'no'][zoom >= 15] {
            [zoom < 18],
            [width <= 4.0] {
              background/line-opacity: 0.4;
              background/line-color: @track-casing;
              background/line-join: round;
              background/line-cap: round;
              background/line-width: [width_nominal] + 2 * @paths-background-width;
            }
          }

          /* Set the properties of the brown inside */
          line/line-color: @track-fill;
          [access = 'no'] { line/line-color: @track-fill-noaccess; }
          line/line-dasharray: 100,0;
          line/line-cap: round;
          line/line-join: round;
          line/line-opacity: 0.8;
          line/line-clip:false;
          line/line-width: [width_nominal];

          [zoom >= 14] {
            line/line-dasharray: 100,0;
            [zoom >= 15] { line/line-dasharray: 12,2.5; }
            [zoom >= 17] { line/line-dasharray: 12.5,3; }
            [zoom >= 18] { line/line-dasharray: 13,3.5; }
            [int_surface = 'unpaved'] {
              [zoom >= 15] { line/line-dasharray: 3.2,3; }
              [zoom >= 17] { line/line-dasharray: 3.8,3.2; }
              [zoom >= 18] { line/line-dasharray: 4.2,3.5; }
            }
            [int_surface = null] {
              line/line-dasharray: 6.5,3,2,3;
            }
          }
        }
      }
    } // end no ford_node or mountain_pass


    // sidewalks fill
    [zoom >= 18] {
      [feature = 'highway_sidewalk_foot'],
      [feature = 'highway_sidewalk_cycle'],
      [feature = 'highway_sidewalk_both'] {
        line-color: @footway-fill;
        [feature = 'highway_sidewalk_cycle'] { line-color: @cycleway-fill; }
        line-width: @sidewalks-width;
      }
      [int_bridge = 'no'][int_tunnel = 'no'] {
        [feature = 'highway_sidewalk_handrail'][service = 'steps'] {
          side/line-color: #444;
          side/line-join: round;
          side/line-offset: [casing_width];
          side/line-width: 0.4;
          side/line-opacity: 0.75;
        }
      }
    }

    // nominal width highway fills
    [width_nominal > 0.0] {
      [feature = 'highway_motorway'] {
        [zoom >= 5][zoom < 12] {
          line-color: @motorway-low-zoom;
          line-width: [width_nominal];
        }
        [zoom >= 12] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @motorway-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @motorway-tunnel-fill;
            }
            line-cap: round;
            line-join: round;
          }
        }
      }

      [feature = 'highway_trunk'] {
        [zoom >= 5][zoom < 12] {
          line-color: @trunk-low-zoom;
          line-width: [width_nominal];
        }
        [zoom >= 12] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @trunk-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @trunk-tunnel-fill;
            }
            line-cap: round;
            line-join: round;
          }
        }
      }

      [feature = 'highway_primary'] {
        [zoom >= 8][zoom < 12] {
          line-color: @primary-low-zoom;
          line-width: [width_nominal];
        }
        [zoom >= 12] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @primary-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @primary-tunnel-fill;
            }
            line-cap: round;
            line-join: round;
          }
        }
      }

      [feature = 'highway_secondary'] {
        [zoom >= 9][zoom < 12] {
          line-color: @unimportant-road;
          line-width: [width_nominal];
        }
        [zoom >= 10][zoom < 12] {
          line-color: @secondary-low-zoom;
        }
        [zoom >= 12] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @secondary-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @secondary-tunnel-fill;
            }
            line-cap: round;
            line-join: round;
          }
        }
      }

      [feature = 'highway_tertiary'] {
        [zoom >= 10][zoom < 12] {
          line-color: @unimportant-road;
          line-width: [width_nominal];
        }
        [zoom >= 12] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @tertiary-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @tertiary-tunnel-fill;
            }
            line-cap: round;
            line-join: round;
          }
        }
      }

      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'] {
        [zoom = 12] {
          line-color: @unimportant-road;
          line-width: [width_nominal];
        }
        [zoom >= 13] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @residential-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @residential-tunnel-fill;
            }
            line-cap: round;
            line-join: round;
          }
        }
      }

      [feature = 'highway_living_street'] {
        [zoom >= 13] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @living-street-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @living-street-tunnel-fill;
            }
            line-join: round;
            line-cap: round;
          }
        }
      }

      [feature = 'highway_road'] {
        [zoom >= 10][zoom < 14] {
          line-color: @unimportant-road;
          line-join: round;
          line-cap: round;
          line-width: 1;
        }
        [zoom >= 14] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-width: [width_nominal] - 2 * [casing_width];
            line-color: @road-fill;
            line-join: round;
            line-cap: round;
          }
        }
      }

      [feature = 'highway_service'] {
        [zoom = 13][service = 'INT-normal'] {
          line-width: [width_nominal];
          line-color: @unimportant-road;
        }
        [zoom >= 14][service = 'INT-normal'],
        [zoom >= 16][service = 'INT-minor'] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @service-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @service-tunnel-fill;
            }
            line-join: round;
            line-cap: round;
          }
        }
      }

      [feature = 'highway_pedestrian'] {
        [zoom >= 13] {
          [int_surface != 'unpaved'],
          [int_tunnel != 'no'] {
            line-color: @pedestrian-fill;
            line-width: [width_nominal] - 2 * [casing_width];
            [int_tunnel != 'no'] {
              line-color: @pedestrian-tunnel-fill;
            }
            line-join: round;
            line-cap: round;
          }
        }
      }
    } // width_nominal > 0.0

    // ground unit tagged width fills
    [int_tunnel = 'no'][int_surface != 'unpaved'] {
      [width > 0.0] {
        [zoom >= 12] {
          [feature = 'highway_motorway'] {
            tagged/line-color: @motorway-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
          [feature = 'highway_trunk'] {
            tagged/line-color: @trunk-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
          [feature = 'highway_primary'] {
            tagged/line-color: @primary-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
          [feature = 'highway_secondary'] {
            tagged/line-color: @secondary-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
          [feature = 'highway_tertiary'] {
            tagged/line-color: @tertiary-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
          [feature = 'highway_residential'][zoom >= 13],
          [feature = 'highway_unclassified'][zoom >= 13] {
            tagged/line-color: @residential-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
          [feature = 'highway_living_street'][zoom >= 13] {
            tagged/line-color: @living-street-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
          [feature = 'highway_pedestrian'][zoom >= 13] {
            tagged/line-color: @pedestrian-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
          [feature = 'highway_road'][zoom >= 14] {
            tagged/line-color: @road-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }

          [feature = 'highway_service'][zoom >= 14][service = 'INT-normal'],
          [feature = 'highway_service'][zoom >= 16][service = 'INT-minor'] {
            tagged/line-color: @service-fill;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
        }
      } // width > 0.0
    } // tunnel = no, int_surface != unpaved


    [feature = 'railway_rail'][zoom >= 7],
    [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
      [zoom < 13] {
        line-color: #787878;
        line-width: 0.5;
        [zoom >= 8] { line-width: 0.8; }
        [zoom >= 12] { line-width: 0.9; }
        line-join: round;
        [int_tunnel != 'no'] {
          line-dasharray: 5,2;
        }
      }
      [zoom >= 13] {
        [int_tunnel = 'no'] {
          dark/line-join: round;
          light/line-color: white;
          light/line-join: round;
          [feature = 'railway_rail'] {
            dark/line-color: #707070;
            dark/line-width: 3;
            light/line-width: 1;
            light/line-dasharray: 8,8;
            [zoom >= 15] {
              light/line-dasharray: 0,8,8,1;
            }
            [zoom >= 18] {
              dark/line-width: 4;
              light/line-width: 2;
            }
          }
          [feature = 'railway_INT-spur-siding-yard'] {
            dark/line-width: 2;
            dark/line-color: #aaa;
            light/line-width: 0.8;
            light/line-dasharray: 0,8,8,1;
            [zoom >= 18] {
              dark/line-width: 3;
              light/line-width: 1;
            }
          }
        }
        [int_tunnel != 'no'] {
          line-color: #787878;
          line-width: 2.8;
          line-dasharray: 6,4;
          line-clip: false;
          [feature = 'railway_INT-spur-siding-yard'] {
            line-color: #aaa;
            line-width: 1.9;
            line-dasharray: 3,3;
            [zoom >= 18] {
            line-width: 2.7;
            }
          }
          [feature = 'railway_rail'][zoom >= 18] {
            line-dasharray: 8,6;
            line-width: 3.8;
          }
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 8] {
        line-color: #ccc;
        [zoom >= 10] { line-color: #aaa; }
        [zoom >= 13] { line-color: #666; }
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        [int_tunnel != 'no'] {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_miniature'] {
      [zoom >= 15] {
        line/line-width: 1.2;
        line/line-color: #999;
        dashes/line-width: 3;
        dashes/line-color: #999;
        dashes/line-dasharray: 1,10;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      [zoom >= 12] {
        line-color: #6E6E6E;
        line-width: 0.75;
        [zoom >= 13] {
          line-color: #444;
        }
        [zoom >= 14] {
          line-width: 1;
        }
        [zoom >= 15] {
          line-width: 1.5;
          [feature = 'railway_tram-service'] {
            line-width: 0.5;
          }
        }
        [zoom >= 17] {
          line-width: 2;
          [feature = 'railway_tram-service'] {
            line-width: 1;
          }
        }
        [zoom >= 18] {
          [feature = 'railway_tram-service'] {
            line-width: 1.5;
          }
        }
        [zoom >= 19] {
          [feature = 'railway_tram-service'] {
            line-width: 2;
          }
        }
        [int_tunnel != 'no'] {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_subway'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #999;
        [int_tunnel != 'no'] {
          line-dasharray: 5,3;
        }
      }
      [int_bridge != 'no'] {
        [zoom >= 14] {
          line-width: 2;
          line-color: #999;
        }
      }
    }

    [feature = 'railway_preserved'] {
      [zoom >= 12] {
        dark/line-width: 1.5;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 3;
          dark/line-color: #999999;
          light/line-width: 1;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_INT-preserved-ssy'] {
      [zoom >= 12] {
        dark/line-width: 1;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 2;
          dark/line-color: #999999;
          light/line-width: 0.8;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_monorail'] {
      [zoom >= 14] {
        background/line-width: 4;
        background/line-color: #fff;
        background/line-opacity: 0.4;
        background/line-cap: round;
        background/line-join: round;
        line/line-width: 3;
        line/line-color: #777;
        line/line-dasharray: 2,3;
        line/line-cap: round;
        line/line-join: round;
      }
    }

    [feature = 'railway_construction'] {
      [zoom >= 13] {
        line-color: grey;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
        [zoom >= 14] {
          line-dasharray: 2,3;
        }
        [zoom >= 15] {
          line-width: 3;
          line-dasharray: 3,3;
        }
      }
    }

    [feature = 'railway_disused'] {
      [zoom >= 15] {
        line-color: #aaa;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
      }
    }

    [feature = 'railway_turntable'] {
      [zoom >= 16] {
        line-width: 1.5;
        line-color: #999;
      }
    }


    [int_tunnel = 'no'] {
      [feature = 'aeroway_runway'] {
        [zoom >= 11] {
          [zoom < 12],
          [int_surface != 'unpaved'] {
            line-color: @runway-fill;
            line-width: [width_max];
          }
        }
      }

      [feature = 'aeroway_taxiway'] {
        [zoom >= 11] {
          [zoom < 14],
          [int_surface != 'unpaved'] {
            line-color: @taxiway-fill;
            line-width: [width_max];
          }
        }
      }

      [feature = 'aeroway_construction'] {
        [zoom >= 12] {
          line-width: 2;
          line-color: @runway-fill;
          b/line-color: white;
          b/line-width: 2;
          b/line-dasharray: 4,2;
          [construction = 'taxiway'] {
            line-width: 1.5;
            b/line-width: 1.5;
          }
          [zoom >= 14] {
            line-width: 4;
            b/line-width: 3.5;
            b/line-dasharray: 5,3;
            [construction = 'taxiway'] {
             line-width: 2.5;
              b/line-width: 2;
            }
          }
          [zoom >= 16] {
            line-width: 10;
            b/line-width: 9;
            b/line-dasharray: 7,6;
            [construction = 'taxiway'] {
             line-width: 6;
              b/line-width: 5.5;
            }
          }
        }
      }
    }

    [feature = 'highway_raceway'] {
      [zoom >= 12] {
        [zoom < 14],
        [int_surface != 'unpaved'],
        [int_tunnel != 'no'] {
          line-color: @raceway-fill;
          line-width: [width_max];
          [int_tunnel != 'no'] {
            line-color: @raceway-tunnel-fill;
          }
          line-cap: round;
          line-join: round;
        }
      }
    }

    [feature = 'highway_platform'],
    [feature = 'railway_platform'] {
      [zoom >= 16] {
        [int_surface != 'unpaved'] {
          line-width: [width_max];
          line-color: @platform-fill;
          line-cap: round;
          line-join: round;
        }
      }
    }

  } // == end fill ==

}

#roads {

  [road_layer = 'tc_casing'][zoom >= 15] {
    line-width: [width] + 2 * [casing_width];
    [int_bridge = 'yes'] {
      line-color: @bridge-casing;
    }

    [feature = 'highway_trunk'] {
      [int_bridge != 'yes'] { line-color: @trunk-casing; }
    }
    [feature = 'highway_primary'] {
       [int_bridge != 'yes'] { line-color: @primary-casing; }
    }
    [feature = 'highway_secondary'] {
       [int_bridge != 'yes'] { line-color: @secondary-casing; }
    }
    [feature = 'highway_tertiary'] {
      [int_bridge != 'yes'] { line-color: @tertiary-casing; }
    }
    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [int_bridge != 'yes'] { line-color: @residential-casing; }
    }
    [feature = 'highway_living_street'] {
      [int_bridge != 'yes'] { line-color: @living-street-casing; }
    }
    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom < 16] {
        line-width: 0.0;
      }
      [zoom >= 16] { [int_bridge != 'yes'] { line-color: @service-casing; } }
    }
    [feature = 'highway_service'][service = 'INT-minor'] {
      [zoom < 18] {
        line-width: 0.0;
      }
      [zoom >= 18] { [int_bridge != 'yes'] { line-color: @service-casing; } }
    }
    [feature = 'highway_track'][zoom >= 15] {
      [int_bridge != 'yes'] { line-color: @track-fill; }
    }
    line-cap: round;
    line-join: round;
  } // == end tc_casing ==

  [road_layer = 'tc_fill'][zoom >= 15] {
    line-width: [width];

    [feature = 'highway_trunk'] {
      line-color: @trunk-fill;
    }
    [feature = 'highway_primary'] {
      line-color: @primary-fill;
    }
    [feature = 'highway_secondary'] {
      line-color: @secondary-fill;
    }
    [feature = 'highway_tertiary'] {
      line-color: @tertiary-fill;
    }
    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      line-color: @residential-fill;
    }
    [feature = 'highway_living_street'] {
      line-color: @living-street-fill;
    }
    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom < 16] {
        line-width: 0.0;
      }
      [zoom >= 16] { line-color: @service-fill; }
    }
    [feature = 'highway_service'][service = 'INT-minor'] {
      [zoom < 18] {
        line-width: 0.0;
      }
      [zoom >= 18] { line-color: @service-fill; }
    }
    [feature = 'highway_track'][zoom >= 15] {
      line-color: @track-area-fill;
    }
    line-cap: round;
    line-join: round;

    [tc_type = 'turning_loop'] {
      center/line-width: [width] * 0.35 + 2 * [casing_width];

      [feature = 'highway_trunk'] { center/line-color: @trunk-casing; }
      [feature = 'highway_primary'] { center/line-color: @primary-casing; }
      [feature = 'highway_secondary'] { center/line-color: @secondary-casing; }
      [feature = 'highway_tertiary'] { center/line-color: @tertiary-casing; }
      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'] { center/line-color: @residential-casing; }
      [feature = 'highway_living_street'] { center/line-color: @living-street-casing; }
      [feature = 'highway_service'] { center/line-color: @service-casing; }
      [feature = 'highway_track'] { center/line-color: @track-fill; }
      [int_bridge = 'yes'] {
        center/line-color: @bridge-casing;
      }

      hole/line-width: [width] * 0.35;
      hole/line-color: @land-color;

      [feature = 'highway_service'][service = 'INT-normal'] {
        [zoom < 16] {
          center/line-width: 0.0;
          hole/line-width: 0.0;
        }
      }
      [feature = 'highway_service'][service = 'INT-minor'] {
        [zoom < 18] {
          center/line-width: 0.0;
          hole/line-width: 0.0;
        }
      }
      center/line-cap: round;
      center/line-join: round;
      hole/line-cap: round;
      hole/line-join: round;
    }

    [tc_type = 'mini_roundabout'] {
      center/line-width: @mini-roundabout-width;

      [feature = 'highway_trunk'] { center/line-color: @trunk-casing; }
      [feature = 'highway_primary'] { center/line-color: @primary-casing; }
      [feature = 'highway_secondary'] { center/line-color: @secondary-casing; }
      [feature = 'highway_tertiary'] { center/line-color: @tertiary-casing; }
      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'] { center/line-color: @residential-casing; }
      [feature = 'highway_living_street'] { center/line-color: @living-street-casing; }
      [feature = 'highway_service'] { center/line-color: @service-casing; }
      [feature = 'highway_track'] { center/line-color: @track-fill; }

      [feature = 'highway_service'][service = 'INT-normal'] {
        [zoom < 16] {
          center/line-width: 0.0;
        }
      }
      [feature = 'highway_service'][service = 'INT-minor'] {
        [zoom < 18] {
          center/line-width: 0.0;
        }
      }
      center/line-cap: round;
      center/line-join: round;
    }
  } // == end tc_fill ==

  [road_layer = 'junction_casing'],
  [road_layer = 'area_casing'] {
    [zoom >= 14] {

      // road types with no mapped area rendering: only junction polygons
      [road_layer = 'junction_casing'] {
        [feature = 'highway_motorway'] {
          line-color: @motorway-casing;
          line-width: 2 * [casing_width];
          [int_bridge = 'yes'] {
            line-color: @bridge-casing;
          }
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
        [feature = 'highway_trunk'] {
          line-color: @trunk-casing;
          line-width: 2 * [casing_width];
          [int_bridge = 'yes'] {
            line-color: @bridge-casing;
          }
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
        [feature = 'highway_primary'] {
          line-color: @primary-casing;
          line-width: 2 * [casing_width];
          [int_bridge = 'yes'] {
            line-color: @bridge-casing;
          }
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
        [feature = 'highway_secondary'] {
          line-color: @secondary-casing;
          line-width: 2 * [casing_width];
          [int_bridge = 'yes'] {
            line-color: @bridge-casing;
          }
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
        [feature = 'highway_tertiary'] {
          line-color: @tertiary-casing;
          line-width: 2 * [casing_width];
          [int_bridge = 'yes'] {
            line-color: @bridge-casing;
          }
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
        [feature = 'highway_living_street'] {
          line-color: @living-street-casing;
          line-width: 2 * [casing_width];
          [int_bridge = 'yes'] {
            line-color: @bridge-casing;
          }
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
        [feature = 'highway_road'] {
          line-color: @road-casing;
          line-width: 2 * [casing_width];
          [int_bridge = 'yes'] {
            line-color: @bridge-casing;
          }
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
      }

      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'] {
        line-color: @residential-casing;
        line-width: 2 * [casing_width];
        [int_bridge = 'yes'] {
          line-color: @bridge-casing;
        }
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
      }

      [feature = 'highway_service'] {
        // junctions for minor service roads only at z16+
        [service = 'INT-normal'],
        [zoom >= 16][service = 'INT-minor'],
        [road_layer = 'area_casing'] {
          line-color: @service-casing;
          line-width: 2 * [casing_width];
          [int_bridge = 'yes'] {
            line-color: @bridge-casing;
          }
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
      }

      [feature = 'highway_pedestrian'],
      [feature = 'highway_bridleway'][road_layer = 'junction_casing'][zoom >= 18],
      [feature = 'highway_footway'][road_layer = 'junction_casing'][zoom >= 18],
      [feature = 'highway_cycleway'][road_layer = 'junction_casing'][zoom >= 18],
      [feature = 'highway_path'][road_layer = 'junction_casing'][zoom >= 18],
      [feature = 'highway_footway'][road_layer = 'area_casing'],
      [feature = 'highway_cycleway'][road_layer = 'area_casing'],
      [feature = 'highway_path'][road_layer = 'area_casing'] {
        line-color: @pedestrian-casing;
        line-width: 2 * [casing_width];
        [int_bridge = 'yes'] {
          line-color: @bridge-casing;
        }
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
      }

      // this is junctions only
      [feature = 'highway_steps'][width > 0.0] {
        polygon-fill: mix(@steps-fill, @steps-casing, 75%);
      }

      [feature = 'highway_track'][road_layer = 'junction_casing'][zoom >= 18],
      [feature = 'highway_track'][road_layer = 'area_casing'] {
        line-color: @track-fill;
        line-width: 2 * [casing_width];
        [road_layer = 'area_casing'] {
          line-width: 1;
          line-dasharray: 5,4,2,4;
        }
        line-cap: round;
        line-join: round;
      }

      [feature = 'highway_platform'],
      [feature = 'railway_platform'] {
        [zoom >= 16] {
          line-color: grey;
          line-width: 2;
          line-cap: round;
          line-join: round;
          [int_tunnel != 'no'] {
            line-dasharray: 4,2;
            line-cap: butt;
          }
        }
      }
    }
  } // == end area/junctions casing ==

  [road_layer = 'junction_fill'],
  [road_layer = 'area_fill'] {
    [zoom >= 14] {

      // road types with no mapped area rendering: only junction polygons
      [road_layer = 'junction_fill'] {
        [feature = 'highway_motorway'] {
          [int_surface != 'upaved'] {
            polygon-fill: @motorway-fill;
          }
          [int_tunnel != 'no'] {
            polygon-fill: @motorway-tunnel-fill;
          }
          [int_tunnel = 'no'][int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_motorway-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
        [feature = 'highway_trunk'] {
          [int_surface != 'unpaved'] {
            polygon-fill: @trunk-fill;
          }
          [int_tunnel != 'no'] {
            polygon-fill: @trunk-tunnel-fill;
          }
          [int_tunnel = 'no'][int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_trunk-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
        [feature = 'highway_primary'] {
          [int_surface != 'unpaved'] {
            polygon-fill: @primary-fill;
          }
          [int_tunnel != 'no'] {
            polygon-fill: @primary-tunnel-fill;
          }
          [int_tunnel = 'no'][int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_primary-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
        [feature = 'highway_secondary'] {
          [int_surface != 'unpaved'] {
            polygon-fill: @secondary-fill;
          }
          [int_tunnel != 'no'] {
            polygon-fill: @secondary-tunnel-fill;
          }
          [int_tunnel = 'no'][int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_secondary-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
        [feature = 'highway_tertiary'] {
          [int_surface != 'unpaved'] {
            polygon-fill: @tertiary-fill;
          }
          [int_tunnel != 'no'] {
            polygon-fill: @tertiary-tunnel-fill;
          }
          [int_tunnel = 'no'][int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_tertiary-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
        [feature = 'highway_living_street'] {
          [int_surface != 'unpaved'] {
            polygon-fill: @living-street-fill;
          }
          [int_tunnel != 'no'] {
            polygon-fill: @living-street-tunnel-fill;
          }
          [int_tunnel = 'no'][int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_residential-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
        [feature = 'highway_road'] {
          [int_surface != 'unpaved'] {
            polygon-fill: @road-fill;
          }
          [int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_road-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
      }

      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'] {
        [int_surface != 'unpaved'] {
          polygon-fill: @residential-fill;
        }
        [int_tunnel != 'no'] {
          polygon-fill: @residential-tunnel-fill;
        }
        [int_tunnel = 'no'][int_surface = 'unpaved'] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_residential-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_service'] {
        // junctions for minor service roads only at z16+
        [service = 'INT-normal'],
        [zoom >= 16][service = 'INT-minor'],
        [road_layer = 'area_fill'] {
          [int_surface != 'unpaved'] {
            polygon-fill: @service-fill;
          }
          [int_tunnel != 'no'] {
            polygon-fill: @service-tunnel-fill;
          }
          [int_tunnel = 'no'][int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_service-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
      }

      [feature = 'highway_pedestrian'],
      [feature = 'highway_bridleway'][road_layer = 'junction_fill'][zoom >= 18],
      [feature = 'highway_footway'][road_layer = 'junction_fill'][zoom >= 18],
      [feature = 'highway_cycleway'][road_layer = 'junction_fill'][zoom >= 18],
      [feature = 'highway_path'][road_layer = 'junction_fill'][zoom >= 18],
      [feature = 'highway_footway'][road_layer = 'area_fill'],
      [feature = 'highway_cycleway'][road_layer = 'area_fill'],
      [feature = 'highway_path'][road_layer = 'area_fill'] {
        [int_surface != 'unpaved'] {
          polygon-fill: @pedestrian-fill;
        }
        [int_tunnel != 'no'] {
          polygon-fill: @pedestrian-tunnel-fill;
        }
        [int_tunnel = 'no'][int_surface = 'unpaved'] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_pedestrian-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_track'][road_layer = 'junction_fill'][zoom >= 18],
      [feature = 'highway_track'][road_layer = 'area_fill'] {
        [int_surface != 'unpaved'] {
          polygon-fill: @track-area-fill;
        }
        [int_surface = 'unpaved'] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_track-area-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_platform'],
      [feature = 'railway_platform'] {
        [zoom >= 16] {
          [int_surface != 'unpaved'] {
            polygon-fill: @platform-fill;
          }
          [int_surface = 'unpaved'] {
            polygon-pattern-file: url('symbols/unpaved/unpaved_platform-fill.svg');
            polygon-pattern-alignment: global;
          }
        }
      }
    }

    [feature = 'aeroway_runway'][zoom >= 11] {
      [zoom < 14],
      [int_surface != 'unpaved'] {
        polygon-fill: @runway-fill;
      }
      [zoom >= 14][int_surface = 'unpaved'] {
        polygon-pattern-file: url('symbols/unpaved/unpaved_aeroway-fill.svg');
        polygon-pattern-alignment: global;
      }
    }

    [feature = 'aeroway_taxiway'][zoom >= 13] {
      [zoom < 14],
      [int_surface != 'unpaved'] {
        polygon-fill: @taxiway-fill;
      }
      [zoom >= 14][int_surface = 'unpaved'] {
        polygon-pattern-file: url('symbols/unpaved/unpaved_aeroway-fill.svg');
        polygon-pattern-alignment: global;
      }
    }

    [feature = 'aeroway_helipad'][zoom >= 16] {
      [int_surface != 'unpaved'] {
        polygon-fill: @helipad-fill;
      }
      [int_surface = 'unpaved'] {
        polygon-pattern-file: url('symbols/unpaved/unpaved_aeroway-fill.svg');
        polygon-pattern-alignment: global;
      }
    }
  } // == end area_fill ==


  [road_layer = 'fill_unpaved'] {
    // normal linear highway fills for unpaved roads
    // these are converted to polygons in SQL
    [width_nominal > 0.0] {
      [feature = 'highway_motorway'] {
        [zoom >= 12] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_motorway-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_trunk'] {
        [zoom >= 12] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_trunk-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_primary'] {
        [zoom >= 12] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_primary-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_secondary'] {
        [zoom >= 12] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_secondary-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_tertiary'] {
        [zoom >= 12] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_tertiary-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'] {
        [zoom >= 13] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_residential-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_living_street'] {
        [zoom >= 13] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_pedestrian-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_road'] {
        [zoom >= 14] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_road-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_service'] {
        [zoom >= 14][service = 'INT-normal'],
        [zoom >= 16][service = 'INT-minor'] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_service-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_pedestrian'] {
        [zoom >= 13] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_pedestrian-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_raceway'] {
        [zoom >= 14] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_raceway-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'aeroway_runway'] {
        [zoom >= 12] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_aeroway-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'aeroway_taxiway'] {
        [zoom >= 14] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_aeroway-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

      [feature = 'highway_platform'],
      [feature = 'railway_platform'] {
        [zoom >= 16] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_platform-fill.svg');
          polygon-pattern-alignment: global;
        }
      }

    } // width_nominal > 0.0
  } // == end fill_unpaved ==

  [road_layer = 'centerline'] {

    // ford/mountain_pass centerlines
    [feature = 'highway_motorway'],
    [feature = 'highway_trunk'],
    [feature = 'highway_primary'],
    [feature = 'highway_secondary'],
    [feature = 'highway_tertiary'] {
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 15] {
          line-width: 0.35*[width_nominal];
          line-color: @river-color;
          [int_bridge = 'mountain_pass'] { line-color: @landform-color; }
          line-join: round;
        }
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_living_street'],
    [feature = 'highway_pedestrian'] {
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 15] {
          line-width: 0.25*[width_nominal];
          line-color: @river-color;
          [int_bridge = 'mountain_pass'] { line-color: @landform-color; }
          line-join: round;
          [zoom >= 17] { line-width: 0.35*[width_nominal]; }
        }
      }
    }

    [feature = 'highway_road'] {
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 17] {
          line-width: 0.25*[width_nominal];
          line-color: @river-color;
          [int_bridge = 'mountain_pass'] { line-color: @landform-color; }
          line-join: round;
          [zoom >= 18] { line-width: 0.35*[width_nominal]; }
        }
      }
    }

    [feature = 'highway_service'] {
      [service = 'INT-normal'] {
        [int_bridge = 'ford'],
        [int_bridge = 'ford_node'],
        [int_bridge = 'mountain_pass'] {
          [zoom >= 17] {
            line-width: 0.25*[width_nominal];
            line-color: @river-color;
            [int_bridge = 'mountain_pass'] { line-color: @landform-color; }
            line-join: round;
            [zoom >= 18] { line-width: 0.35*[width_nominal]; }
          }
        }
      }
    }

    // aeroway centerlines
    [feature = 'aeroway_runway'] {
      [zoom >= 15] {
        line-color: @runway-centerline;
        line-width: 0.4;
      }
    }
    [feature = 'aeroway_taxiway'] {
      [zoom >= 15] {
        line-color: @taxiway-centerline;
        line-width: 0.4;
        line-dasharray: 6,3;
      }
    }

    // lanes markings
    [int_tunnel = 'no']
    [zoom >= 18][width_max > 7.5] {
      [feature = 'highway_motorway'],
      [feature = 'highway_trunk'],
      [feature = 'highway_primary'],
      [feature = 'highway_secondary'],
      [feature = 'highway_tertiary'],
      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'],
      [feature = 'highway_living_street'],
      [feature = 'highway_pedestrian'],
      [feature = 'highway_road'],
      [feature = 'highway_service'] {
        [int_lanes = '2'],
        [int_lanes = '2u'] {
          lanes/line-width: 0.5 * [casing_width];
          lanes/line-cap: round;
          lanes/line-join: round;
          [int_lanes = '2u'] { lanes/line-dasharray: 2,2.4; }
          [feature = 'highway_motorway'] { lanes/line-color: @motorway-casing; }
          [feature = 'highway_trunk'] { lanes/line-color: @trunk-casing; }
          [feature = 'highway_primary'] { lanes/line-color: @primary-casing; }
          [feature = 'highway_secondary'] { lanes/line-color: @secondary-casing; }
          [feature = 'highway_tertiary'] { lanes/line-color: @tertiary-casing; }
          [feature = 'highway_residential'],
          [feature = 'highway_unclassified'] { lanes/line-color: @residential-casing; }
          [feature = 'highway_living_street'] { lanes/line-color: @living-street-casing; }
          [feature = 'highway_pedestrian'] { lanes/line-color: @pedestrian-casing; }
          [feature = 'highway_road'] { lanes/line-color: @road-casing; }
          [feature = 'highway_service'] { lanes/line-color: @service-casing; }
        }
        [int_lanes = '3'],
        [int_lanes = '3u'] {
          lanes1/line-width: 0.5 * [casing_width];
          lanes2/line-width: 0.5 * [casing_width];
          lanes1/line-cap: round;
          lanes1/line-join: round;
          lanes2/line-cap: round;
          lanes2/line-join: round;
          [int_lanes = '3u'] { lanes1/line-dasharray: 2,2.4; lanes2/line-dasharray: 2,2.4; }
          lanes1/line-offset: 0.167 * [width_max];
          lanes2/line-offset: -0.167 * [width_max];
          [feature = 'highway_motorway'] {
            lanes1/line-color: @motorway-casing;
            lanes2/line-color: @motorway-casing;
          }
          [feature = 'highway_trunk'] {
            lanes1/line-color: @trunk-casing;
            lanes2/line-color: @trunk-casing;
          }
          [feature = 'highway_primary'] {
            lanes1/line-color: @primary-casing;
            lanes2/line-color: @primary-casing;
          }
          [feature = 'highway_secondary'] {
            lanes1/line-color: @secondary-casing;
            lanes2/line-color: @secondary-casing;
          }
          [feature = 'highway_tertiary'] {
            lanes1/line-color: @tertiary-casing;
            lanes2/line-color: @tertiary-casing;
          }
          [feature = 'highway_residential'],
          [feature = 'highway_unclassified'] {
            lanes1/line-color: @residential-casing;
            lanes2/line-color: @residential-casing;
          }
          [feature = 'highway_living_street'] {
            lanes1/line-color: @living-street-casing;
            lanes2/line-color: @living-street-casing;
          }
          [feature = 'highway_pedestrian'] {
            lanes1/line-color: @pedestrian-casing;
            lanes2/line-color: @pedestrian-casing;
          }
          [feature = 'highway_road'] {
            lanes1/line-color: @road-casing;
            lanes2/line-color: @road-casing;
          }
          [feature = 'highway_service'] {
            lanes1/line-color: @service-casing;
            lanes2/line-color: @service-casing;
          }
        }
        [int_lanes = '4'],
        [int_lanes = '4u'] {
          lanes/line-width: 0.5 * [casing_width];
          lanes1/line-width: 0.5 * [casing_width];
          lanes2/line-width: 0.5 * [casing_width];
          lanes/line-cap: round;
          lanes/line-join: round;
          lanes1/line-cap: round;
          lanes1/line-join: round;
          lanes2/line-cap: round;
          lanes2/line-join: round;
          [int_lanes = '4u'] { lanes/line-dasharray: 2,2.4; lanes1/line-dasharray: 2,2.4; lanes2/line-dasharray: 2,2.4; }
          lanes1/line-offset: 0.25 * [width_max];
          lanes2/line-offset: -0.25 * [width_max];
          [zoom >= 19] {
            lanes1/line-offset: 0.25 * [width_max];
            lanes2/line-offset: -0.25 * [width_max];
          }
          [feature = 'highway_motorway'] {
            lanes/line-color: @motorway-casing;
            lanes1/line-color: @motorway-casing;
            lanes2/line-color: @motorway-casing;
          }
          [feature = 'highway_trunk'] {
            lanes/line-color: @trunk-casing;
            lanes1/line-color: @trunk-casing;
            lanes2/line-color: @trunk-casing;
          }
          [feature = 'highway_primary'] {
            lanes/line-color: @primary-casing;
            lanes1/line-color: @primary-casing;
            lanes2/line-color: @primary-casing;
          }
          [feature = 'highway_secondary'] {
            lanes/line-color: @secondary-casing;
            lanes1/line-color: @secondary-casing;
            lanes2/line-color: @secondary-casing;
          }
          [feature = 'highway_tertiary'] {
            lanes/line-color: @tertiary-casing;
            lanes1/line-color: @tertiary-casing;
            lanes2/line-color: @tertiary-casing;
          }
          [feature = 'highway_residential'],
          [feature = 'highway_unclassified'] {
            lanes/line-color: @residential-casing;
            lanes1/line-color: @residential-casing;
            lanes2/line-color: @residential-casing;
          }
          [feature = 'highway_living_street'] {
            lanes/line-color: @living-street-casing;
            lanes1/line-color: @living-street-casing;
            lanes2/line-color: @living-street-casing;
          }
          [feature = 'highway_pedestrian'] {
            lanes/line-color: @pedestrian-casing;
            lanes1/line-color: @pedestrian-casing;
            lanes2/line-color: @pedestrian-casing;
          }
          [feature = 'highway_road'] {
            lanes/line-color: @road-casing;
            lanes1/line-color: @road-casing;
            lanes2/line-color: @road-casing;
          }
          [feature = 'highway_service'] {
            lanes/line-color: @service-casing;
            lanes1/line-color: @service-casing;
            lanes2/line-color: @service-casing;
          }
        }
      }

      // only display the centerline of steps in case drawing
      // width is wide enough to not obscure the steps pattern
      [feature = 'highway_steps'][width >= 4.0] {
        [int_lanes = 'handrail'] {
          lanes/line-color: #444;
          lanes/line-width: 0.4;
          lanes/line-opacity: 0.6;
          lanes/line-cap: round;
          lanes/line-join: round;
        }
        [int_lanes = 'ramp_bicycle'] {
          lanes/line-color: @cycleway-fill;
          lanes/line-width: 1.0;
          lanes/line-cap: round;
          lanes/line-join: round;
        }
        [int_lanes = 'ramp_wheelchair'],
        [int_lanes = 'ramp_stroller'] {
          lanes/line-color: @steps-fill;
          lanes/line-width: 1.0;
          lanes/line-cap: round;
          lanes/line-join: round;
        }
      }
    } // end lane markings

    // access restrictions marking
    [access = 'destination'] {
      [feature = 'highway_secondary'],
      [feature = 'highway_tertiary'],
      [feature = 'highway_unclassified'],
      [feature = 'highway_residential'],
      [feature = 'highway_living_street'],
      [feature = 'highway_pedestrian'] {
        [zoom >= 15] {
          access/line-color: @access-marking;
          [feature = 'highway_living_street'],
          [feature = 'highway_pedestrian'] {
            access/line-color: @access-marking-living-street;
          }
          access/line-join: round;
          access/line-cap: round;
          access/line-width: 3;
          access/line-dasharray: 0.1,9;
          [zoom >= 17] {
            access/line-width: 6;
            access/line-dasharray: 0.1,12;
          }
        }
      }
      [feature = 'highway_road'],
      [feature = 'highway_service'][service = 'INT-normal'] {
        [zoom >= 15] {
          access/line-color: @access-marking;
          access/line-join: round;
          access/line-cap: round;
          access/line-width: 2;
          access/line-dasharray: 0.1,4;
          [zoom >= 17] {
            access/line-width: 4;
            access/line-dasharray: 0.1,9;
          }
        }
      }
      [feature = 'highway_service'][service = 'INT-minor'] {
        [zoom >= 16] {
          access/line-color: @access-marking;
          access/line-join: round;
          access/line-cap: round;
          access/line-width: 1;
          access/line-dasharray: 0.1,4;
          [zoom >= 17] {
            access/line-width: 2;
          }
        }
      }
    }
    [access = 'no'] {
      [feature = 'highway_motorway'],
      [feature = 'highway_trunk'],
      [feature = 'highway_primary'],
      [feature = 'highway_secondary'],
      [feature = 'highway_tertiary'],
      [feature = 'highway_unclassified'],
      [feature = 'highway_residential'],
      [feature = 'highway_living_street'],
      [feature = 'highway_pedestrian'] {
        [zoom >= 15] {
          access/line-color: @access-marking;
          [feature = 'highway_living_street'],
          [feature = 'highway_pedestrian'] {
            access/line-color: @access-marking-living-street;
          }
          access/line-join: round;
          access/line-cap: round;
          access/line-width: 2;
          access/line-dasharray: 6,6;
          [zoom >= 17] {
            access/line-width: 6;
            access/line-dasharray: 10,12;
          }
        }
      }
      [feature = 'highway_road'],
      [feature = 'highway_service'][service = 'INT-normal'] {
        [zoom >= 15] {
          access/line-color: @access-marking;
          access/line-join: round;
          access/line-cap: round;
          access/line-width: 2;
          access/line-dasharray: 6,8;
          [zoom >= 17] {
            access/line-width: 3;
            access/line-dasharray: 8,10;
          }
        }
      }
      [feature = 'highway_service'][service = 'INT-minor'][zoom >= 16] {
        access/line-color: @access-marking;
        access/line-join: round;
        access/line-cap: round;
        access/line-width: 1;
        access/line-dasharray: 6,8;
        [zoom >= 17] {
          access/line-width: 2;
        }
      }
    }
  } // == end centerline ==

}

#junctions {
  [highway = 'motorway_junction'] {
    [zoom >= 11] {
      text-name: "[ref]";
      text-size: 10;
      text-fill: @junction-text-color;
      text-min-distance: 2;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-wrap-character: ";";
      text-wrap-width: 2; // effectively break after every wrap character
      text-line-spacing: -1.5; // -0.15 em
      [zoom >= 12] {
        ["name" != null]["ref" = null] {
          text-name: "[name]";
        }
        ["name" != null]["ref" != null] {
          text-name: [name] + "\n" + [ref];
        }
      }
      [zoom >= 15] {
        text-size: 11;
        text-line-spacing: -1.65; // -0.15 em
      }
    }
  }

  [junction = 'yes'],
  [highway = 'traffic_signals'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: 30;  // 3.0 em
      text-line-spacing: -1.5; // -0.15 em
      text-min-distance: 2;
      [zoom >= 17] {
        text-size: 11;
        text-line-spacing: -1.65; // -0.15 em
        /* Offset name on traffic_signals on zoomlevels where they are displayed
        in order not to hide the text */
        [highway = 'traffic_signals'] {
          text-dy: 14;
        }
      }
    }
  }
}

#bridge-text  {
  [man_made = 'bridge'] {
    [zoom >= 12][way_pixels > 62.5] {
      text-name: "[name]";
      text-size: 10;
      text-wrap-width: 30; // 3 em
      text-line-spacing: -1.2; // -0.15 em
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-min-distance: 2;
      text-wrap-width: 30;
      text-placement: interior;
      [way_pixels > 250] {
        text-size: 11;
        text-wrap-width: 33; // 3 em
        text-line-spacing: -1.35; // -0.15 em
      }
      [way_pixels > 1000] {
        text-size: 12;
        text-wrap-width: 36; // 3 em
        text-line-spacing: -1.65; // -0.15 em
        text-halo-radius: @standard-halo-radius * 1.5;
      }
      [way_pixels > 4000] {
        text-size: 13;
        text-wrap-width: 39; // 3 em
        text-line-spacing: -1.80; // -0.15 em
      }
      [way_pixels > 16000] {
        text-size: 14;
        text-wrap-width: 42; // 3 em
        text-line-spacing: -1.95; // -0.15 em
        text-halo-radius: 2;
      }
    }
  }
}

#guideways {
  [zoom >= 13] {
    line-width: 3;
    line-color: #6666ff;
    line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
  }
  [zoom >= 14] {
    b/line-dasharray: 0,11,8,1;
  }
}

#roads-text-ref-low-zoom[zoom < 13] {
  [highway = 'motorway'][zoom >= 10],
  [highway = 'trunk'][zoom >= 11],
  [highway = 'primary'][zoom >= 11],
  [highway = 'secondary'][zoom >= 12] {
    shield-name: "[refs]";
    shield-size: @shield-size;
    shield-line-spacing: @shield-line-spacing;
    shield-placement: line;
    shield-spacing: @shield-spacing;
    shield-repeat-distance: @shield-repeat-distance;
    shield-margin: @shield-margin;
    shield-face-name: @shield-font;
    shield-clip: @shield-clip;

    [highway = 'motorway'] {
      shield-fill: @motorway-shield;
      shield-file: url("symbols/shields/motorway_[width]x[height].svg");
    }

    [highway = 'trunk'] {
      shield-fill: @trunk-shield;
      shield-file: url("symbols/shields/trunk_[width]x[height].svg");
    }

    [highway = 'primary'] {
      shield-fill: @primary-shield;
      shield-file: url("symbols/shields/primary_[width]x[height].svg");
    }

    [highway = 'secondary'] {
      shield-fill: @secondary-shield;
      shield-file: url("symbols/shields/secondary_[width]x[height].svg");
    }
  }
}

#roads-text-ref {
  [highway = 'motorway'],
  [highway = 'trunk'],
  [highway = 'primary'],
  [highway = 'secondary'],
  [highway = 'tertiary'] {
    [zoom >= 13] {
      shield-name: "[refs]";
      shield-size: @shield-size;
      shield-line-spacing: @shield-line-spacing;

      [zoom >= 16] {
        shield-size: @shield-size-z16;
        shield-line-spacing: @shield-line-spacing-z16;
      }
      [zoom >= 18] {
        shield-size: @shield-size-z18;
        shield-line-spacing: @shield-line-spacing-z18;
      }

      shield-placement: line;
      shield-spacing: @shield-spacing;
      shield-repeat-distance: @shield-repeat-distance;
      shield-margin: @shield-margin;
      shield-face-name: @shield-font;
      shield-clip: @shield-clip;

      [highway = 'motorway'] {
        shield-fill: @motorway-shield;
        shield-file: url("symbols/shields/motorway_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/motorway_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/motorway_[width]x[height]_z18.svg");
        }
      }
      [highway = 'trunk'] {
        shield-fill: @trunk-shield;
        shield-file: url("symbols/shields/trunk_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/trunk_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/trunk_[width]x[height]_z18.svg");
        }
      }
      [highway = 'primary'] {
        shield-fill: @primary-shield;
        shield-file: url("symbols/shields/primary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/primary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/primary_[width]x[height]_z18.svg");
        }
      }
      [highway = 'secondary'] {
        shield-fill: @secondary-shield;
        shield-file: url("symbols/shields/secondary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/secondary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/secondary_[width]x[height]_z18.svg");
        }
      }
      [highway = 'tertiary'] {
        shield-fill: @tertiary-shield;
        shield-file: url("symbols/shields/tertiary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/tertiary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/tertiary_[width]x[height]_z18.svg");
        }
      }
    }
  }

  [highway = 'unclassified'],
  [highway = 'residential'] {
    [zoom >= 15] {
      text-name: "[refs]";
      text-size: 8;

      [zoom >= 16] {
        text-size: 9;
      }
      [zoom >= 18] {
        text-size: 10;
      }

      text-fill: #000;
      text-face-name: @book-fonts;
      text-min-distance: 40;
      text-halo-radius: 2;
      text-halo-fill: @standard-halo-fill;
      text-spacing: 760;
      text-clip: false;
    }
  }

  [highway = 'runway'],
  [highway = 'taxiway'] {
    [zoom >= 15] {
      text-name: "[refs]";
      text-size: 10;
      text-fill: #333;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }
}

#roads-text-name {
  [highway = 'motorway'],
  [highway = 'trunk'],
  [highway = 'primary'],
  [highway = 'construction'][construction = 'motorway'],
  [highway = 'construction'][construction = 'trunk'],
  [highway = 'construction'][construction = 'primary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      [tunnel = 'no'] {
        text-halo-radius: @standard-halo-radius;
        [highway = 'motorway'] { text-halo-fill: @motorway-fill; }
        [highway = 'trunk'] { text-halo-fill: @trunk-fill; }
        [highway = 'primary'] { text-halo-fill: @primary-fill; }
      }
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }
  [highway = 'secondary'],
  [highway = 'construction'][construction = 'secondary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @secondary-fill;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }
  [highway = 'tertiary'],
  [highway = 'construction'][construction = 'tertiary'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @tertiary-fill;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }
  [highway = 'construction'][construction = null][zoom >= 16] {
    text-name: "[name]";
    text-size: 9;
    text-fill: black;
    text-spacing: 300;
    text-clip: false;
    text-placement: line;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-face-name: @book-fonts;

    [zoom >= 17] {
      text-size: 11;
      text-spacing: 400;
    }
    [zoom >= 19] {
      text-size: 12;
      text-spacing: 400;
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'],
  [highway = 'construction'][construction = 'residential'],
  [highway = 'construction'][construction = 'unclassified'],
  [highway = 'construction'][construction = 'road'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @residential-fill;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
      text-spacing: 400;
    }
    [zoom >= 19] {
      text-size: 12;
      text-spacing: 400;
    }
  }

  [highway = 'raceway'],
  [highway = 'service'],
  [highway = 'construction'][construction = 'raceway'],
  [highway = 'construction'][construction = 'service'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: @standard-halo-radius;
      [highway = 'raceway'] { text-halo-fill: @raceway-fill; }
      [highway = 'service'] { text-halo-fill: @service-fill; }
      text-face-name: @book-fonts;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }

  [highway = 'living_street'],
  [highway = 'pedestrian'],
  [highway = 'construction'][construction = 'living_street'],
  [highway = 'construction'][construction = 'pedestrian'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: @standard-halo-radius;
      [highway = 'living_street'] { text-halo-fill: @living-street-fill; }
      [highway = 'pedestrian'] { text-halo-fill: @pedestrian-fill; }
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }
}

#roads-area-text-name {
  [way_pixels > 3000][highway != 'platform'],
  [zoom >= 17] {
    text-name: "[name]";
    text-size: 11;
    text-face-name: @book-fonts;
    text-placement: interior;
    text-wrap-width: 30; // 2.7 em
    text-line-spacing: -1.7; // -0.15 em
  }
}

#paths-text-name {
  [highway = 'track'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 8;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-vertical-alignment: middle;
      text-dy: 5;
    }
    [zoom >= 16] {
      text-size: 9;
      text-dy: 7;
    }
    [zoom >= 17] {
      text-size: 11;
      text-dy: 9;
    }
  }

  [highway = 'bridleway'],
  [highway = 'footway'],
  [highway = 'cycleway'],
  [highway = 'path'],
  [highway = 'steps'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 9;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-vertical-alignment: middle;
      text-dy: 7;
    }
    [zoom >= 17] {
      text-size: 11;
      text-dy: 9;
    }
  }
}

.directions::directions {
  [zoom >= 16] {
    // intentionally omitting highway_platform, highway_construction
    [highway = 'motorway'],
    [highway = 'motorway_link'],
    [highway = 'trunk'],
    [highway = 'trunk_link'],
    [highway = 'primary'],
    [highway = 'primary_link'],
    [highway = 'secondary'],
    [highway = 'secondary_link'],
    [highway = 'tertiary'],
    [highway = 'tertiary_link'],
    [highway = 'residential'],
    [highway = 'unclassified'],
    [highway = 'living_street'],
    [highway = 'road'],
    [highway = 'service'],
    [highway = 'pedestrian'],
    [highway = 'raceway'],
    [highway = 'cycleway'],
    [highway = 'footway'],
    [highway = 'path'],
    [highway = 'steps'],
    [highway = 'track'],
    [highway = 'bridleway'] {
      [oneway = 'yes'],
      [oneway = '-1'] {
        marker-placement: line;
        marker-spacing: 180;
        marker-max-error: 0.5;

        marker-file: url('symbols/oneway.svg');
        [oneway = '-1'] {
          marker-file: url('symbols/oneway-reverse.svg');
        }

        [highway = 'motorway'],
        [highway = 'motorway_link'] {
          marker-fill: @motorway-oneway-arrow-color;
        }
        [highway = 'trunk'],
        [highway = 'trunk_link'] {
          marker-fill: @trunk-oneway-arrow-color;
        }
        [highway = 'primary'],
        [highway = 'primary_link'] {
          marker-fill: @primary-oneway-arrow-color;
        }
        [highway = 'secondary'],
        [highway = 'secondary_link'] {
          marker-fill: @secondary-oneway-arrow-color;
        }
        [highway = 'tertiary'],
        [highway = 'tertiary_link'] {
          marker-fill: @tertiary-oneway-arrow-color;
        }
        [highway = 'residential'],
        [highway = 'unclassified'],
        [highway = 'road'],
        [highway = 'service'] {
          marker-fill: @residential-oneway-arrow-color;
        }
        [highway = 'living_street'] {
          marker-fill: @living-street-oneway-arrow-color;
        }
        [highway = 'pedestrian'] {
          marker-fill: @pedestrian-oneway-arrow-color;
        }
        [highway = 'raceway'] {
          marker-fill: @raceway-oneway-arrow-color;
        }
        [highway = 'footway'],
        [highway = 'path'] {
          marker-fill: @footway-oneway-arrow-color;
          [horse = 'designated'] {
            marker-fill: @bridleway-oneway-arrow-color;
          }
          [bicycle = 'designated'] {
            marker-fill: @cycleway-oneway-arrow-color;
          }
        }
        [highway = 'steps'] {
          marker-fill: @steps-oneway-arrow-color;
        }
        [highway = 'cycleway'] {
          marker-fill: @cycleway-oneway-arrow-color;
        }
        [highway = 'track'] {
          marker-fill: @track-oneway-arrow-color;
        }
        [highway = 'bridleway'] {
          marker-fill: @bridleway-oneway-arrow-color;
        }
      }
    }
  }
}

#highway-embankments[zoom >= 16] {
  line-pattern-file: url('symbols/embankment_a2.svg');
  [type = 'dyke'][zoom >= 17] {
    line-pattern-file: url('symbols/dyke.svg');
    [zoom >= 18] { line-pattern-file: url('symbols/dyke2.svg'); }
  }
  [type = 'cutting'] { line-pattern-file: url('symbols/embankment_a1.svg'); }
}
