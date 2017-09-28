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

#water-areas {
  [natural = 'glacier']::natural {
    [zoom >= 6] {
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
  }

  [waterway = 'dock'] {
    [zoom >= 9]::waterway {
      polygon-fill: @water-color;
      [way_pixels >= 4] {
        polygon-gamma: 0.75;
      }
      [way_pixels >= 64] {
        polygon-gamma: 0.6;
      }
    }
  }

  [landuse = 'basin'][zoom >= 7]::landuse {
    polygon-fill: @water-color;
    [way_pixels >= 4] {
      polygon-gamma: 0.75;
    }
    [way_pixels >= 64] {
      polygon-gamma: 0.6;
    }
  }

  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway {
    [zoom >= 6] {
      polygon-fill: @water-color;

      [water != 'river'][water != 'canal'][waterway != 'riverbank'] {
        [intermittent = 'yes'],
        [seasonal = 'yes'] {
          [salt = 'yes'] { polygon-fill: @ocean-color; }
          [zoom >= 8] {
            polygon-fill: transparent;
            polygon-pattern-file: url('symbols/water_intermittent.png');
            [salt = 'yes'] {
              polygon-pattern-file: url('symbols/water_intermittent_salt.png');
            }
            polygon-pattern-alignment: global;
            [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
            [way_pixels >= 64] { polygon-pattern-gamma: 0.6;  }
          }
        }
        [intermittent != 'yes'][seasonal != 'yes'][salt = 'yes'] {
          polygon-fill: @ocean-color;
          [zoom >= 10] {
            polygon-pattern-file: url('symbols/water_salt.png');
            polygon-pattern-alignment: global;
            [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
            [way_pixels >= 64] { polygon-pattern-gamma: 0.6;  }
          }
        }
      }
      [natural = 'water'][water = 'river'],
      [natural = 'water'][water = 'canal'],
      [waterway = 'riverbank'] {
        polygon-fill: @river-color;
        [intermittent = 'yes'],
        [seasonal = 'yes'] {
          [zoom >= 15] {
            polygon-fill: @bare_ground;
            polygon-pattern-file: url('symbols/river_intermittent.png');
            polygon-pattern-alignment: global;
            [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
            [way_pixels >= 64] { polygon-pattern-gamma: 0.6;  }
          }
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
  }
  [waterway = 'river'][zoom >= 8][zoom < 12][intermittent != 'yes'][seasonal != 'yes'] {
    line-color: @river-color;
    line-width: @river-width-z8;
    [zoom >= 9] { line-width: @river-width-z9; }
    [zoom >= 10] { line-width: @river-width-z10; }
    [zoom >= 11] { line-width: @river-width-z11; }
  }
}

.water-lines {
  ::base {
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12],
  [waterway = 'wadi'][zoom >= 13] {
    // the additional line of land color is used to provide a background for dashed casings
    [int_tunnel = 'yes'] {
      background/line-color: @land-color;
      background/line-width: @river-width-z12;
      background/line-cap: round;
      background/line-join: round;
    }

    [bridge = 'yes'] {
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

    water/line-color: @river-color;
    water/line-width: @river-width-z12;
    water/line-cap: round;
    water/line-join: round;

    [zoom >= 13] { water/line-width: @river-width-z13; }
    [zoom >= 14] { water/line-width: @river-width-z14; }
    [zoom >= 15] { water/line-width: @river-width-z15; }
    [zoom >= 16] { water/line-width: @river-width-z16; }
    [zoom >= 17] { water/line-width: @river-width-z17; }
    [zoom >= 18] { water/line-width: @river-width-z18; }

    [waterway = 'canal'] {
      water/line-color: darken(@river-color, 6%);
      artificial/line-color: @water-color;
      artificial/line-width: @river-width-z12 * 0.5;
      artificial/line-cap: round;
      artificial/line-join: round;
      [zoom >= 13] { artificial/line-width: @river-width-z13 * 0.5; }
      [zoom >= 14] { artificial/line-width: @river-width-z14 * 0.5; water/line-color: darken(@river-color, 3%); }
      [zoom >= 15] { 
        artificial/line-width: @river-width-z15 * 0.5;
        water/line-color: @river-color;
        artificial/line-color: @water-color;
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
    [seasonal = 'yes'],
    [waterway = 'wadi'] {
      [zoom >= 14] {
        water/line-cap: butt;
        water/line-join: round;
        water/line-clip: false;
        water/line-dasharray: 8,1;
        [zoom >= 15] { water/line-dasharray: 9.5,1.5; }
      }
    }
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
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
      [zoom >= 13] { water/line-width: @stream-width-z13; }
      [zoom >= 14] { water/line-width: @stream-width-z14; }
      [zoom >= 15] { water/line-width: @stream-width-z15; }
      [zoom >= 16] { water/line-width: @stream-width-z16; }
      [zoom >= 17] { water/line-width: @stream-width-z17; }
      [zoom >= 18] { water/line-width: @stream-width-z18; }

      [waterway = 'ditch'],
      [waterway = 'drain'] {
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

      [bridge = 'yes'] {
        [zoom >= 14] {
          bridgecasing/line-color: black;
          bridgecasing/line-join: round;
          bridgecasing/line-width: @stream-width-z14 + 2;
          bridgeglow/line-color: white;
          bridgeglow/line-join: round;
          bridgeglow/line-width: @stream-width-z14 + 1;
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

  [waterway = 'derelict_canal'][zoom >= 12] {
    line-width: 1.5;
    line-color: #b5e4d0;
    line-dasharray: 4,4;
    line-opacity: 0.5;
    line-join: round;
    line-cap: round;
    [zoom >= 13] {
      line-width: 2.5;
      line-dasharray: 4,6;
    }
    [zoom >= 14] {
      line-width: 4.5;
      line-dasharray: 4,8;
    }
  }
  }

  // this is the intermittent centerline for rivers at mid zoom
  // to be drawn above all blue water lines
  ::top {
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12],
  [waterway = 'wadi'][zoom >= 13] {
    [intermittent = 'yes'],
    [seasonal = 'yes'],
    [waterway = 'wadi'] {
      [zoom < 14] {
        centerline/line-color: @bare_ground;
        centerline/line-width: 0.65;
        [zoom >= 13] { centerline/line-width: 0.9; }
      }
    }
  }
  }

}

#water-lines-text {
  [lock != 'yes'][int_tunnel != 'yes'] {
    [waterway = 'river'][zoom >= 13] {
      text-name: "[name]";
      text-face-name: @oblique-fonts;
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
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }

    [waterway = 'derelict_canal'][zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #80d1ae;
      text-face-name: @oblique-fonts;
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

.text[zoom >= 10] {
  [feature = 'natural_water'],
  [feature = 'landuse_reservoir'],
  [feature = 'landuse_basin'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-wrap-width: 25; // 2.5 em
      text-line-spacing: -1.5; // -0.15 em
      [way_pixels > 12000] {
        text-size: 12;
        text-wrap-width: 37; // 3.1 em
        text-line-spacing: -1.6; // -0.13 em
      }
      [way_pixels > 48000] {
        text-size: 15;
        text-wrap-width: 59; // 3.9 em
        text-line-spacing: -1.5; // -0.10 em
      }
      [way_pixels > 192000] {
        text-size: 19;
        text-wrap-width: 95; // 5.0 em
        text-line-spacing: -0.95; // -0.05 em
      }
      text-fill: @water-text;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }
}
