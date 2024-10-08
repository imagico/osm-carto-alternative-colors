@water-text: #2f8099;       // Lch(50,26,231)
@glacier: #ddecec;
@glacier-shelf: #d4e6e6;
@glacier-line: #9cf;

@river-width-z8:               0.7;
@river-width-z9:               1.2;
@river-width-z10:              1.5;
@river-width-z11:              1.8;
@river-width-z12:              2.2;
@river-width-z13:              3;
@river-width-z14:              4.5;
@river-width-z15:              6;
@river-width-z16:              8;
@river-width-z17:              10;
@river-width-z18:              12;

@stream-width-z12:             1.2;
@stream-width-z13:             1.8;
@stream-width-z14:             2;
@stream-width-z15:             2.5;
@stream-width-z16:             3;
@stream-width-z17:             3.5;
@stream-width-z18:             4;

#water-areas-low-zoom,
#water-areas {
  [natural = 'glacier'] {
    line-width: 0.75;
    line-color: @glacier-line;
    polygon-fill: @glacier;
    [glacier_type = 'shelf'],
    [glacier_type = 'ice_tongue'] {
      polygon-fill: @glacier-shelf;
    }
    [zoom >= 8] {
      line-width: 1.0;
    }
    [zoom >= 10] {
      line-dasharray: 4,2;
      line-width: 1.5;
    }
  }
  [waterway = 'dock'],
  [landuse = 'basin'],
  [natural = 'water'],
  [landuse = 'reservoir'],
  [waterway = 'riverbank'] {
    polygon-fill: @water-color;
    polygon-comp-op: dst-out;
    [water != 'river'][water != 'canal'][waterway != 'riverbank'] {
      [intermittent = 'yes'],
      [seasonal = 'yes'] {
        [zoom >= 8] {
          polygon-fill: transparent;
          polygon-pattern-file: url('symbols/patterns/water_intermittent.png');
          [salt = 'yes'] {
            polygon-pattern-file: url('symbols/patterns/water_intermittent_salt.png');
          }
          polygon-pattern-alignment: global;
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.6;  }
        }
        polygon-comp-op: src-over;
      }
    }
    [way_pixels >= 4] {
      polygon-gamma: 0.75;
    }
    [way_pixels >= 64] {
      polygon-gamma: 0.6;
    }
  }
}

#river-areas-backdrop {
  polygon-fill: @river-color;
  comp-op: dst-over;
  [natural = 'water'][water = 'river'],
  [natural = 'water'][water = 'canal'],
  [waterway = 'riverbank'] {
    [intermittent = 'yes'],
    [seasonal = 'yes'] {
      [zoom >= 15] {
        polygon-fill: @bare_ground;
        polygon-pattern-file: url('symbols/patterns/river_intermittent.png');
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.6;  }
      }
    }
  }
}

#water-areas-backdrop {
  polygon-fill: @water-color;
  comp-op: dst-over;
}

#saltwater-areas-backdrop {
  [waterway = 'dock'],
  [landuse = 'basin'],
  [natural = 'water'],
  [landuse = 'reservoir']{
    [water != 'river'][water != 'canal'] {
      [intermittent = 'yes'],
      [seasonal = 'yes'] {
        polygon-fill: @ocean-color;
        [way_pixels >= 4] { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.6; }
        [zoom >= 8] {
          polygon-fill: transparent;
          polygon-pattern-file: url('symbols/patterns/water_intermittent_salt.png');
          polygon-pattern-alignment: global;
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.6;  }
        }
        comp-op: dst-over;
      }
      [water = 'ocean'] {
        polygon-fill: @ocean-color;
        [way_pixels >= 4] { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.6; }
        comp-op: dst-over;
      }
      [intermittent != 'yes'][seasonal != 'yes'][salt = 'yes'] {
        polygon-fill: @ocean-color;
        [way_pixels >= 4] { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.6; }
        [zoom >= 10] {
          polygon-pattern-file: url('symbols/patterns/water_salt.png');
          polygon-pattern-alignment: global;
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.6;  }
        }
        comp-op: dst-over;
      }
    }
  }
}

#water-lines-casing {
  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [int_tunnel = 'no'] {
      [zoom >= 12][intermittent != 'yes'][seasonal != 'yes'],
      [zoom >= 13] {
        line-width: @stream-width-z12 + 0.6;
        line-color: white;
        line-opacity: .55;
        [zoom >= 13] {
          line-width: @stream-width-z13 + 0.6;
          line-opacity: .75;
          [zoom >= 14] {
            line-width: @stream-width-z14 + 0.4;
            line-opacity: 1;
            [zoom >= 15] { line-width: @stream-width-z15 + 0.4; }
            [zoom >= 16] { line-width: @stream-width-z16 + 0.4; }
            [zoom >= 17] { line-width: @stream-width-z17 + 0.4; }
            [zoom >= 18] { line-width: @stream-width-z18 + 0.4; }
          }
        }
        [intermittent = 'yes'],
        [seasonal = 'yes'] {
          line-cap: butt;
          line-join: round;
          line-clip: false;
          [zoom < 14] {
            line-dasharray: 5,1;
            line-width: @stream-width-z13;
          }
          [zoom >= 14] { line-dasharray: 5.5,1.25; }
          [zoom >= 15] { line-dasharray: 6,1.5; }
        }
      }
    }
  }
}

#water-lines-low-zoom {
  // intermittent start one zoom level later and is more narrow at low zoom
  [waterway = 'river'][zoom >= 9][zoom < 12] {
    [intermittent = 'yes'],
    [seasonal = 'yes'] {
      line-color: @river-color;
      line-width: @river-width-z9 - 0.4;
      [zoom >= 10] { line-width: @river-width-z10 - 0.6; }
      [zoom >= 11] { line-width: @river-width-z11 - 0.8; }
    }
    line-comp-op: src-atop;
  }
  [waterway = 'river'][zoom >= 8][zoom < 12][intermittent != 'yes'][seasonal != 'yes'] {
    line-color: @river-color;
    line-width: @river-width-z8;
    [zoom >= 9] { line-width: @river-width-z9; }
    [zoom >= 10] { line-width: @river-width-z10; }
    [zoom >= 11] { line-width: @river-width-z11; }
    line-comp-op: src-atop;
  }
}

#roads::main[road_layer = 'waterway_bridges_casing'],
#roads::noareas[road_layer = 'waterway_bridges_casing'] {
  [feature = 'waterway_canal'],
  [feature = 'waterway_river'] {
    [int_bridge = 'yes'] {
      [zoom >= 14] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: @river-width-z14 + 1;
        [zoom >= 15] { bridgecasing/line-width: @river-width-z15 + 1; }
        [zoom >= 16] { bridgecasing/line-width: @river-width-z16 + 1; }
        [zoom >= 17] { bridgecasing/line-width: @river-width-z17 + 1; }
        [zoom >= 18] { bridgecasing/line-width: @river-width-z18 + 1; }
      }
    }
  }
  [feature = 'waterway_stream'],
  [feature = 'waterway_ditch'],
  [feature = 'waterway_drain'] {
    [int_bridge = 'yes'] {
      [zoom >= 14] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: @stream-width-z14 + 2;
        [zoom >= 15] { bridgecasing/line-width: @stream-width-z15 + 2; }
        [zoom >= 16] { bridgecasing/line-width: @stream-width-z16 + 2; }
        [zoom >= 17] { bridgecasing/line-width: @stream-width-z17 + 2; }
        [zoom >= 18] { bridgecasing/line-width: @stream-width-z18 + 2; }
        bridgeglow/line-color: white;
        bridgeglow/line-join: round;
        bridgeglow/line-width: @stream-width-z14 + 1;
        [zoom >= 15] { bridgeglow/line-width: @stream-width-z15 + 1; }
        [zoom >= 16] { bridgeglow/line-width: @stream-width-z16 + 1; }
        [zoom >= 17] { bridgeglow/line-width: @stream-width-z17 + 1; }
        [zoom >= 18] { bridgeglow/line-width: @stream-width-z18 + 1; }
      }
    }
  }
}

#water-lines,
#roads::noareas[road_layer = 'waterway_supplement'],
#roads::main[road_layer = 'waterway_bridges_fill'],
#roads::noareas[road_layer = 'waterway_bridges_fill'] {
  [feature = 'waterway_canal'][zoom >= 12],
  [feature = 'waterway_river'][zoom >= 12] {
    // the additional line of land color is used to provide a background for dashed casings
    [int_tunnel = 'yes'] {
      background/line-color: @land-color;
      background/line-width: @river-width-z12;
      background/line-cap: round;
      background/line-join: round;
      #water-lines { background/line-comp-op: src-atop; }
    }

    // this is an additional background line for rivers/canals to show the dashing also on dark backgrounds
    [intermittent = 'yes'],
    [seasonal = 'yes'] {
      [zoom >= 14] {
        bkg_intermittent/line-color: @land-color;
        bkg_intermittent/line-join: round;
        bkg_intermittent/line-width: @river-width-z14 - 1;
        #water-lines { bkg_intermittent/line-comp-op: src-atop; }
        [zoom >= 15] { bkg_intermittent/line-width: @river-width-z15 - 1; }
        [zoom >= 16] { bkg_intermittent/line-width: @river-width-z16 - 1; }
        [zoom >= 17] { bkg_intermittent/line-width: @river-width-z17 - 1; }
        [zoom >= 18] { bkg_intermittent/line-width: @river-width-z18 - 1; }
      }
    }

    water/line-color: @river-color;
    water/line-width: @river-width-z12;
    water/line-cap: round;
    water/line-join: round;
    #water-lines { water/line-comp-op: src-atop; }

    [zoom >= 13] { water/line-width: @river-width-z13; }
    [zoom >= 14] { water/line-width: @river-width-z14; }
    [zoom >= 15] { water/line-width: @river-width-z15; }
    [zoom >= 16] { water/line-width: @river-width-z16; }
    [zoom >= 17] { water/line-width: @river-width-z17; }
    [zoom >= 18] { water/line-width: @river-width-z18; }

    [feature = 'waterway_canal'] {
      water/line-color: darken(@river-color, 6%);
      artificial/line-color: @water-color;
      artificial/line-width: @river-width-z12 * 0.5;
      artificial/line-cap: round;
      artificial/line-join: round;
      #water-lines { artificial/line-comp-op: src-atop; }
      [zoom >= 13] { artificial/line-width: @river-width-z13 * 0.5; }
      [zoom >= 14] { artificial/line-width: @river-width-z14 * 0.5; water/line-color: darken(@river-color, 3%); }
      [zoom >= 15] { 
        artificial/line-width: @river-width-z15 * 0.5;
        water/line-color: @river-color;
        [zoom >= 16] { artificial/line-width: @river-width-z16 * 0.5; }
        [zoom >= 17] { artificial/line-width: @river-width-z17 * 0.5; }
        [zoom >= 18] { artificial/line-width: @river-width-z18 * 0.5; }
      }
    }

    [int_tunnel = 'yes'] {
      [zoom >= 13] { background/line-width: @river-width-z13; }
      [zoom >= 14] { background/line-width: @river-width-z14; }
      [zoom >= 15] { background/line-width: @river-width-z15; }
      [zoom >= 16] { background/line-width: @river-width-z16; }
      [zoom >= 17] { background/line-width: @river-width-z17; }
      [zoom >= 18] { background/line-width: @river-width-z18; }

      water/line-dasharray: 4,2;
      background/line-cap: butt;
      background/line-join: miter;
      water/line-cap: butt;
      water/line-join: miter;
      tunnelfill/line-color: #f3f7f7;
      tunnelfill/line-width: @river-width-z12 - 1;
      [zoom >= 13] { tunnelfill/line-width: @river-width-z13 - 1; }
      [zoom >= 14] { tunnelfill/line-width: @river-width-z14 - 1; }
      [zoom >= 15] { tunnelfill/line-width: @river-width-z15 - 1.5; }
      [zoom >= 16] { tunnelfill/line-width: @river-width-z16 - 1.5; }
      [zoom >= 17] { tunnelfill/line-width: @river-width-z17 - 2; }
      [zoom >= 18] { tunnelfill/line-width: @river-width-z18 - 2; }
    }

    [intermittent = 'yes'],
    [seasonal = 'yes'] {
      [zoom >= 14] {
        water/line-cap: butt;
        water/line-join: round;
        water/line-clip: false;
        water/line-dasharray: 8,1;
        [feature = 'waterway_canal'] {
          artificial/line-cap: butt;
          artificial/line-join: round;
          artificial/line-clip: false;
          artificial/line-dasharray: 8,1;
          [zoom >= 15] { artificial/line-dasharray: 9.5,1.5; }
        }
        [zoom >= 15] { water/line-dasharray: 9.5,1.5; }
      }
    }
  }

  [feature = 'waterway_stream'],
  [feature = 'waterway_ditch'],
  [feature = 'waterway_drain'] {
    [zoom >= 12][intermittent != 'yes'][seasonal != 'yes'],
    [zoom >= 13] {
      // the additional line of land color is used to provide a background for dashed casings
      [int_tunnel = 'yes'] {
        background/line-color: @land-color;
        background/line-width: @stream-width-z12;
        [zoom >= 13] { background/line-width: @stream-width-z13; }
        [zoom >= 14] { background/line-width: @stream-width-z14; }
        [zoom >= 15] { background/line-width: @stream-width-z15; }
        [zoom >= 16] { background/line-width: @stream-width-z16; }
        [zoom >= 17] { background/line-width: @stream-width-z17; }
        [zoom >= 18] { background/line-width: @stream-width-z18; }
      }
      water/line-color: @river-color;
      water/line-width: @stream-width-z12;
      #water-lines { water/line-comp-op: src-atop; }
      [zoom >= 13] { water/line-width: @stream-width-z13; }
      [zoom >= 14] { water/line-width: @stream-width-z14; }
      [zoom >= 15] { water/line-width: @stream-width-z15; }
      [zoom >= 16] { water/line-width: @stream-width-z16; }
      [zoom >= 17] { water/line-width: @stream-width-z17; }
      [zoom >= 18] { water/line-width: @stream-width-z18; }

      [feature = 'waterway_ditch'],
      [feature = 'waterway_drain'] {
        [zoom >= 15][intermittent != 'yes'][seasonal != 'yes'] {
          water/line-color: darken(@river-color, 6%);
          artificial/line-color: lighten(@river-color, 6%);
          artificial/line-width: @stream-width-z15 * 0.5;
          [zoom >= 16] { artificial/line-width: @stream-width-z16 * 0.5; }
          [zoom >= 17] { artificial/line-width: @stream-width-z17 * 0.5; }
          [zoom >= 18] { artificial/line-width: @stream-width-z18 * 0.5; }
          artificial/line-cap: butt;
          artificial/line-join: round;
        }
      }

      [intermittent = 'yes'],
      [seasonal = 'yes'] {
        water/line-cap: butt;
        water/line-join: round;
        water/line-clip: false;
        [zoom < 14] {
          water/line-dasharray: 5,1;
          water/line-width: @stream-width-z13 - 0.4;
        }
        [zoom >= 14] { water/line-dasharray: 5.5,1.25; }
        [zoom >= 15] { water/line-dasharray: 6,1.5; }
      }

      [int_tunnel = 'yes'][zoom >= 15] {
        background/line-width: @stream-width-z15 + 1.5;
        water/line-width: @stream-width-z15 + 1.5;
        water/line-dasharray: 4,2;
        tunnelfill/line-width: @stream-width-z15 - 1;
        tunnelfill/line-color: #f3f7f7;
        [zoom >= 16] {
          background/line-width: @stream-width-z16 + 1;
          water/line-width: @stream-width-z16 + 1;
          tunnelfill/line-width: @stream-width-z16 - 1.5;
        }
        [zoom >= 17] {
          background/line-width: @stream-width-z17 + 1;
          water/line-width: @stream-width-z17 + 1;
          tunnelfill/line-width: @stream-width-z17 - 1.5;
        }
        [zoom >= 18] {
          background/line-width: @stream-width-z18 + 1;
          water/line-width: @stream-width-z18 + 1;
          tunnelfill/line-width: @stream-width-z18 - 1.5;
        }
      }
    }
  }

  // this is the intermittent centerline for rivers at mid zoom
  // to be drawn above all blue water lines
  [feature = 'waterway_canal'][zoom >= 12],
  [feature = 'waterway_river'][zoom >= 12] {
    [intermittent = 'yes'],
    [seasonal = 'yes'] {
      [zoom < 14] {
        centerline/line-color: @bare_ground;
        centerline/line-width: 0.65;
        #water-lines { centerline/line-comp-op: src-atop; }
        [zoom >= 13] { centerline/line-width: 0.9; }
      }
    }
  }
}

/*
#water-lines {
  gmic: '+cut. 0,255 -name. use';
}
*/

#water-lines-text {
  [lock != 'yes'][int_tunnel != 'yes'] {
    [waterway = 'river'][zoom >= 13] {
      text-name: "[name]";
      text-face-name: @oblique-fonts;
      [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
      [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
      [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
      [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
      text-placement: line;
      text-fill: @water-text;
      text-spacing: 400;
      text-size: 10;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [zoom >= 14] { text-size: 12; }
      [int_tunnel = 'yes'] { text-min-distance: 200; }
    }

    [waterway = 'canal'][zoom >= 13][zoom < 14] {
      text-name: "[name]";
      text-face-name: @oblique-fonts;
      [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
      [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
      [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
      [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-size: 10;
      text-placement: line;
      text-fill: @water-text;
    }

    [waterway = 'stream'][zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @oblique-fonts;
      [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
      [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
      [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
      [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-spacing: 600;
      text-placement: line;
      text-vertical-alignment: middle;
      text-dy: 8;
    }

    [waterway = 'drain'],
    [waterway = 'ditch'] {
      [zoom >= 15] {
        text-name: "[name]";
        text-face-name: @oblique-fonts;
        [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
        [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
        [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
        [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
        text-size: 10;
        text-fill: @water-text;
        text-spacing: 600;
        text-placement: line;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
    }

    [waterway = 'canal'][zoom >= 14] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @water-text;
      text-placement: line;
      text-face-name: @oblique-fonts;
      [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
      [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
      [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
      [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }

    [waterway = 'derelict_canal'][zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #80d1ae;
      text-face-name: @oblique-fonts;
      [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
      [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
      [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
      [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
      text-placement: line;
      text-spacing: 600;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [zoom >= 14] {
        text-size: 12;
      }
    }
  }
}

