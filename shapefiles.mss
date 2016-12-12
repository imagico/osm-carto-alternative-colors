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

.ocean {
  polygon-fill: @ocean-color;
}

.ocean-raster {
  raster-colorizer-stops:
    stop(0, fadeout(@ocean-color,100.0))
    stop(255, @ocean-color);
}

.lakes-raster {
  raster-colorizer-stops:
    stop(0, fadeout(@water-color,100.0))
    stop(255, @water-color);
}

.rivers-raster {
  raster-colorizer-stops:
    stop(0, fadeout(@river-color,100.0))
    stop(255, @river-color);
}

#icesheet-poly {
  [zoom >= 6] {
    polygon-fill: @glacier;
  }
}

#icesheet-outlines {
  [zoom >= 6] {
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

#builtup {
  [zoom >= 8][zoom < 10] {
    polygon-fill: #ddd;
  }
}
