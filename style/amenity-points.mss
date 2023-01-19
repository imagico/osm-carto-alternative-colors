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
      [feature = 'landuse_military'] {
        text-fill: darken(@military, 40%);
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
