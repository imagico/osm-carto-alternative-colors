@building-fill: #d9d0c9; //Lch(84, 5, 70)
@building-line: darken(@building-fill, 15%);
@building-low-zoom: darken(@building-fill, 4%);

#buildings {
  [zoom >= 13] {
    polygon-fill: @building-low-zoom;
    polygon-clip: false;
    [zoom >= 15] {
      [zoom >= 18] {
        [building = 'greenhouse'] {
          a/line-width: 2.5;
          a/line-offset: -1.25;
          a/line-color: @land-color;
        }
        [building = 'roof'] {
          b/line-dasharray: 4,1.5;
        }
      }
      polygon-fill: @building-fill;
      b/line-color: @building-line;
      b/line-width: .75;
      b/line-clip: false;
    }
  }
}

#bridge {
  [zoom >= 12] {
    polygon-fill: #B8B8B8;
  }
}
