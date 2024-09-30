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

#piers-poly[zoom >= 12] {
  ::main {
    [man_made = 'pier'] {
      polygon-fill: @land-color;
      [mooring = 'yes'][zoom >= 15][way_pixels > 240] {
        polygon-comp-op: dst-out;
      }
    }

    [man_made = 'breakwater'],
    [man_made = 'groyne'] {
      polygon-fill: @breakwater-color;
      [material = 'stone'][zoom >= 15] {
        polygon-pattern-file: url('symbols/patterns/breakwater_stone.png');
        polygon-pattern-alignment: global;
      }
    }
  }
  ::backdrop {
    [man_made = 'pier']
    [mooring = 'yes']
    [zoom >= 15]
    [way_pixels > 240] {
      polygon-fill: @land-color;
      marker-file: url('symbols/transport/anchor_small.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: desaturate(darken(@land-color, 9%), 5%);
      marker-ignore-placement: true;
      marker-allow-overlap: true;
      [way_pixels > 360] { marker-file: url('symbols/transport/anchor_medium.svg'); }
      [way_pixels > 600] { marker-file: url('symbols/transport/anchor_large.svg'); }
      comp-op: dst-over;
    }
  }
}

#piers-line[zoom >= 12] {
  ::main {
    [man_made = 'pier'] {
      line-width: [width];
      line-color: @land-color;
      [mooring = 'yes'][zoom >= 15][width >= 10] {
        line-comp-op: dst-out;
      }
    }

    [man_made = 'breakwater'],
    [man_made = 'groyne'] {
      line-width: [width];
      line-color: @breakwater-color;
      [material = 'stone'][zoom >= 15][width > 5] {
        line-pattern-type: repeat;
        line-pattern-alignment: global;
        line-pattern-width: [width];
        line-pattern-file: url('symbols/patterns/breakwater_stone.png');
      }
    }
  }
  ::backdrop {
    [man_made = 'pier']
    [mooring = 'yes']
    [zoom >= 15]
    [width >= 10] {
      // backdrop is larger to avoid edge artefacts
      line-width: [width]+1;
      line-cap: round;
      line-color: @land-color;
      comp-op: dst-over;
    }
    [man_made = 'pier_symbol']
    [mooring = 'yes']
    [zoom >= 15]
    [width >= 10] {
      marker-file: url('symbols/transport/anchor_small.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: desaturate(darken(@land-color, 9%), 5%);
      marker-ignore-placement: true;
      marker-allow-overlap: true;
      [width >= 12] { marker-file: url('symbols/transport/anchor_medium.svg'); }
      [width >= 15] { marker-file: url('symbols/transport/anchor_large.svg'); }
    }
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
