@building-fill: #d9d0c9; // Lch(84,5,70)
@building-line: darken(@building-fill, 15%);
@building-low-zoom: darken(@building-fill, 4%);

@bridge: #cdc5be; // Lch(80,5,70)

#buildings {
  ::main {
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
          [building = 'roof'],
          [building = 'carport'] {
            b/line-dasharray: 4,1.5;
          }
        }
        polygon-fill: @building-fill;
        [zoom >= 19] {
          [building = 'carport'][way_pixels >= 160],
          [building = 'garage'][way_pixels >= 160],
          [building = 'garages'][way_pixels >= 240] {
            polygon-comp-op: dst-out;
          }
        }
        b/line-color: @building-line;
        b/line-width: .75;
        b/line-clip: false;
      }
    }
  }
  ::backdrop {
    [zoom >= 19] {
      [building = 'carport'][way_pixels >= 160],
      [building = 'garage'][way_pixels >= 160] {
        polygon-fill: @building-fill;
        marker-file: url('symbols/transport/car.svg');
        marker-placement: interior;
        marker-clip: false;
        marker-fill: desaturate(darken(@building-fill, 8%), 5%);
        marker-ignore-placement: true;
        marker-allow-overlap: true;
        [way_pixels >= 640] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@building-fill, 5%), 4%); }
      }
      [building = 'garages'][way_pixels >= 240] {
        polygon-fill: @building-fill;
        marker-file: url('symbols/transport/cars.svg');
        marker-placement: interior;
        marker-clip: false;
        marker-fill: desaturate(darken(@building-fill, 8%), 5%);
        marker-ignore-placement: true;
        marker-allow-overlap: true;
        [way_pixels >= 640] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@building-fill, 5%), 4%); }
      }
      comp-op: dst-over;
    }
  }
}

#bridge {
  [zoom >= 12] {
    polygon-fill: @bridge;
  }
}
