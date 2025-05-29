@breakwater-color: #aaa; /* Also for groyne */
@dam: #adadad;
@dam-line: #444444;
@dam-lz: #888;
@weir-line: #999;
@lock-gate-line: #888;
@waterfall-line: saturate(darken(@water-color, 40%), 30%);
@water-icon: saturate(darken(@water-color, 30%), 25%);  // #24a6cc - when changed here should be changed in SVGs too
@water-hot: #ff4020;  // when changed here should be changed in SVGs too
@whitewater-line: lighten(@water-color, 5%);
@wateredge-line: mix(@river-color, @water-icon, 50%); // blue outlining around piers and in front of quays

#water-barriers-line {

  ::wwline {
    [waterway = 'waterfall'],
    [waterway = 'weir'] {
      [zoom >= 14] {
        line-width: 1.5;
        line-offset: 1.5;
        line-color: @whitewater-line;
        line-comp-op: lighten;
      }
    }
  }

  [waterway = 'dam'][zoom >= 12] {
      [wtype = 'polygon'] {
        polygon-fill: @dam-lz;
        [zoom >= 13] {
          polygon-fill: @dam;
        }
      }
      [wtype = 'river'],
      [wtype = 'canal'],
      [wtype = 'line'],
      [wtype = 'polygon'],
      [zoom >= 13] {
        line-width: 1;
        [wtype = 'river'][zoom >= 13],
        [wtype = 'canal'][zoom >= 13],
        [zoom >= 14] {
          line-width: 1.5;
          [zoom >= 16] {
            line-width: 2;
          }
        }
        line-color: @dam-line;
        line-join: round;
        line-cap: round;
      }
  }

  [waterway = 'weir'][zoom >= 12] {
      [wtype = 'river'],
      [wtype = 'canal'],
      [wtype = 'line'],
      [wtype = 'polygon'],
      [zoom >= 14] {
        line-width: 1;
        [wtype = 'river'][zoom >= 13],
        [wtype = 'canal'][zoom >= 14],
        [wtype = 'line'][zoom >= 14],
        [zoom >= 14] {
          line-width: 1.5;
          [zoom >= 16] {
            line-width: 2;
            [wtype = 'river'][zoom >= 17],
            [wtype = 'canal'][zoom >= 17],
            [wtype = 'line'] {
              line-dasharray: 2,2;
            }
          }
        }
        line-color: @weir-line;
      }
  }

  [waterway = 'lock_gate'][zoom >= 12] {
    [wtype = 'river'],
    [wtype = 'canal'],
    [wtype = 'line'],
    [wtype = 'polygon'],
    [zoom >= 13] {
      line-width: 1;
      [wtype = 'river'][zoom >= 13],
      [zoom >= 14] {
        line-width: 1.5;
        [zoom >= 16] {
          line-width: 2;
        }
      }
      line-color: @lock-gate-line;
    }
  }
}

#water-barriers-line {
  [waterway = 'waterfall'] {
    [wtype = 'river'][zoom >= 11],
    [wtype = 'canal'][zoom >= 12],
    [zoom >= 13] {
      line-width: 1;
      [wtype = 'river'][zoom >= 13],
      [wtype = 'canal'][zoom >= 14],
      [zoom >= 15] {
        line-width: 1.5;
      }
      line-color: @waterfall-line;
    }
  }
}

#springs-connected {
  [zoom >= 14] {
    ::halo {
      background/line-color: white;
      background/line-width: 0.6;
      background/line-cap: round;
      background/line-join: round;
    }
    polygon-fill: @water-icon;
  }
}

#breakwaters-poly[zoom >= 12] {
    [man_made = 'breakwater'],
    [man_made = 'groyne'] {
      polygon-fill: @breakwater-color;
      [material = 'stone'],
      [material = 'rock'],
      [material = 'boulder'] {
        [zoom >= 15][way_pixels > 120] {
          line-color: lighten(@breakwater-color, 5%);
          polygon-pattern-file: url('symbols/patterns/breakwater_stone.svg');
          polygon-pattern-alignment: global;
        }
      }
    }
}

#breakwaters-line[zoom >= 12] {
    [man_made = 'breakwater'],
    [man_made = 'groyne'] {
      line-width: [width];
      line-color: @breakwater-color;
      [material = 'stone'],
      [material = 'rock'],
      [material = 'boulder'] {
        [zoom >= 15][width > 5] {
          line-color: lighten(@breakwater-color, 5%);
          line-pattern-type: repeat;
          line-pattern-alignment: global;
          line-pattern-width: [width];
          line-pattern-file: url('symbols/patterns/breakwater_stone.svg');
        }
      }
      [material = 'wood'][zoom >= 16] {
        line-width: [width]-0.7;
      }
    }
    [man_made = 'groyne_wood_point'] {
      marker-fill: lighten(@breakwater-color, 16%);
      marker-width: [width];
      marker-height: [width];
      marker-allow-overlap: true;
      marker-line-width: 0;
      marker-ignore-placement: true;
    }
    [man_made = 'groyne_wood_symbol'] {
      [width < 6] {
        polygon-fill: #404040;
      }
      [width >= 6][width < 8] {
        polygon-fill: #555555;
      }
      [width >= 8][width < 10] {
        polygon-fill: #606060;
      }
      [width >= 10][width < 12] {
        polygon-fill: #707070;
      }
      [width >= 12][width < 14] {
        polygon-fill: #808080;
      }
      [width >= 14][width < 16] {
        polygon-fill: #888888;
      }
      [width >= 16] {
        polygon-fill: #909090;
      }
    }
}

#piers-casing[zoom >= 15] {
  [floating = 'yes'] {
    line-width: 2;
    line-color: @wateredge-line;
    comp-op: dst-over;
  }
  [floating = 'no'] {
    ::shadow {
      line-color: @shadow-color;
      line-width: 1.5;
      line-clip: false;
      line-opacity: 0.2;
      line-geometry-transform: "translate(1.0, 1.0)";
      comp-op: dst-over;
    }
    ::outline {
      line-color: mix(@man-made-icon, @land-color, 50%);
      line-width: 0.75;
      line-clip: false;
      comp-op: dst-over;
    }
  }
}

#quays[zoom >= 14] {
  [feature = 'line'] {
    line-width: 1.0;
    line-color: #7b7b7b;
    [zoom >= 15] {
      line-width: 1.4;
      [zoom >= 16] {
        line-width: 1.8;
        [zoom >= 17] {
          side1/line-width: 0.35;
          side1/line-color: #7b7b7b;
          side1/line-offset: 2.05;
          side1/line-dasharray: 3.5,1;
          side2/line-width: 0.35;
          side2/line-color: #7b7b7b;
          side2/line-offset: -2.05;
          side2/line-dasharray: 3.5,1;
          [zoom >= 18] {
            side1/line-offset: 2.65;
            side2/line-offset: -2.65;
          }
        }
      }
    }
  }
  [feature = 'polygon'] {
    line-width: 0.5;
    line-offset: -0.25;
    line-color: #7b7b7b;
    [zoom >= 15] {
      line-width: 0.7;
      line-offset: -0.35;
      [zoom >= 16] {
        line-width: 0.9;
        line-offset: -0.45;
        [zoom >= 17] {
          backside/line-width: 0.35;
          backside/line-color: #7b7b7b;
          backside/line-offset: -2.05;
          backside/line-dasharray: 3.5,1;
          [zoom >= 18] {
            backside/line-offset: -2.65;
          }
        }
      }
    }
  }

  gmic: "-if !$_mapnik_render_trivial zoom={round(log2(559082264.028/$_mapnik_scale_denominator))} +channels[quays] 3 -name. quays_mask -channels[ocean] 3 -channels[water_areas_mask] 3 -max[ocean] [water_areas_mask] +dilate_circ[ocean] {1.0+if($zoom>=17,8.0,2.0)*$_mapnik_scale_factor} -name. water_mask_buffer -sub[water_mask_buffer] [ocean] -min[quays_mask] [water_mask_buffer] -to_rgb[quays] -append[quays] [quays_mask],c -keep[quays] -name. use -fi";

}

#roads::main[zoom >= 12][road_layer = 'piers_poly_main'] {
  polygon-fill: @land-color;
  // width is way_pixels, service is mooring here
  [service = 'yes'][zoom >= 15][width > 240] {
    polygon-comp-op: dst-out;
  }
}


#roads::main[zoom >= 15][road_layer = 'piers_poly_backdrop'] {
  // width is way_pixels here
  [width > 240] {
    symbol/marker-file: url('symbols/transport/anchor_small.svg');
    symbol/marker-placement: interior;
    symbol/marker-clip: false;
    symbol/marker-fill: desaturate(darken(@land-color, 9%), 5%);
    symbol/marker-ignore-placement: true;
    symbol/marker-allow-overlap: true;
    [width > 360] { symbol/marker-file: url('symbols/transport/anchor_medium.svg'); }
    [width > 600] { symbol/marker-file: url('symbols/transport/anchor_large.svg'); }
    symbol/marker-comp-op: dst-over;
    // backdrop is larger to avoid edge artefacts
    outline/line-color: @land-color;
    outline/line-comp-op: dst-over;
    fill/polygon-fill: @land-color;
    fill/polygon-comp-op: dst-over;
  }
}

#roads::main[zoom >= 12][road_layer = 'piers_line_main'] {
  line-width: [width];
  line-color: @land-color;
  // service is mooring here
  [service = 'yes'][zoom >= 15][width >= 10] {
    line-comp-op: dst-out;
  }
}

#roads::main[zoom >= 15][road_layer = 'piers_line_symbols'] {
  [width >= 10] {
    marker-file: url('symbols/transport/anchor_small.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: desaturate(darken(@land-color, 9%), 5%);
    marker-ignore-placement: true;
    marker-allow-overlap: true;
    [width >= 12] { marker-file: url('symbols/transport/anchor_medium.svg'); }
    [width >= 15] { marker-file: url('symbols/transport/anchor_large.svg'); }
    marker-comp-op: dst-over;
  }
}

#roads::main[zoom >= 15][road_layer = 'piers_line_backdrop'] {
  [width >= 10] {
    // backdrop is larger to avoid edge artefacts
    line-width: [width]+1;
    line-cap: round;
    line-color: @land-color;
    line-comp-op: dst-over;
  }
}

#marinas-area {
  [zoom >= 14] {
    a/line-width: 1;
    a/line-offset: -0.5;
    a/line-color: blue;
    a/line-opacity: 0.1;
    a/line-join: round;
    a/line-cap: round;
    b/line-width: 3;
    b/line-offset: -1.5;
    b/line-color: blue;
    b/line-opacity: 0.1;
    b/line-join: round;
    b/line-cap: round;
    [zoom >= 17] {
      a/line-width: 2;
      a/line-offset: -1;
      b/line-width: 6;
      b/line-offset: -3;
    }
  }
}

#text-line[zoom >= 15] {
  [feature = 'waterway_dam'],
  [feature = 'waterway_weir'],
  [feature = 'waterway_lock_gate'] {
    text-name: "[name]";
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-fill: #222;
    text-size: 10;
    text-face-name: @book-fonts;
    text-placement: line;
    text-dy: 8;
    text-spacing: 400;
  }

  [feature = 'man_made_breakwater'],
  [feature = 'man_made_groyne'],
  [feature = 'man_made_pier'] {
    text-name: "[name]";
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-fill: #222;
    text-size: 10;
    text-face-name: @book-fonts;
    text-placement: line;
    text-spacing: 400;
  }
}
