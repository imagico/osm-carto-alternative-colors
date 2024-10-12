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

#ocean-lz,
#ocean {
  comp-op: dst-out;
}

#ocean {
  gmic: '+to_rgba. -name. use';
}

.ocean-backdrop {
  polygon-fill: @ocean-color;
  comp-op: dst-over;
}

.lakes {
  polygon-fill: @water-color;
}

.rivers {
  polygon-fill: @river-color;
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
