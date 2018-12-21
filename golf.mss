/*

derived from https://github.com/cquest/osmfr-cartocss/blob/master/sports.mss

*/

#landcover[zoom >= 14] {
  [feature = 'golf_rough'] {
    polygon-fill: mix(@grass, @scrub, 70%);
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
    polygon-pattern-file: url('symbols/patterns/golf_rough.png');
    polygon-pattern-alignment: global;
    [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
    [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
  }
  [feature = 'golf_fairway'],
  [feature = 'golf_driving_range'] {
    polygon-fill: @grass;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
  [feature = 'golf_water_hazard'],
  [feature = 'golf_lateral_water_hazard'] {
    polygon-fill: @water-color;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
  [feature = 'golf_green'] {
    polygon-fill: @pitch;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
  [feature = 'golf_bunker'] {
    polygon-fill: @sand;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
}


#golf-lines[zoom >= 16] {
  [golf = 'hole'][geo = 'line'] {
    line-color: black;
    line-width: 0.5;
    [name != ''] {
      text-placement: line;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [golf = 'hole'][geo='point'],
  [golf='pin'] {
    point-file: url('symbols/golf_pin.svg');
    [ref != ''] {
      text-fill: #444;
      text-name: "[ref]";
      text-face-name: @book-fonts;
      text-dy: -10;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [golf='tee'] {
    marker-fill: grey;
    marker-width: 3;
    marker-height: 3;
    [ref != ''] {
      text-name: "[ref]";
      text-face-name: @book-fonts;
      text-dy: 6;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [golf = 'out_of_bounds'] {
    line-color: white;
    line-width: 1.5;
    line-cap: round;
    line-dasharray: 1,8;
  }
}


