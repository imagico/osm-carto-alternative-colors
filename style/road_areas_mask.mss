
@road_mask_black: #000000;
@road_mask_white: #ffffff;

#road_areas_mask {

  [road_layer = 'casing'] {

    // normal high zoom road casings (including bridge casings for railways and aeroways)
    [feature = 'highway_motorway'],
    [feature = 'highway_trunk'],
    [feature = 'highway_primary'],
    [feature = 'highway_secondary'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_busway'],
    [feature = 'highway_bus_guideway'],
    [feature = 'highway_road'],
    [feature = 'highway_service'][service = 'INT-normal'],
    [feature = 'highway_service'][zoom >= 16][service = 'INT-minor'],
    [feature = 'highway_pedestrian'],
    [feature = 'highway_living_street'] {
      line-color: @road_mask_black;
      line-width: [width_nominal];
      line-join: round;
      line-cap: round;
      [int_tunnel != 'no'] {
        line-dasharray: 4,2;
        line-cap: butt;
      }
      [int_bridge != 'no'] {
        line-join: round;
        line-cap: butt;
      }
    }

    [feature = 'highway_platform'],
    [feature = 'railway_platform'] {
      [zoom >= 16] {
        line-width: [width_max] + 2;
        line-color: @road_mask_black;
        line-cap: round;
        line-join: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
        [int_bridge != 'no'] {
          line-join: round;
          line-cap: butt;
        }
      }
    }

    [feature = 'highway_steps'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][int_access != 'no'],
        [zoom >= 15] {
          line-width: [width_max] + 2 * (@paths-background-width + @paths-bridge-casing-width);
          line-color: @road_mask_black;
          line-join: round;
        }
      }
      [int_bridge != 'yes'] {
        [zoom >= 15] {
          halo/line-width: [width_max] + 2 * @paths-background-width;
          halo/line-color: @road_mask_black;
          halo/line-join: round;
          halo/line-opacity: 0.4;
        }
      }
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 14][int_access != 'no'][int_bridge = 'ford'],
        [zoom >= 15] {
          a/line-color: @road_mask_black;
          b/line-color: @road_mask_black;
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
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-width: [width_max] + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          line-color: @road_mask_black;
          line-dasharray: 4,2;
          line-opacity: 1.0;
        }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_footway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_path'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][int_access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-bridge-casing-width);
          line-color: @road_mask_black;
          line-join: round;
        }
      }
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 14][int_access != 'no'][int_bridge = 'ford'],
        [zoom >= 15] {
          a/line-color: @road_mask_black;
          b/line-color: @road_mask_black;
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
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          line-color: @road_mask_black;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_track'] {
      [int_bridge = 'yes'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-width: [width_nominal] + 2 * (@paths-background-width + @paths-bridge-casing-width);
          line-color: @road_mask_black;
          line-join: round;
        }
      }
      [int_bridge = 'ford'],
      [int_bridge = 'ford_node'],
      [int_bridge = 'mountain_pass'] {
        [zoom >= 14][int_access != 'no'][int_bridge = 'ford'],
        [zoom >= 15] {
          a/line-color: @road_mask_black;
          b/line-color: @road_mask_black;
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
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
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
          line-color: @road_mask_black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_subway'] {
      [int_bridge = 'yes'] {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: @road_mask_black;
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
          line-color: @road_mask_black;
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
          line-color: @road_mask_black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      [int_bridge = 'yes'] {
        [zoom >= 13] {
          line-width: 5.7;
          line-color: @road_mask_black;
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
          line-color: @road_mask_black;
          line-join: round;
        }
      }
    }

    // bridge casings aeroways
    [feature = 'aeroway_runway'] {
      [int_bridge = 'yes'][int_tunnel = 'no'] {
        [zoom >= 14] {
          line-width: [width_max] + 2 * [casing_width];
          line-color: @road_mask_black;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_taxiway'] {
      [int_bridge = 'yes'][int_tunnel = 'no'] {
        [zoom >= 14] {
          line-width: [width_max] + 2 * [casing_width];
          line-color: @road_mask_black;
          line-join: round;
        }
      }
    }

    [feature = 'highway_raceway'] {
      [int_bridge = 'yes'] {
        [zoom >= 14] {
          line-width: [width_max] + 2 * [casing_width];
          line-color: @road_mask_black;
          line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 14] {
          line-color: @road_mask_black;
          line-width: [width_max] + 2 * [casing_width];
          line-dasharray: 4,2;
          line-join: round;
        }
      }
    }

    // ground unit tagged width casings
    [int_tunnel = 'no'] {
      [width > 0.0] {
        [feature = 'highway_motorway'],
        [feature = 'highway_trunk'],
        [feature = 'highway_primary'],
        [feature = 'highway_secondary'],
        [feature = 'highway_tertiary'],
        [feature = 'highway_residential'],
        [feature = 'highway_unclassified'],
        [feature = 'highway_busway'],
        [feature = 'highway_bus_guideway'],
        [feature = 'highway_road'],
        [feature = 'highway_service'],
        [feature = 'highway_pedestrian'],
        [feature = 'highway_living_street'] {
          tagged/line-color: @road_mask_black;
          tagged/line-width: [width];
          tagged/line-join: round;
          tagged/line-cap: round;
          [int_bridge != 'no'] {
            tagged/line-color: @road_mask_black;
            tagged/line-cap: butt;
          }
        }

        // casing for paths with mapped width at high zoom levels
        [zoom >= 18][width >= 4.0] {
          [feature = 'highway_bridleway'],
          [feature = 'highway_footway'],
          [feature = 'highway_cycleway'],
          [feature = 'highway_path'],
          [feature = 'highway_track'] {
            tagged/line-color: @road_mask_black;
            tagged/line-width: [width];
            tagged/line-join: round;
            tagged/line-cap: round;
            [int_bridge != 'no'] {
              tagged/line-color: @road_mask_black;
              tagged/line-cap: butt;
            }
          }
        }
      } // end width > 0
    } // end no tunnel

    // sidewalks casings
    [zoom >= 18] {
      [feature = 'highway_side_foot'],
      [feature = 'highway_side_cycle'],
      [feature = 'highway_side_both'] {
        line-color: @road_mask_black;
        //line-cap: round;
        line-join: round;
        line-opacity: 0.65;
        line-width: @sidewalks-width + 2 * @paths-background-width;
        [int_bridge != 'no'] {
          bridge/line-color: @road_mask_black;
          bridge/line-join: round;
          bridge/line-offset: -2.5 * [casing_width];
          bridge/line-width: [casing_width];
        }
      }
      [feature = 'highway_side_parking'] {
        line-color: @road_mask_black;
        line-width: @paths-background-width;
      }
    }

  } // == end casing ==


  [road_layer = 'background'] {

    // bright background for bridges/tunnels of paths and rails
    [feature = 'highway_bridleway'],
    [feature = 'highway_footway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_path'] {
      [int_bridge != 'no'] {
        [int_bridge != 'ford'][int_bridge != 'ford_node'][int_bridge != 'mountain_pass'] {
          [zoom >= 14][int_access != 'no'],
          [zoom >= 15] {
            line-width: [width_nominal] + 2 * @paths-background-width;
            line-color: @road_mask_black;
            line-join: round;
          }
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
          line-join: round;
          line-cap: round;
          line-width: [width_nominal] + 2 * @paths-background-width;
        }
      }
      [int_tunnel = 'no'][int_bridge = 'no'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          [zoom < 18],
          [width <= 4.0] {
            line-color: @road_mask_black;
            line-cap: round;
            line-join: round;
            line-width: [width_nominal] + 2 * @paths-background-width;
            line-opacity: 0.4;
          }
        }
      }
    }

    [feature = 'highway_steps'] {
      [int_bridge = 'yes'] {
        [zoom >= 14][int_access != 'no'],
        [zoom >= 15] {
          line-width: [width_max] + 2 * @paths-background-width;
          line-color: @road_mask_black;
          line-join: round;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
          line-join: round;
          line-width: [width_max] + 2 * @paths-background-width;
        }
      }
    }

    [feature = 'highway_track'] {
      /* We don't set opacity here, so it's 1.0. Aside from that, it's basically a copy of roads-fill::background in the track part of ::fill */
      [int_bridge = 'yes'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
          line-join: round;
          line-width: [width_nominal] + 2 * @paths-background-width;
        }
      }
      [int_tunnel != 'no'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
          line-join: round;
          line-cap: round;
          line-width: [width_nominal] + 2 * @paths-background-width;
          [zoom >= 15] {
            line-width: [width_nominal] + 2 * @track-background-width;
          }
        }
      }
      /* The white casing that you mainly see against forests and other dark features */
      [int_tunnel = 'no'][int_bridge = 'no'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          [zoom < 18],
          [width <= 4.0] {
            line-opacity: 0.3;
            [zoom >= 14] { line-opacity: 0.4; }
            line-color: @road_mask_black;
            line-join: round;
            line-cap: round;
            line-width: [width_nominal] + 2 * @paths-background-width;
          }
        }
      }
    }

    [feature = 'railway_rail'][zoom >= 13],
    [feature = 'railway_preserved'][zoom >= 13],
    [feature = 'railway_monorail'][zoom >= 14] {
      [int_bridge != 'no'] {
        line-width: 5;
        line-color: @road_mask_black;
        line-join: round;
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      [int_bridge != 'no'] {
        line-width: 4;
        line-color: @road_mask_black;
        line-join: round;
      }
    }

    [feature = 'railway_disused'][zoom >= 15],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      [int_bridge != 'no'] {
        line-width: 4.5;
        line-color: @road_mask_black;
        line-join: round;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      [int_bridge != 'no'] {
        line-width: 3;
        [zoom >= 15] {
          line-width: 4;
        }
        line-color: @road_mask_black;
      }
    }

    [feature = 'railway_subway'] {
      [int_bridge != 'no'] {
        line-width: 4;
        line-color: @road_mask_black;
        line-join: round;
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [int_bridge != 'no'] {
        line-width: 4;
        line-color: @road_mask_black;
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
          tagged/line-color: @road_mask_black;
          tagged/line-width: [width] - 2 * [casing_width];
          tagged/line-join: round;
          tagged/line-cap: round;
        }
        [feature = 'highway_track'] {
          tagged/line-color: @road_mask_black;
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
          polygon-fill: @road_mask_black;
        }
        [feature = 'highway_track'] {
          polygon-fill: @road_mask_black;
        }
      }
    }
  } // == end background_unpaved ==

  gmic: ;
}

#roads {

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
        line-color: @road_mask_black;

        [construction = 'residential'],
        [construction = 'unclassified'],
        [construction = 'busway'],
        [construction = 'bus_guideway'],
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
        b/line-color: @road_mask_black;
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
          line-color: @road_mask_black;
          line-width: 3;
          line-opacity: 0.4;
          b/line-width: 1.2;
          b/line-color: @road_mask_black;
          b/line-dasharray: 2,6;
        }
        [construction = 'steps'] {
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
          line-color: @road_mask_black;
          line-width: 3;
          line-opacity: 0.4;
          b/line-width: 1.2;
          b/line-color: @road_mask_black;
          b/line-dasharray: 2,3;
          [zoom >= 15] {
            line-width: 3.0 + 2 * @paths-background-width;
            b/line-width: 3.0;
          }
        }
      }
    }

    // paths fill (halo is moved to background pseudo-layer)
    [int_bridge != 'ford_node'][int_bridge != 'mountain_pass'] {
      [feature = 'highway_steps'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
          line-dasharray: 2,1;
          line-width: [width_max];
        }
      }

      [feature = 'highway_bridleway'],
      [feature = 'highway_path'][path_type = 'horse'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
          line-dasharray: 4,2;
          line-width: [width_nominal];
          [int_tunnel != 'no'] {
            line-join: round;
            line-cap: round;
          }
        }
      }

      [feature = 'highway_footway'],
      [feature = 'highway_path'][path_type = 'foot'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
          line-join: round;
          line-cap: round;
          line-width: [width_nominal];
          [zoom >= 15] {
            line-color: @road_mask_black;
            line-dasharray: 7,2;
            [zoom >= 17] {
              line-dasharray: 7.5,2.5;
            }
            [zoom >= 18] {
              line-dasharray: 8,3;
            }
            [zoom >= 19] {
              line-dasharray: 8,3;
            }

            [int_surface = 'unpaved'] {
              line-dasharray: 2,2.5;
              line-width: [width_nominal]*1.3;
              [zoom >= 17] {
                line-dasharray: 2.4,2.7;
              }
              [zoom >= 18] {
                line-dasharray: 2.8,3;
              }
              [zoom >= 19] {
                line-dasharray: 2.8,3;
              }
            }
            [int_surface = null] {
              line-dasharray: 4,3,1,3;
              line-width:  [width_nominal]*1.15;
            }
          }
        }
      }

      [feature = 'highway_cycleway'],
      [feature = 'highway_path'][path_type = 'bicycle'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          line-color: @road_mask_black;
          line-join: round;
          line-cap: round;
          line-width: [width_nominal];
          [zoom >= 15] {
            line-color: @road_mask_black;
            line-dasharray: 7,2;
            [zoom >= 17] {
              line-dasharray: 7.5,2.5;
            }
            [zoom >= 18] {
              line-dasharray: 8,3;
            }
            [zoom >= 19] {
              line-dasharray: 8,3;
            }
            [int_surface = 'unpaved'] {
              line-dasharray: 2,2.5;
              line-width: [width_nominal]*1.3;
              [zoom >= 17] {
                line-dasharray: 2.4,2.7;
              }
              [zoom >= 18] {
                line-dasharray: 2.8,3;
              }
              [zoom >= 19] {
                line-dasharray: 2.8,3;
              }
            }
            [int_surface = null] {
              line-dasharray: 4,3,1,3;
              line-width: [width_nominal]*1.15;
            }
          }
        }
      }

      [feature = 'highway_track'] {
        [zoom >= 13][int_access != 'no'],
        [zoom >= 15] {
          /* Set the properties of the brown inside */
          line-color: @road_mask_black;
          line-dasharray: 100,0;
          line-cap: round;
          line-join: round;
          line-opacity: 0.8;
          line-clip:false;
          line-width: [width_nominal];

          [zoom >= 14] {
            line-dasharray: 100,0;
            [zoom >= 15] { line-dasharray: 12,2.5; }
            [zoom >= 17] { line-dasharray: 12.5,3; }
            [zoom >= 18] { line-dasharray: 13,3.5; }
            [int_surface = 'unpaved'] {
              [zoom >= 15] { line-dasharray: 3.2,3; }
              [zoom >= 17] { line-dasharray: 3.8,3.2; }
              [zoom >= 18] { line-dasharray: 4.2,3.5; }
            }
            [int_surface = null] {
              line-dasharray: 6.5,3,2,3;
            }
            // reduced line width for narrow ground unit rendering 
            // to avoid too strong overall weight of the line
            [zoom >= 18][width >= 4.0][width < 6.0] {
              line-width: [width_nominal]*0.65;
            }
          }
        }
      }
    } // end no ford_node or mountain_pass


    // sidewalks fill
    [zoom >= 18] {
      [feature = 'highway_side_foot'],
      [feature = 'highway_side_cycle'],
      [feature = 'highway_side_both'] {
        line-color: @road_mask_black;
        line-width: @sidewalks-width;
      }
      [int_bridge = 'no'][int_tunnel = 'no'] {
        [feature = 'highway_side_handrail'][service = 'steps'],
        [feature = 'highway_side_handrail'][service = 'footway'],
        [feature = 'highway_side_handrail'][service = 'path'] {
          side/line-color: @road_mask_black;
          side/line-join: round;
          side/line-offset: [casing_width];
          side/line-width: 0.4;
          side/line-opacity: 0.75;
        }
      }
      [feature = 'highway_side_parking'] {
        polygon-fill: @road_mask_black;
      }
    }

    // nominal width highway fills
    [width_nominal > 0.0] {
      [feature = 'highway_motorway'],
      [feature = 'highway_trunk'],
      [feature = 'highway_primary'],
      [feature = 'highway_secondary'],
      [feature = 'highway_tertiary'],
      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'],
      [feature = 'highway_busway'],
      [feature = 'highway_bus_guideway'],
      [feature = 'highway_living_street'],
      [feature = 'highway_road'],
      [feature = 'highway_service'][service = 'INT-normal'],
      [feature = 'highway_service'][zoom >= 16][service = 'INT-minor'],
      [feature = 'highway_pedestrian'] {
        [int_surface != 'unpaved'],
        [int_tunnel != 'no'] {
          line-color: @road_mask_black;
          line-width: [width_nominal] - 2 * [casing_width];
          line-cap: round;
          line-join: round;
        }
      }
    } // width_nominal > 0.0

    // ground unit tagged width fills
    [int_tunnel = 'no'][int_surface != 'unpaved'] {
      [width > 0.0] {
        [zoom >= 12] {
          [feature = 'highway_motorway'],
          [feature = 'highway_trunk'],
          [feature = 'highway_primary'],
          [feature = 'highway_secondary'],
          [feature = 'highway_tertiary'],
          [feature = 'highway_residential'],
          [feature = 'highway_unclassified'],
          [feature = 'highway_busway'],
          [feature = 'highway_bus_guideway'],
          [feature = 'highway_living_street'],
          [feature = 'highway_pedestrian'],
          [feature = 'highway_road'],
          [feature = 'highway_service'][service = 'INT-normal'],
          [feature = 'highway_service'][zoom >= 16][service = 'INT-minor'] {
            tagged/line-color: @road_mask_black;
            tagged/line-width: [width] - 2 * [casing_width];
            tagged/line-join: round;
            tagged/line-cap: round;
          }
        }
      } // width > 0.0
    } // tunnel = no, int_surface != unpaved


    [feature = 'railway_rail'],
    [feature = 'railway_INT-spur-siding-yard'] {
      [int_tunnel = 'no'] {
        dark/line-join: round;
        light/line-color: @road_mask_black;
        light/line-join: round;
        [feature = 'railway_rail'] {
          dark/line-color: @road_mask_black;
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
          dark/line-color: @road_mask_black;
          light/line-width: 0.8;
          light/line-dasharray: 0,8,8,1;
          [zoom >= 18] {
            dark/line-width: 3;
            light/line-width: 1;
          }
        }
      }
      [int_tunnel != 'no'] {
        line-color: @road_mask_black;
        line-width: 2.8;
        line-dasharray: 6,4;
        line-clip: false;
        [feature = 'railway_INT-spur-siding-yard'] {
          line-color: @road_mask_black;
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

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      line-color: @road_mask_black;
      line-width: 1;
      [zoom >= 13] { line-width: 2; }
      [int_tunnel != 'no'] {
        line-dasharray: 5,3;
      }
    }

    [feature = 'railway_miniature'] {
      [zoom >= 15] {
        line/line-width: 1.2;
        line/line-color: @road_mask_black;
        dashes/line-width: 3;
        dashes/line-color: @road_mask_black;
        dashes/line-dasharray: 1,10;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      line-color: @road_mask_black;
      line-width: 0.75;
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

    [feature = 'railway_subway'] {
      line-width: 2;
      line-color: @road_mask_black;
      [int_tunnel != 'no'] {
        line-dasharray: 5,3;
      }
      [int_bridge != 'no'] {
        line-width: 2;
        line-color: @road_mask_black;
      }
    }

    [feature = 'railway_preserved'] {
      dark/line-join: round;
      dark/line-width: 3;
      dark/line-color: @road_mask_black;
      light/line-width: 1;
      light/line-color: @road_mask_black;
      light/line-dasharray: 0,1,8,1;
      light/line-join: round;
    }

    [feature = 'railway_INT-preserved-ssy'] {
      dark/line-join: round;
      dark/line-width: 2;
      dark/line-color: @road_mask_black;
      light/line-width: 0.8;
      light/line-color: @road_mask_black;
      light/line-dasharray: 0,1,8,1;
      light/line-join: round;
    }

    [feature = 'railway_monorail'] {
      background/line-width: 4;
      background/line-color: @road_mask_black;
      background/line-opacity: 0.4;
      background/line-cap: round;
      background/line-join: round;
      line/line-width: 3;
      line/line-color: @road_mask_black;
      line/line-dasharray: 2,3;
      line/line-cap: round;
      line/line-join: round;
    }

    [feature = 'railway_construction'] {
      line-color: @road_mask_black;
      line-width: 2;
      line-join: round;
      line-dasharray: 2,3;
      [zoom >= 15] {
        line-width: 3;
        line-dasharray: 3,3;
      }
    }

    [feature = 'railway_disused'] {
      [zoom >= 15] {
        line-color: @road_mask_black;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
      }
    }

    [feature = 'railway_turntable'] {
      [zoom >= 16] {
        line-width: 1.5;
        line-color: @road_mask_black;
      }
    }


    [int_tunnel = 'no'] {
      [feature = 'aeroway_runway'] {
        [zoom >= 11] {
          [zoom < 12],
          [int_surface != 'unpaved'] {
            line-color: @road_mask_black;
            line-width: [width_max];
          }
        }
      }

      [feature = 'aeroway_taxiway'] {
        [zoom >= 11] {
          [zoom < 14],
          [int_surface != 'unpaved'] {
            line-color: @road_mask_black;
            line-width: [width_max];
          }
        }
      }

      [feature = 'aeroway_construction'] {
        line-width: 2;
        line-color: @road_mask_black;
        b/line-color: @road_mask_black;
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

    [feature = 'highway_raceway'] {
      [zoom < 14],
      [int_surface != 'unpaved'],
      [int_tunnel != 'no'] {
        line-color: @road_mask_black;
        line-width: [width_max];
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_platform'],
    [feature = 'railway_platform'] {
      [zoom >= 16] {
        [int_surface != 'unpaved'],
        [int_tunnel != 'no'] {
          line-width: [width_max];
          line-color: @road_mask_black;
          line-cap: round;
          line-join: round;
        }
      }
    }

  } // == end fill ==

}

#roads {

  [road_layer = 'tc_casing'][zoom >= 15] {
    line-width: [width];
    line-color: @road_mask_black;

    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom < 16] {
        line-width: 0.0;
      }
    }
    [feature = 'highway_service'][service = 'INT-minor'] {
      [zoom < 18] {
        line-width: 0.0;
      }
    }
    line-cap: round;
    line-join: round;
  } // == end tc_casing ==

  [road_layer = 'tc_fill'][zoom >= 15] {
    line-width: [width] - 2 * [casing_width];
    line-color: @road_mask_black;

    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom < 16] {
        line-width: 0.0;
      }
    }
    [feature = 'highway_service'][service = 'INT-minor'] {
      [zoom < 18] {
        line-width: 0.0;
      }
    }
    line-cap: round;
    line-join: round;

    [tc_type = 'turning_loop'] {
      center/line-width: [width] * 0.35 + 2 * [casing_width];
      center/line-color: @road_mask_black;

      hole/line-width: [width] * 0.35;
      hole/line-color:  @road_mask_black;

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
      center/line-color: @road_mask_black;

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

    // road types with no mapped area rendering: only junction polygons
    [road_layer = 'junction_casing'] {
      [feature = 'highway_motorway']
      [feature = 'highway_trunk']
      [feature = 'highway_primary']
      [feature = 'highway_secondary']
      [feature = 'highway_tertiary']
      [feature = 'highway_living_street']
      [feature = 'highway_road'] {
        line-color: @road_mask_black;
        line-width: 2 * [casing_width];
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_busway'],
    [feature = 'highway_bus_guideway'] {
      line-color: @road_mask_black;
      line-width: 2 * [casing_width];
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
        line-color: @road_mask_black;
        line-width: 2 * [casing_width];
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
      line-color: @road_mask_black;
      line-width: 2 * [casing_width];
      [int_tunnel != 'no'] {
        line-dasharray: 4,2;
        line-cap: butt;
      }
    }

    // this is junctions only
    [feature = 'highway_steps'][width > 0.0] {
      polygon-fill: @road_mask_black;
    }

    [feature = 'highway_track'][road_layer = 'junction_casing'][zoom >= 18],
    [feature = 'highway_track'][road_layer = 'area_casing'] {
      line-color: @road_mask_black;
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
        line-color: @road_mask_black;
        line-width: 2;
        line-cap: round;
        line-join: round;
        [int_tunnel != 'no'] {
          line-dasharray: 4,2;
          line-cap: butt;
        }
      }
    }
  } // == end area/junctions casing ==

  [road_layer = 'junction_fill'] {

    // road types with no mapped area rendering: only junction polygons
    [feature = 'highway_motorway'],
    [feature = 'highway_trunk'],
    [feature = 'highway_primary'],
    [feature = 'highway_secondary'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_living_street'],
    [feature = 'highway_road'],
    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_busway'],
    [feature = 'highway_bus_guideway'],
    [feature = 'highway_service'][service = 'INT-normal'],
    [feature = 'highway_service'][zoom >= 16][service = 'INT-minor'],
    [feature = 'highway_pedestrian'],
    [feature = 'highway_bridleway'][zoom >= 18],
    [feature = 'highway_footway'][zoom >= 18],
    [feature = 'highway_cycleway'][zoom >= 18],
    [feature = 'highway_path'][zoom >= 18],
    [feature = 'highway_track'][zoom >= 18] {
      polygon-fill: @road_mask_black;
    }
  }

  [road_layer = 'area_fill'] {
    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_busway'],
    [feature = 'highway_bus_guideway'],
    [feature = 'highway_service'][service = 'INT-normal'],
    [feature = 'highway_service'][zoom >= 16][service = 'INT-minor'],
    [feature = 'highway_pedestrian'],
    [feature = 'highway_footway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_path'],
    [feature = 'highway_track'] {
      polygon-fill: @road_mask_black;
      [int_tunnel = 'no'][int_bridge = 'no'] {
        polygon-fill: @road_mask_white;
      }
    }

    [feature = 'highway_platform'],
    [feature = 'railway_platform'] {
      [zoom >= 16] {
      polygon-fill: @road_mask_black;
      [int_tunnel = 'no'][int_bridge = 'no'] {
        polygon-fill: @road_mask_white;
      }
      }
    }

    [feature = 'aeroway_runway'],
    [feature = 'aeroway_taxiway'],
    [feature = 'aeroway_helipad'][zoom >= 16] {
      polygon-fill: @road_mask_black;
    }
  } // == end area_fill ==

  [road_layer = 'fill_unpaved'] {
    // normal linear highway fills for unpaved roads
    // these are converted to polygons in SQL
    [width_nominal > 0.0] {
      [feature = 'highway_motorway'],
      [feature = 'highway_trunk'],
      [feature = 'highway_primary'],
      [feature = 'highway_secondary'],
      [feature = 'highway_tertiary'],
      [feature = 'highway_residential'],
      [feature = 'highway_unclassified'],
      [feature = 'highway_busway'],
      [feature = 'highway_bus_guideway'],
      [feature = 'highway_living_street'],
      [feature = 'highway_road'],
      [feature = 'highway_service'][service = 'INT-normal'],
      [feature = 'highway_service'][zoom >= 16][service = 'INT-minor'],
      [feature = 'highway_pedestrian'],
      [feature = 'highway_raceway'],
      [feature = 'aeroway_runway'],
      [feature = 'aeroway_taxiway'] {
        polygon-fill: @road_mask_black;
        }
      }

      [feature = 'highway_platform'],
      [feature = 'railway_platform'] {
        [zoom >= 16] {
          polygon-fill: @road_mask_black;
        }
      }

    } // width_nominal > 0.0
  } // == end fill_unpaved ==

  [road_layer = 'fill_lanes'] {

    [width_max > 7.5] {
      [width_lane > 0.0] {
        [feature = 'highway_lane_parking'] {
          line-color: @road_mask_black;
          line-width: [width_lane];
          line-join: round;
          line-cap: round;
        }
        [feature = 'highway_lane_cycle'] {
          line-color: @road_mask_black;
          line-width: [width_lane];
          line-join: round;
          line-cap: round;
        }
        [feature = 'highway_lane_bus'] {
          line-color: @road_mask_black;
          line-width: [width_lane];
          line-join: round;
          line-cap: round;
        }
      }
    }

  } // == end fill_lanes ==

  [road_layer = 'parkings_lane'] {
    polygon-fill: @road_mask_black;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: @road_mask_black;
    }
  } // == end parkings_lane ==

  [road_layer = 'line_barriers'] {
    [zoom >= 16] {
      line-width: 0.4;
      line-color: @road_mask_black;
    }
    [feature = 'barrier_fence'][zoom >= 18] {
      b/line-color: @road_mask_black;
      b/line-width: 2;
      b/line-dasharray: 0.5,5.5;
    }
    [feature = 'barrier_guard_rail'][zoom >= 18] {
      line-offset: 0.5;
      mount/line-width: 1.2;
      mount/line-color: @road_mask_black;
      mount/line-offset: -1;
      mount/line-dasharray: 1.2,6.8;
      con/line-width: 1.2;
      con/line-color: @road_mask_black;
      con/line-offset: -0.2;
      con/line-dasharray: 0.0,0.3,0.6,7.1;
    }
    [feature = 'barrier_wall'][zoom >= 18][width >= 2] {
      line-width: [width];
      line-color: @road_mask_black;
    }
    [feature = 'historic_citywalls'],
    [feature = 'barrier_city_wall'] {
      [zoom >= 15] {
        line-width: 1;
        line-color: @road_mask_black;
      }
      [zoom >= 16] {
        line-width: 1.5;
      }
      [zoom >= 17] {
        line-width: 2;
        barrier/line-width: 0.4;
        barrier/line-color: @road_mask_black;
      }
      [zoom >= 18][width >= 2] {
        line-width: [width];
        [width >= 3.2] {
          line-width: [width]-1;
          line-offset: -0.5;
        }
        line-color: @road_mask_black;
        barrier/line-width: 0.0;
      }
    }
    [feature = 'barrier_retaining_wall'][zoom >= 17] {
      [zoom >= 18][width >= 3] {
        b/line-width: [width];
        b/line-color: @road_mask_black;
        b/line-offset: -[width]*0.5;
      }
      line-width: 0.9;
      line-color: @road_mask_black;
      backside/line-width: 0.35;
      backside/line-color: @road_mask_black;
      backside/line-offset: -1.6;
      [zoom >= 18] { backside/line-offset: -[width]; }
      backside/line-dasharray: 3.5,1;
      [int_access = 'yes'] {
        line-dasharray: 1.6,1.2;
        backside/line-width: 0.25;
      }
    }
  }

  [road_layer = 'line_barrier_areas'] {
    [feature = 'barrier_wall'] {
      line-color: @road_mask_black;
      line-width: 0.25;
      [int_access = 'yes'] {
        line-width: 0.16;
        [zoom >= 19] {
          line-width: 0.185;
          line-dasharray: 1.6,1.2;
        }
      }
    }
  }

}
