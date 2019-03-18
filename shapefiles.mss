#necountries {
  [zoom >= 1][zoom < 4] {
    line-width: 0.2;
    [zoom >= 2] {
      line-width: 0.3;
    }
    [zoom >= 3] {
      line-width: 0.4;
    }
    line-color: @admin-boundaries;
  }
}

#world {
  [zoom >= 0][zoom < 10] {
    polygon-fill: @land-color;
    polygon-simplify: 0.4;
    [zoom < 8] {
      line-color: darken(@water-color,20%);
      line-simplify: 0.4;
      line-width: 0.5;
      line-offset: 0.5;
    }
  }
}

#coast-poly {
  [zoom >= 10] {
    polygon-fill: @land-color;
  }
}

#icesheet-poly {
  [zoom >= 5] {
    polygon-fill: @glacier;
  }
}

#icesheet-outlines {
  [zoom >= 5] {
    [ice_edge = 'ice_ocean'],
    [ice_edge = 'ice_land'] {
      line-width: 0.375;
      line-color: @glacier-line;
      [zoom >= 8] {
        line-width: 0.5;
      }
      [zoom >= 10] {
        line-dasharray: 4,2;
        line-width: 0.75;
      }
    }
  }
}

#eu-banner {
  text-fill: #ff6080;
  text-face-name: @bold-fonts;
  text-name: "[name]";
  text-size: 10;
  text-wrap-width: 40;
  [zoom >= 3] {
    text-size: 15;
    text-wrap-width: 60;
  }
  [zoom >= 4] {
    text-size: 30;
    text-wrap-width: 120
  }
  [zoom >= 5] {
    text-size: 60;
    text-wrap-width: 240
  }
  [zoom >= 6] {
    text-size: 100;
    text-wrap-width: 400
  }
  text-halo-radius: @standard-halo-radius;
  text-halo-fill: #202020;
  text-placement: interior;
  text-allow-overlap: true;
}
