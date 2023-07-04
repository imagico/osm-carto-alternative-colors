
#cliffs {
  [feature = 'natural_cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/line_patterns/colored/cliff.svg');
    [zoom >= 15] {
      line-pattern-file: url('symbols/line_patterns/colored/cliff2.svg');
    }
  }
  [feature = 'natural_icecliff'][zoom >= 13] {
    line-pattern-file: url('symbols/line_patterns/colored/icecliff.svg');
    [zoom >= 15] {
      line-pattern-file: url('symbols/line_patterns/colored/icecliff2.svg');
    }
  }
  [feature = 'natural_earth_bank'][zoom >= 13] {
    line-pattern-file: url('symbols/line_patterns/colored/earth_bank.svg');
    [zoom >= 15] {
      line-pattern-file: url('symbols/line_patterns/colored/earth_bank2.svg');
      [zoom >= 17] {
        line-pattern-file: url('symbols/line_patterns/colored/earth_bank3.svg');
      }
    }
  }
  [feature = 'natural_earth_bank_grass'][zoom >= 13] {
    line-pattern-file: url('symbols/line_patterns/colored/earth_bank_grass.svg');
    [zoom >= 15] {
      line-pattern-file: url('symbols/line_patterns/colored/earth_bank_grass2.svg');
      [zoom >= 17] {
        line-pattern-file: url('symbols/line_patterns/colored/earth_bank_grass3.svg');
      }
    }
  }
  [feature = 'natural_ridge'][zoom >= 13] {
    line-pattern-file: url('symbols/line_patterns/colored/ridge.svg');
  }
  [feature = 'natural_arete'][zoom >= 13] {
    line-pattern-file: url('symbols/line_patterns/colored/arete.svg');
    [zoom >= 15] {
      line-pattern-file: url('symbols/line_patterns/colored/arete2.svg');
      [zoom >= 17] {
        line-pattern-file: url('symbols/line_patterns/colored/arete3.svg');
      }
    }
  }
  [feature = 'man_made_embankment'][zoom >= 15] {
    line-pattern-file: url('symbols/line_patterns/colored/embankment.svg');
    [zoom >= 18] {
      line-pattern-file: url('symbols/line_patterns/colored/embankment2.svg');
    }
  }
  [feature = 'natural_gully_left'][zoom >= 16] {
    line-pattern-file: url('symbols/line_patterns/colored/gully_left.svg');
    [zoom >= 18] {
      line-pattern-file: url('symbols/line_patterns/colored/gully2_left.svg');
    }

  }
  [feature = 'natural_gully_right'][zoom >= 16] {
    line-pattern-file: url('symbols/line_patterns/colored/gully_right.svg');
    [zoom >= 18] {
      line-pattern-file: url('symbols/line_patterns/colored/gully2_right.svg');
    }

  }
}

#natural-linecaps {
  [feature = 'natural_gully_start'][zoom >= 16] {
    point-file: url('symbols/line_patterns/colored/gully_start.svg');
    [zoom >= 18] {
      point-file: url('symbols/line_patterns/colored/gully2_start.svg');
    }
    point-ignore-placement: true;
    point-transform: "rotate([angle])";
  }
  [feature = 'natural_ridge_start'][zoom >= 13] {
    point-file: url('symbols/line_patterns/colored/ridge_start.svg');
    point-ignore-placement: true;
    point-transform: "rotate([angle])";
  }
  [feature = 'natural_ridge_end'][zoom >= 13] {
    point-file: url('symbols/line_patterns/colored/ridge_end.svg');
    point-ignore-placement: true;
    point-transform: "rotate([angle])";
  }
}

#crevasse {
  [crevasse_class = 'small'] {
    line-width: 0.5;
    line-color: @glacier-line;
  }
  [crevasse_class = 'polygon_medium'],
  [crevasse_class = 'medium'] {
    line-width: 0.5;
    line-color: @glacier-line;
  }
  [crevasse_class = 'polygon_large'],
  [crevasse_class = 'large'],
  [crevasse_class = 'polygon_huge'],
  [crevasse_class = 'huge'] {
    line-width: 0.5;
    line-color: @glacier-line;
    [zoom >= 16] {
      line-pattern-file: url('symbols/line_patterns/colored/crevasse_outline.svg');
      [zoom >= 18] {
        line-pattern-file: url('symbols/line_patterns/colored/crevasse_outline2.svg');
        [zoom >= 19] {
          line-pattern-file: url('symbols/line_patterns/colored/crevasse_outline3.svg');
          [zoom >= 20] {
            [crevasse_class = 'polygon_huge'],
            [crevasse_class = 'huge'] {
              line-pattern-file: url('symbols/line_patterns/colored/crevasse_outline4.svg');
            }
          }
        }
      }
    }
  }
  [crevasse_class = 'center_tiny'] {
    line-width: 0.5;
    line-color: @glacier-line;
    [zoom >= 17] {
      line-width: 0.75;
    }
  }
  [crevasse_class = 'center_medium'][zoom >= 16],
  [crevasse_class = 'center_large'][zoom >= 16],
  [crevasse_class = 'center_huge'][zoom >= 16] {
    line-width: 0.5;
    line-color: @glacier-line;
  }
}

#crevasse-area-lz,
#crevasse-line-lz {
  line-width: 0.35;
  line-color: @glacier-line;
  [zoom >= 12] {
    line-width: 0.5;
  }
}


#roads[zoom >= 10][road_layer = 'line_barriers'] {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [feature = 'barrier_ditch'][zoom >= 18] {
    line-width: 0;
    line-pattern-file: url('symbols/line_patterns/colored/ditch_9.svg');
    [width >= 10][width < 25] {
      line-pattern-file: url("symbols/line_patterns/colored/ditch_[width].svg");
    }
    [width >= 25] {
      line-pattern-file: url('symbols/line_patterns/colored/ditch_25.svg');
    }
  }
  [feature = 'barrier_fence'][zoom >= 18] {
    b/line-color: #444;
    b/line-width: 2;
    b/line-dasharray: 0.5,5.5;
  }
  [feature = 'barrier_guard_rail'][zoom >= 18] {
    line-offset: 0.5;
    mount/line-width: 1.2;
    mount/line-color: #444;
    mount/line-offset: -1;
    mount/line-dasharray: 1.2,6.8;
    con/line-width: 1.2;
    con/line-color: #444;
    con/line-offset: -0.2;
    con/line-dasharray: 0.0,0.3,0.6,7.1;
  }
  [feature = 'barrier_wall'][zoom >= 18][width >= 2] {
    line-width: [width];
    line-color: #d5d5d5;
    [int_access = 'yes'] {
      line-color: mix(#d5d5d5, @land-color, 50%)
    }
  }
  [feature = 'historic_citywalls'],
  [feature = 'barrier_city_wall'] {
    [zoom >= 15] {
      line-width: 1;
      line-color: lighten(#444, 30%);
    }
    [zoom >= 16] {
      line-width: 1.5;
    }
    [zoom >= 17] {
      line-width: 2;
      barrier/line-width: 0.4;
      barrier/line-color: #444;
    }
    [zoom >= 18][width >= 2] {
      line-width: [width];
      [width >= 3.2] {
        line-width: [width]-1;
        line-offset: -0.5;
      }
      line-color: #b2b2b2;
      barrier/line-width: 0.0;
    }
  }
  [feature = 'barrier_retaining_wall'][zoom >= 17] {
    [zoom >= 18][width >= 3] {
      b/line-width: [width];
      b/line-color: #d5d5d5;
      b/line-offset: -[width]*0.5;
    }
    line-width: 0.9;
    line-color: #7b7b7b;
    backside/line-width: 0.35;
    backside/line-color: #7b7b7b;
    backside/line-offset: -1.6;
    [zoom >= 18] { backside/line-offset: -[width]; }
    backside/line-dasharray: 3.5,1;
    [int_access = 'yes'] {
      line-dasharray: 1.6,1.2;
      backside/line-width: 0.25;
    }
  }
}

#roads[zoom >= 18][road_layer = 'line_barrier_areas'] {
  [feature = 'barrier_wall'] {
    line-color: #444;
    line-width: 0.25;
    [int_access = 'yes'] {
      line-width: 0.16;
      [zoom >= 19] {
        line-width: 0.185;
        line-dasharray: 1.6,1.2;
      }
    }
  }
  [feature = 'historic_citywalls'],
  [feature = 'barrier_city_wall'] {
    [path_type = 'outer'] {
      [width >= 3.2] { line-pattern-file: url('symbols/line_patterns/colored/citywall_outer.svg'); }
      [width < 3.2] {
        line-color: #444;
        line-width: 0.5;
      }
    }
    [path_type = 'inner'] {
      line-color: #444;
      line-width: 0.5;
    }
  }
}

#line-barrier-entrances {
  marker-fill: black;
  marker-allow-overlap: true;
  marker-line-width: 0;
  marker-width: 1.0;
  marker-height: 1.0;
  marker-ignore-placement: true;
  [zoom >= 17] {
    marker-width: 1.25;
    marker-height: 1.25;
  }
  [zoom >= 18] {
    marker-width: 1.5;
    marker-height: 1.5;
  }
}

#text-line {
  [feature = 'natural_cliff'][zoom >= 15],
  [feature = 'natural_earth_bank'][zoom >= 15],
  [feature = 'man_made_embankment'][zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-fill: #999;
    text-size: 10;
    text-face-name: @book-fonts;
    [font = 'jp'] { text-face-name: @book-fonts-jp; }
    [font = 'tc'] { text-face-name: @book-fonts-tc; }
    [font = 'kr'] { text-face-name: @book-fonts-kr; }
    [font = 'ur'] { text-face-name: @book-fonts-ur; }
    text-placement: line;
    text-dy: 8;
    text-vertical-alignment: middle;
    text-spacing: 400;
  }
}

#highway-embankments {
  [type = 'dyke_right'],
  [type = 'dyke_left'] {
    line-pattern-file: url('symbols/line_patterns/colored/embankment_a2.svg');
    [width >= 3][width < 95] {
      line-pattern-file: url("symbols/line_patterns/colored/dyke_[width].svg");
    }
    [width >= 95] {
      line-pattern-file: url('symbols/line_patterns/colored/dyke_95.svg');
    }
  }
  [type = 'hedge_bank'][zoom >= 18] {
    line-width: 0.75;
    line-color: #bb8e81;
    line-offset: 1;
    [zoom >= 20] { line-width: 0; line-pattern-file: url('symbols/line_patterns/colored/hedge_bank.svg'); }
  }
  [type = 'cutting'] { line-pattern-file: url('symbols/line_patterns/colored/embankment_a1.svg'); }
  [type = 'embankment'] { line-pattern-file: url('symbols/line_patterns/colored/embankment_a2.svg'); }
}
