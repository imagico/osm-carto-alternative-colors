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

  [waterway = 'waterfall'] {
    #water-barriers-line {
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

#piers-poly, #piers-line {
  [man_made = 'pier'][zoom >= 12] {
    #piers-poly {
      polygon-fill: @land-color;
    }
    #piers-line {
      line-width: 1.5;
      line-color: @land-color;
      [zoom >= 13] { line-width: 3; }
      [zoom >= 16] { line-width: 7; }
    }
  }

  [man_made = 'breakwater'][zoom >= 12],
  [man_made = 'groyne'][zoom >= 12] {
    #piers-poly {
      polygon-fill: @breakwater-color;
    }
    #piers-line {
      line-width: 1;
      line-color: @breakwater-color;
      [zoom >= 13] { line-width: 2; }
      [zoom >= 16] { line-width: 4; }
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

.text,
#text-line {
  [feature = 'waterway_dam'],
  [feature = 'waterway_weir'],
  [feature = 'waterway_lock_gate'] {
    #text-poly[zoom >= 15],
    #text-line[zoom >= 15],
    #text-point[zoom >= 17] {
      text-name: "[name]";
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-fill: #222;
      text-size: 10;
      text-face-name: @book-fonts;
      #text-poly {
        text-placement: interior;
      }
      #text-line {
        text-placement: line;
        text-dy: 8;
        text-spacing: 400;
      }
      #text-point {
        text-placement: point;
        text-dy: 8;
      }
    }
  }

  [feature = 'man_made_breakwater'][zoom >= 15],
  [feature = 'man_made_groyne'][zoom >= 15],
  [feature = 'man_made_pier'][zoom >= 15] {
    #text-poly,
    #text-line {
      text-name: "[name]";
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-fill: #222;
      text-size: 10;
      text-face-name: @book-fonts;
      #text-poly {
        text-placement: interior;
      }
      #text-line {
        text-placement: line;
        text-spacing: 400;
      }
    }
  }
}


#text-point {
  [feature = 'waterway_waterfall'][zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-fill: @water-text;
    text-size: 10;
    text-face-name: @book-fonts;
    text-placement: point;
    text-dy: 8;
  }
}