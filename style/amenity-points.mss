@marina-text: #576ddf; // also swimming_pool
@wetland-text: darken(#4aa5fa, 25%); /* Also for marsh and mud */
@shop-icon: #ac39ac;
@shop-text: #939;
@transportation-icon: #8461C4;
@transportation-text: darken(@transportation-icon, 10%);
@airtransport: @transportation-icon;
@accommodation-icon: @transportation-icon;
@accommodation-text: @transportation-text;
@health-color: #da0092;
@amenity-brown: #734a08;
@gastronomy: @amenity-brown;
@memorials: @amenity-brown;
@culture: @amenity-brown;
@public-service: @amenity-brown;
@office: #4863A0;
@man-made-icon: #555;
@advertising-grey: @man-made-icon;
@landform-color: #d08f55;
@leisure-icon: @amenity-brown;
@tree-icon: #4d9945;
@tree-text: @tree-icon;

@station-color: #7981b0;
@station-text: darken(saturate(@station-color, 15%), 10%);

@landcover-font-size: 10;
@landcover-wrap-width-size: 30; // 3 em
@landcover-line-spacing-size: -1.5; // -0.15 em
@landcover-font-size-big: 12;
@landcover-wrap-width-size-big: 36; // 3 em
@landcover-line-spacing-size-big: -1.8; // -0.15 em
@landcover-font-size-bigger: 15;
@landcover-wrap-width-size-bigger: 45; // 3 em
@landcover-line-spacing-size-bigger: -2.25; // -0.15 em
@landcover-face-name: @oblique-fonts;

@standard-font-size: 10;
@standard-wrap-width: 30; // 3 em
@standard-line-spacing-size: -1.5; // -0.15 em
@standard-font: @book-fonts;

@private-opacity: 0.33;


/* Note that .text is also used in water.mss */
#text-poly-low-zoom[zoom < 10] {
  [feature = 'place_archipelago'][zoom >= 4][way_pixels > 3000][way_pixels < 800000],
  [feature = 'place_island'][zoom >= 4][way_pixels > 3000][way_pixels < 800000]  {
    text-name: "[name]";
    text-fill: #000;
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    [way_pixels > 12000] {
      text-size: @landcover-font-size-big;
      text-wrap-width: @landcover-wrap-width-size-big;
      text-line-spacing: @landcover-line-spacing-size-big;
    }
    [way_pixels > 48000] {
      text-size: @landcover-font-size-bigger;
      text-wrap-width: @landcover-wrap-width-size-bigger;
      text-line-spacing: @landcover-line-spacing-size-bigger;
    }
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'landuse_military'],
  [feature = 'military_danger_area'],
  [feature = 'natural_wood'],
  [feature = 'landuse_forest'] {
    [zoom >= 8][way_pixels > 3000][is_building = 'no'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'landuse_military'],
      [feature = 'military_danger_area'] {
        text-fill: darken(@military, 20%);
      }
      [feature = 'natural_wood'],
      [feature = 'landuse_forest'] {
        text-fill: @forest-text;
      }
    }
  }

  [feature = 'natural_scree'],
  [feature = 'natural_shingle'],
  [feature = 'natural_bare_rock'],
  [feature = 'natural_sand'] {
    [zoom >= 9][way_pixels > 3000][is_building = 'no'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'natural_scree'],
      [feature = 'natural_shingle'] {
        text-fill: darken(@bare_ground, 50%);
      }
      [feature = 'natural_bare_rock'] {
        text-fill: darken(@bare_ground, 50%);
        text-halo-radius: @standard-halo-radius * 1.5; /* extra halo needed to overpower the pattern */
      }
      [feature = 'natural_sand'] {
        text-fill: darken(@sand, 50%);
      }
    }
  }

  [feature = 'natural_glacier'][is_building = 'no'] {
    [zoom >= 8][way_pixels > 10000] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: mix(darken(@glacier, 40%), darken(@glacier-line, 30%), 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }
}

#trees [zoom >= 16] {
  ::plain {
    [type = 'hedge'],
    [type = 'tree_small'],
    [type = 'tree_row'] {
      polygon-fill: @tree-icon;
      opacity: 0.5;
      [type = 'hedge'] {
        polygon-opacity: 0.75;
      }
    }
  }
  ::symbols {
    [type = 'row_tree'],
    [type = 'tree'] {
      polygon-fill: @tree-icon;
    }
    [type = 'tree_plain'] {
      polygon-fill: @tree-icon;
      polygon-opacity: 0.5;
    }
  }
}

#trees-simple [zoom >= 16] {
  ::canopy {
    opacity: 0.4;
    marker-fill: @tree-icon;
    marker-allow-overlap: true;
    marker-line-width: 0;
    marker-ignore-placement: true;
    marker-width: 2.5;
    marker-height: 2.5;
    [zoom >= 17] {
      marker-width: 5;
      marker-height: 5;
    }
    [zoom >= 18] {
      marker-width: 10;
      marker-height: 10;
    }
    [zoom >= 19] {
      marker-width: 15;
      marker-height: 15;
      }
    [zoom >= 20] {
      marker-width: 30;
      marker-height: 30;
    }
  }
  ::trunk {
    [zoom >= 18] {
      trunk/opacity: 0.6;
      trunk/marker-fill: @tree-icon;
      trunk/marker-allow-overlap: true;
      trunk/marker-line-width: 0;
      trunk/marker-width: 2;
      trunk/marker-height: 2;
      trunk/marker-ignore-placement: true;
    }
    [zoom >= 19] {
      trunk/marker-width: 3;
      trunk/marker-height: 3;
    }
    [zoom >= 20] {
      trunk/marker-width: 6;
      trunk/marker-height: 6;
    }
  }
}

#addon-symbols-shelter[zoom >= 16] {
  [feature = 'bus_stop_shelter'] {
    marker-anchor-cond: "[osm_id]+',!'+[osm_id_shelter]";
    marker-allow-overlap-anchor: '[osm_id]';
    marker-anchor-set: "[osm_id]+'_'+[osm_id_shelter]";
    marker-file: url('symbols/transport/bus_stop_shelter_addon.svg');
    marker-fill: @transportation-icon;
    marker-transform: 'translate(0,-5)';
    marker-placement: interior;
    marker-clip: false;

    [zoom >= 17] {
      marker-anchor-cond: "[osm_id]+',!'+[osm_id_shelter]";
      marker-allow-overlap-anchor: '[osm_id]';
      marker-anchor-set: "[osm_id]+'_'+[osm_id_shelter]";
      marker-file: url('symbols/transport/bus_stop_shelter_addon_left.svg');
      marker-fill: @transportation-icon;
      marker-transform: 'translate(-4,-7)';
      marker-placement: interior;
      marker-clip: false;

      alt/marker-anchor-cond: "[osm_id]+',!'+[osm_id_shelter]+',!'+[osm_id]+'_'+[osm_id_shelter]";
      alt/marker-allow-overlap-anchor: '[osm_id]';
      alt/marker-anchor-set: "[osm_id]+'_'+[osm_id_shelter]";
      alt/marker-file: url('symbols/transport/bus_stop_shelter_addon_right.svg');
      alt/marker-fill: @transportation-icon;
      alt/marker-transform: 'translate(4,-7)';
      alt/marker-placement: interior;
      alt/marker-clip: false;
    }
  }
  [feature = 'railway_halt_shelter'],
  [feature = 'tram_stop_shelter'] {
    marker-anchor-cond: "[osm_id]+',!'+[osm_id_shelter]";
    marker-allow-overlap-anchor: '[osm_id]';
    marker-anchor-set: "[osm_id]+'_'+[osm_id_shelter]";
    marker-file: url('symbols/transport/bus_stop_shelter_addon.svg');
    marker-fill: @station-color;
    marker-transform: 'translate(0,-5)';
    marker-placement: interior;
    marker-clip: false;
  }
}

#addon-symbols-water[zoom >= 17] {
  [feature = 'drinking_water'] {
    marker-anchor-cond: '[osm_id]';
    marker-allow-overlap-anchor: '[osm_id]';
    marker-anchor-set: "'dw_'+[osm_id]";
    marker-file: url('symbols/water/drinking.svg');
    marker-fill: @water-icon;
    marker-transform: 'translate([xdist],[ydist])';
    marker-placement: interior;
    marker-clip: false;

    dir2/marker-anchor-cond: "[osm_id]+',!dw_'+[osm_id]";
    dir2/marker-allow-overlap-anchor: '[osm_id]';
    dir2/marker-anchor-set: "'dw_'+[osm_id]";
    dir2/marker-file: url('symbols/water/drinking.svg');
    dir2/marker-fill: @water-icon;
    dir2/marker-transform: 'translate(-1*[xdist],[ydist])';
    dir2/marker-placement: interior;
    dir2/marker-clip: false;

    dir3/marker-anchor-cond: "[osm_id]+',!dw_'+[osm_id]";
    dir3/marker-allow-overlap-anchor: '[osm_id]';
    dir3/marker-anchor-set: "'dw_'+[osm_id]";
    dir3/marker-file: url('symbols/water/drinking.svg');
    dir3/marker-fill: @water-icon;
    dir3/marker-transform: 'translate([xdist2],[ydist2])';
    dir3/marker-placement: interior;
    dir3/marker-clip: false;

    dir4/marker-anchor-cond: "[osm_id]+',!dw_'+[osm_id]";
    dir4/marker-allow-overlap-anchor: '[osm_id]';
    dir4/marker-anchor-set: "'dw_'+[osm_id]";
    dir4/marker-file: url('symbols/water/drinking.svg');
    dir4/marker-fill: @water-icon;
    dir4/marker-transform: 'translate(-1*[xdist2],[ydist2])';
    dir4/marker-placement: interior;
    dir4/marker-clip: false;
  }
}
