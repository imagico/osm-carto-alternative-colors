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

@street-lamp-halo: #fefecc;
@street-lamp: @man-made-icon;

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

#street-lamps [zoom >= 19] {
  ::halo {
    halo/opacity: 0.85;
    halo/marker-fill: @street-lamp-halo;
    halo/marker-allow-overlap: true;
    halo/marker-line-width: 0;
    halo/marker-ignore-placement: true;
    halo/marker-width: 6;
    halo/marker-height: 6;
    [zoom >= 20] {
      halo/marker-width: 7.5;
      halo/marker-height: 7.5;
    }
  }
  ::pole {
    pole/marker-fill: @street-lamp;
    pole/marker-allow-overlap: true;
    pole/marker-line-width: 0;
    pole/marker-width: 2.1;
    pole/marker-height: 2.1;
    pole/marker-ignore-placement: true;
    [zoom >= 20] {
      pole/marker-width: 2.5;
      pole/marker-height: 2.5;
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
    marker-file: url('symbols/transport/roof.svg');
    marker-fill: @transportation-icon;
    marker-transform: 'translate(0,-5)';
    marker-placement: interior;
    marker-clip: false;

    [zoom >= 17] {
      marker-anchor-cond: "[osm_id]+',!'+[osm_id_shelter]";
      marker-allow-overlap-anchor: '[osm_id]';
      marker-anchor-set: "[osm_id]+'_'+[osm_id_shelter]";
      marker-file: url('symbols/transport/shelter_left.svg');
      marker-fill: @transportation-icon;
      marker-transform: 'translate(-4,-7)';
      marker-placement: interior;
      marker-clip: false;

      alt/marker-anchor-cond: "[osm_id]+',!'+[osm_id_shelter]+',!'+[osm_id]+'_'+[osm_id_shelter]";
      alt/marker-allow-overlap-anchor: '[osm_id]';
      alt/marker-anchor-set: "[osm_id]+'_'+[osm_id_shelter]";
      alt/marker-file: url('symbols/transport/shelter_right.svg');
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
    marker-file: url('symbols/transport/roof.svg');
    marker-fill: @station-color;
    marker-transform: 'translate(0,-5)';
    marker-placement: interior;
    marker-clip: false;
  }
}

#addon-symbols-parking[zoom >= 17] {
  [feature = 'parking'] {
    [addon = 'covered'] {
      cover/marker-anchor-cond: "[osm_id]";
      cover/marker-allow-overlap-anchor: "[osm_id]";
      cover/marker-anchor-set: "'cover_'+[osm_id]";
      cover/marker-file: url('symbols/transport/roof.svg');
      cover/marker-fill: @transportation-icon;
      cover/marker-transform: 'translate(0,-7)';
      [zoom >= 18] {
        cover/marker-transform: 'translate(0,-9)';
      }
      cover/marker-placement: interior;
      cover/marker-clip: false;
    }
    [addon = 'disabled'][zoom >= 18] {
      disabled/marker-anchor-cond: '[osm_id]';
      disabled/marker-allow-overlap-anchor: '[osm_id]';
      disabled/marker-anchor-set: "'disabled_'+[osm_id]";
      disabled/marker-file: url('symbols/transport/disabled.svg');
      disabled/marker-fill: @transportation-icon;
      disabled/marker-transform: 'translate(2,6)';
      disabled/marker-placement: interior;
      disabled/marker-clip: false;

      disabled2/marker-anchor-cond: "[osm_id]+',!disabled_'+[osm_id]";
      disabled2/marker-allow-overlap-anchor: '[osm_id]';
      disabled2/marker-anchor-set: "'disabled_'+[osm_id]";
      disabled2/marker-file: url('symbols/transport/disabled.svg');
      disabled2/marker-fill: @transportation-icon;
      disabled2/marker-transform: 'translate(2,8)';
      disabled2/marker-placement: interior;
      disabled2/marker-clip: false;

      disabled3/marker-anchor-cond: "[osm_id]+',!disabled_'+[osm_id]";
      disabled3/marker-allow-overlap-anchor: '[osm_id]';
      disabled3/marker-anchor-set: "'disabled_'+[osm_id]";
      disabled3/marker-file: url('symbols/transport/disabled.svg');
      disabled3/marker-fill: @transportation-icon;
      disabled3/marker-transform: 'translate(2,10)';
      disabled3/marker-placement: interior;
      disabled3/marker-clip: false;
    }
    [addon = 'parent'][zoom >= 18] {
      parent/marker-anchor-cond: "[osm_id]";
      parent/marker-allow-overlap-anchor: '[osm_id]';
      parent/marker-anchor-set: "'parent_'+[osm_id]";
      parent/marker-file: url('symbols/transport/parent.svg');
      parent/marker-fill: @transportation-icon;
      parent/marker-transform: 'translate(5,3)';
      parent/marker-placement: interior;
      parent/marker-clip: false;

      parent2/marker-anchor-cond: "[osm_id]+',!parent_'+[osm_id]";
      parent2/marker-allow-overlap-anchor: "[osm_id]+',disabled_'+[osm_id]";
      parent2/marker-anchor-set: "'parent_'+[osm_id]+',parent2_'+[osm_id]";
      parent2/marker-file: url('symbols/transport/parent.svg');
      parent2/marker-fill: @transportation-icon;
      parent2/marker-transform: 'translate(8,1)';
      parent2/marker-placement: interior;
      parent2/marker-clip: false;
    }
    [addon = 'women'][zoom >= 18] {
      women/marker-anchor-cond: "[osm_id]+',!disabled_'+[osm_id]+',!parent_'+[osm_id]";
      women/marker-allow-overlap-anchor: '[osm_id]';
      women/marker-anchor-set: "'women_'+[osm_id]";
      women/marker-file: url('symbols/transport/women.svg');
      women/marker-fill: @transportation-icon;
      women/marker-transform: 'translate(1,5)';
      women/marker-placement: interior;
      women/marker-clip: false;

      women2/marker-anchor-cond: "[osm_id]+',!women_'+[osm_id]";
      women2/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]+',disabled_'+[osm_id]";
      women2/marker-anchor-set: "'women_'+[osm_id]+',women2_'+[osm_id]";
      women2/marker-file: url('symbols/transport/women.svg');
      women2/marker-fill: @transportation-icon;
      women2/marker-transform: 'translate(7,1)';
      women2/marker-placement: interior;
      women2/marker-clip: false;

      women3/marker-anchor-cond: "[osm_id]+',!disabled_'+[osm_id]+',!women_'+[osm_id]";
      women3/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]+',parent_'+[osm_id]";
      women3/marker-anchor-set: "'women_'+[osm_id]+',women3_'+[osm_id]";
      women3/marker-file: url('symbols/transport/women.svg');
      women3/marker-fill: @transportation-icon;
      women3/marker-transform: 'translate(7,-6)';
      women3/marker-placement: interior;
      women3/marker-clip: false;

      women4/marker-anchor-cond: "[osm_id]+',!women_'+[osm_id]";
      women4/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]+',parent_'+[osm_id]";
      women4/marker-anchor-set: "'women_'+[osm_id]+',women3_'+[osm_id]";
      women4/marker-file: url('symbols/transport/women.svg');
      women4/marker-fill: @transportation-icon;
      women4/marker-transform: 'translate(7,-7)';
      women4/marker-placement: interior;
      women4/marker-clip: false;
    }
    [addon = 'lit'] {
      [zoom < 18],
      [capacity = 0][supervised = 'no'] {
        lit/marker-anchor-cond: "[osm_id]";
        lit/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
        lit/marker-anchor-set: "'lit_'+[osm_id]";
        lit/marker-file: url('symbols/transport/lit_left.svg');
        lit/marker-fill: @transportation-icon;
        lit/marker-transform: 'translate(-5,-2)';
        [zoom >= 18] {
          lit/marker-transform: 'translate(-6,-3)';
        }
        lit/marker-placement: interior;
        lit/marker-clip: false;
      }

      lit2/marker-anchor-cond: "[osm_id]+',!lit_'+[osm_id]";
      lit2/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
      lit2/marker-anchor-set: "'lit_'+[osm_id]";
      lit2/marker-file: url('symbols/transport/lit_right.svg');
      lit2/marker-fill: @transportation-icon;
      lit2/marker-transform: 'translate(7,-3)';
      lit2/marker-placement: interior;
      lit2/marker-clip: false;

      [zoom >= 18] {
        lit3/marker-anchor-cond: "[osm_id]+',!lit_'+[osm_id]";
        lit3/marker-allow-overlap-anchor: "[osm_id]";
        lit3/marker-anchor-set: "'lit_'+[osm_id]";
        lit3/marker-file: url('symbols/transport/lit_lamp_right.svg');
        lit3/marker-fill: @transportation-icon;
        lit3/marker-transform: 'translate(-3,-8)';
        lit3/marker-placement: interior;
        lit3/marker-clip: false;

        lit4/marker-anchor-cond: "[osm_id]+',!lit_'+[osm_id]";
        lit4/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
        lit4/marker-anchor-set: "'lit_'+[osm_id]";
        lit4/marker-file: url('symbols/transport/lit_lamp_left.svg');
        lit4/marker-fill: @transportation-icon;
        lit4/marker-transform: 'translate(-9,-8)';
        lit4/marker-placement: interior;
        lit4/marker-clip: false;
      }
    }
    [addon = 'shopping'] {
      shopping/marker-anchor-cond: "[osm_id]+',!disabled_'+[osm_id]+',!parent_'+[osm_id]+',!women_'+[osm_id]";
      shopping/marker-allow-overlap-anchor: "[osm_id]+',lit_'+[osm_id]";
      shopping/marker-anchor-set: "'shopping_'+[osm_id]";
      shopping/marker-file: url('symbols/transport/shopping.svg');
      shopping/marker-fill: @transportation-icon;
      shopping/marker-transform: 'translate(3,4)';
      [zoom >= 18] {
        shopping/marker-transform: 'translate(3,5)';
      }
      shopping/marker-placement: interior;
      shopping/marker-clip: false;

      [zoom >= 18] {
        shopping2/marker-anchor-cond: "[osm_id]+',!shopping_'+[osm_id]";
        shopping2/marker-allow-overlap-anchor: "[osm_id]+',disabled_'+[osm_id]+',parent_'+[osm_id]+',women_'+[osm_id]";
        shopping2/marker-anchor-set: "'shopping_'+[osm_id]";
        shopping2/marker-file: url('symbols/transport/shopping2.svg');
        shopping2/marker-fill: @transportation-icon;
        shopping2/marker-transform: 'translate(-6,8)';
        [supervised = 'yes'][zoom >= 18] {
          shopping2/marker-transform: 'translate(-5,9)';
        }
        shopping2/marker-placement: interior;
        shopping2/marker-clip: false;
      }
    }
    [addon = 'supervised'][zoom >= 18] {
      [capacity > 0] {
        [fee != 'no'][shopping = 'yes'][disabled = 'yes'][parent = 'no'][women = 'no'],
        [fee != 'no'][shopping = 'yes'][disabled = 'no'][parent = 'no'][women = 'yes'],
        [disabled = 'no'][parent = 'no'][women = 'no'] {
          supervised/marker-anchor-cond: "[osm_id]+',!supervised_'+[osm_id]";
          supervised/marker-allow-overlap-anchor: "[osm_id]";
          supervised/marker-anchor-set: "'supervised_'+[osm_id]";
          supervised/marker-file: url('symbols/transport/supervised.svg');
          supervised/marker-fill: @transportation-icon;
          supervised/marker-transform: 'translate(9,1)';
          supervised/marker-placement: interior;
          supervised/marker-clip: false;

          supervised2/marker-anchor-cond: "[osm_id]+',!supervised_'+[osm_id]";
          supervised2/marker-allow-overlap-anchor: "[osm_id]+',lit_'+[osm_id]";
          supervised2/marker-anchor-set: "'supervised_'+[osm_id]";
          supervised2/marker-file: url('symbols/transport/supervised.svg');
          supervised2/marker-fill: @transportation-icon;
          supervised2/marker-transform: 'translate(12,1)';
          supervised2/marker-placement: interior;
          supervised2/marker-clip: false;
        }
      }

      supervised3/marker-anchor-cond: "[osm_id]+',!supervised_'+[osm_id]";
      supervised3/marker-allow-overlap-anchor: "[osm_id]+',lit_'+[osm_id]+',shopping_'+[osm_id]";
      supervised3/marker-anchor-set: "'supervised_'+[osm_id]";
      supervised3/marker-file: url('symbols/transport/supervised.svg');
      supervised3/marker-fill: @transportation-icon;
      supervised3/marker-transform: 'translate(-9,1)';
      supervised3/marker-placement: interior;
      supervised3/marker-clip: false;
    }
    [addon = 'fee'] {
      fee/marker-anchor-cond: "[osm_id]";
      fee/marker-allow-overlap-anchor: "[osm_id]";
      fee/marker-anchor-set: "'fee_'+[osm_id]";
      fee/marker-file: url('symbols/currencies/[fee].svg');
      fee/marker-fill: @transportation-icon;
      fee/marker-transform: 'translate(4,6)';
      [zoom >= 18] {
        fee/marker-transform: 'translate(3,6)';
      }
      fee/marker-placement: interior;
      fee/marker-clip: false;

      fee2/marker-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
      fee2/marker-allow-overlap-anchor: "[osm_id]+',lit_'+[osm_id]+',disabled_'+[osm_id]+',women_'+[osm_id]";
      fee2/marker-anchor-set: "'fee_'+[osm_id]";
      fee2/marker-file: url('symbols/currencies/[fee].svg');
      fee2/marker-fill: @transportation-icon;
      fee2/marker-transform: 'translate(-7,5)';
      [zoom >= 18] {
        fee2/marker-transform: 'translate(-9,1)';
        [capacity > 0] {
          fee2/marker-transform: 'translate(-9,6)';
        }
      }
      fee2/marker-placement: interior;
      fee2/marker-clip: false;

      [zoom >= 18] {
        fee3/marker-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
        fee3/marker-allow-overlap-anchor: "[osm_id]+',shopping_'+[osm_id]+',lit_'+[osm_id]";
        fee3/marker-anchor-set: "'fee_'+[osm_id]";
        fee3/marker-file: url('symbols/currencies/[fee].svg');
        fee3/marker-fill: @transportation-icon;
        fee3/marker-transform: 'translate(-11,4)';
        [capacity > 0] {
          fee3/marker-transform: 'translate(-13,6)';
        }
        fee3/marker-placement: interior;
        fee3/marker-clip: false;

        fee4/marker-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
        fee4/marker-allow-overlap-anchor: "[osm_id]+',shopping_'+[osm_id]+',lit_'+[osm_id]+',supervised_'+[osm_id]";
        fee4/marker-anchor-set: "'fee_'+[osm_id]";
        fee4/marker-file: url('symbols/currencies/[fee].svg');
        fee4/marker-fill: @transportation-icon;
        fee4/marker-transform: 'translate(-16,-2)';
        [capacity > 0] {
          fee4/marker-transform: 'translate(-17,6)';
        }
        fee4/marker-placement: interior;
        fee4/marker-clip: false;

        fee5/marker-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
        fee5/marker-allow-overlap-anchor: "[osm_id]+',shopping_'+[osm_id]+',supervised_'+[osm_id]";
        fee5/marker-anchor-set: "'fee_'+[osm_id]";
        fee5/marker-file: url('symbols/currencies/[fee].svg');
        fee5/marker-fill: @transportation-icon;
        fee5/marker-transform: 'translate(-15,8)';
        fee5/marker-placement: interior;
        fee5/marker-clip: false;
      }
    }
    [zoom >= 18] {
      [addon = 'capacity'] {
        capacity/text-anchor-cond: "[osm_id]";
        capacity/text-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]+',fee_'+[osm_id]";
        capacity/text-anchor-set: "'capacity_'+[osm_id]";
        capacity/text-name: "[capacity]";
        capacity/text-size: 9;
        capacity/text-fill: @transportation-text;
        capacity/text-face-name: @standard-font;
        capacity/text-halo-radius: @standard-halo-radius;
        capacity/text-halo-fill: @standard-halo-fill;
        capacity/text-dy: -6;
        capacity/text-dx: -6;
        capacity/text-horizontal-alignment: left;
        capacity/text-vertical-alignment: bottom;

        capacity2/text-anchor-cond: "[osm_id]+',!capacity_'+[osm_id]";
        capacity2/text-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]+',fee_'+[osm_id]+',lit_'+[osm_id]";
        capacity2/text-anchor-set: "'capacity_'+[osm_id]";
        capacity2/text-name: "[capacity]";
        capacity2/text-size: 9;
        capacity2/text-fill: @transportation-text;
        capacity2/text-face-name: @standard-font;
        capacity2/text-halo-radius: @standard-halo-radius;
        capacity2/text-halo-fill: @standard-halo-fill;
        capacity2/text-dy: -6;
        capacity2/text-dx: -7;
        capacity2/text-horizontal-alignment: left;
        capacity2/text-vertical-alignment: bottom;

        capacity3/text-anchor-cond: "[osm_id]+',!capacity_'+[osm_id]+',!fee_'+[osm_id]";
        capacity3/text-allow-overlap-anchor: "[osm_id]+',supervised_'+[osm_id]";
        capacity3/text-anchor-set: "'capacity_'+[osm_id]";
        capacity3/text-name: "[capacity]";
        capacity3/text-size: 9;
        capacity3/text-fill: @transportation-text;
        capacity3/text-face-name: @standard-font;
        capacity3/text-halo-radius: @standard-halo-radius;
        capacity3/text-halo-fill: @standard-halo-fill;
        capacity3/text-dy: -12;
        capacity3/text-dx: -6;
        capacity3/text-horizontal-alignment: left;
        capacity3/text-vertical-alignment: bottom;

        capacity4/text-anchor-cond: "[osm_id]+',!capacity_'+[osm_id]";
        capacity4/text-allow-overlap-anchor: "[osm_id]+',fee_'+[osm_id]+',supervised_'+[osm_id]+',lit_'+[osm_id]";
        capacity4/text-anchor-set: "'capacity_'+[osm_id]";
        capacity4/text-name: "[capacity]";
        capacity4/text-size: 9;
        capacity4/text-fill: @transportation-text;
        capacity4/text-face-name: @standard-font;
        capacity4/text-halo-radius: @standard-halo-radius;
        capacity4/text-halo-fill: @standard-halo-fill;
        capacity4/text-dy: -6;
        capacity4/text-dx: -12;
        capacity4/text-horizontal-alignment: left;
        capacity4/text-vertical-alignment: bottom;
      }
      [zoom >= 19] {
        [addon = 'disabled_text'] {
          disabled_text/text-anchor-cond: "[osm_id]+',disabled_'+[osm_id]";
          disabled_text/text-allow-overlap-anchor: "[osm_id]+',disabled_'+[osm_id]";
          disabled_text/text-anchor-set: "'disabled_text_'+[osm_id]";
          disabled_text/text-name: "[disabled]";
          disabled_text/text-size: 8;
          disabled_text/text-fill: @transportation-text;
          disabled_text/text-face-name: @standard-font;
          disabled_text/text-halo-radius: 0.75*@standard-halo-radius;
          disabled_text/text-halo-fill: @standard-halo-fill;
          disabled_text/text-dy: 6;
          disabled_text/text-dx: 6;
          disabled_text/text-horizontal-alignment: right;
          disabled_text/text-vertical-alignment: middle;

          disabled_text2/text-anchor-cond: "[osm_id]+',disabled_'+[osm_id]+',!disabled_text_'+[osm_id]";
          disabled_text2/text-allow-overlap-anchor: "[osm_id]+',disabled_'+[osm_id]";
          disabled_text2/text-anchor-set: "'disabled_text_'+[osm_id]";
          disabled_text2/text-name: "[disabled]";
          disabled_text2/text-size: 8;
          disabled_text2/text-fill: @transportation-text;
          disabled_text2/text-face-name: @standard-font;
          disabled_text2/text-halo-radius: 0.75*@standard-halo-radius;
          disabled_text2/text-halo-fill: @standard-halo-fill;
          disabled_text2/text-dy: 3;
          disabled_text2/text-dx: 6;
          disabled_text2/text-horizontal-alignment: right;
          disabled_text2/text-vertical-alignment: middle;

          disabled_text3/text-anchor-cond: "[osm_id]+',disabled_'+[osm_id]+',!disabled_text_'+[osm_id]";
          disabled_text3/text-allow-overlap-anchor: "[osm_id]+',disabled_'+[osm_id]";
          disabled_text3/text-anchor-set: "'disabled_text_'+[osm_id]";
          disabled_text3/text-name: "[disabled]";
          disabled_text3/text-size: 8;
          disabled_text3/text-fill: @transportation-text;
          disabled_text3/text-face-name: @standard-font;
          disabled_text3/text-halo-radius: 0.75*@standard-halo-radius;
          disabled_text3/text-halo-fill: @standard-halo-fill;
          disabled_text3/text-dy: 9;
          disabled_text3/text-dx: 6;
          disabled_text3/text-horizontal-alignment: right;
          disabled_text3/text-vertical-alignment: middle;

          disabled_text4/text-anchor-cond: "[osm_id]+',disabled_'+[osm_id]+',!disabled_text_'+[osm_id]";
          disabled_text4/text-allow-overlap-anchor: "[osm_id]+',disabled_'+[osm_id]";
          disabled_text4/text-anchor-set: "'disabled_text_'+[osm_id]";
          disabled_text4/text-name: "[disabled]";
          disabled_text4/text-size: 8;
          disabled_text4/text-fill: @transportation-text;
          disabled_text4/text-face-name: @standard-font;
          disabled_text4/text-halo-radius: 0.75*@standard-halo-radius;
          disabled_text4/text-halo-fill: @standard-halo-fill;
          disabled_text4/text-dy: 10;
          disabled_text4/text-dx: 6;
          disabled_text4/text-horizontal-alignment: right;
          disabled_text4/text-vertical-alignment: middle;
        }
        [addon = 'parent_text'] {
          parent_text/text-anchor-cond: "[osm_id]+',parent_'+[osm_id]+',!parent2_'+[osm_id]";
          parent_text/text-allow-overlap-anchor: "[osm_id]+',parent_'+[osm_id]";
          parent_text/text-anchor-set: "'parent_text_'+[osm_id]";
          parent_text/text-name: "[parent]";
          parent_text/text-size: 8;
          parent_text/text-fill: @transportation-text;
          parent_text/text-face-name: @standard-font;
          parent_text/text-halo-radius: 0.75*@standard-halo-radius;
          parent_text/text-halo-fill: @standard-halo-fill;
          parent_text/text-dy: 4;
          parent_text/text-dx: 10;
          parent_text/text-horizontal-alignment: right;
          parent_text/text-vertical-alignment: middle;

          parent_text2/text-anchor-cond: "[osm_id]+',parent2_'+[osm_id]+',!parent_text_'+[osm_id]";
          parent_text2/text-allow-overlap-anchor: "[osm_id]+',parent_'+[osm_id]";
          parent_text2/text-anchor-set: "'parent_text_'+[osm_id]";
          parent_text2/text-name: "[parent]";
          parent_text2/text-size: 8;
          parent_text2/text-fill: @transportation-text;
          parent_text2/text-face-name: @standard-font;
          parent_text2/text-halo-radius: 0.75*@standard-halo-radius;
          parent_text2/text-halo-fill: @standard-halo-fill;
          parent_text2/text-dy: 2;
          parent_text2/text-dx: 13;
          parent_text2/text-horizontal-alignment: right;
          parent_text2/text-vertical-alignment: middle;

          parent_text3/text-anchor-cond: "[osm_id]+',parent_'+[osm_id]+',!parent_text_'+[osm_id]";
          parent_text3/text-allow-overlap-anchor: "[osm_id]+',parent_'+[osm_id]";
          parent_text3/text-anchor-set: "'parent_text_'+[osm_id]";
          parent_text3/text-name: "[parent]";
          parent_text3/text-size: 8;
          parent_text3/text-fill: @transportation-text;
          parent_text3/text-face-name: @standard-font;
          parent_text3/text-halo-radius: 0.75*@standard-halo-radius;
          parent_text3/text-halo-fill: @standard-halo-fill;
          parent_text3/text-dy: 8;
          parent_text3/text-dx: 9;
          parent_text3/text-horizontal-alignment: right;
          parent_text3/text-vertical-alignment: middle;
        }
        [addon = 'women_text'] {
          women_text/text-anchor-cond: "[osm_id]+',women_'+[osm_id]+',!women2_'+[osm_id]+',!women3_'+[osm_id]+',!women4_'+[osm_id]";
          women_text/text-allow-overlap-anchor: "[osm_id]+',women_'+[osm_id]";
          women_text/text-anchor-set: "'women_text_'+[osm_id]";
          women_text/text-name: "[women]";
          women_text/text-size: 8;
          women_text/text-fill: @transportation-text;
          women_text/text-face-name: @standard-font;
          women_text/text-halo-radius: 0.75*@standard-halo-radius;
          women_text/text-halo-fill: @standard-halo-fill;
          women_text/text-dy: 5;
          women_text/text-dx: 4;
          women_text/text-horizontal-alignment: right;
          women_text/text-vertical-alignment: middle;

          women_text2/text-anchor-cond: "[osm_id]+',women2_'+[osm_id]+',!women_text_'+[osm_id]";
          women_text2/text-allow-overlap-anchor: "[osm_id]+',women_'+[osm_id]";
          women_text2/text-anchor-set: "'women_text_'+[osm_id]";
          women_text2/text-name: "[women]";
          women_text2/text-size: 8;
          women_text2/text-fill: @transportation-text;
          women_text2/text-face-name: @standard-font;
          women_text2/text-halo-radius: 0.75*@standard-halo-radius;
          women_text2/text-halo-fill: @standard-halo-fill;
          women_text2/text-dy: 1;
          women_text2/text-dx: 10;
          women_text2/text-horizontal-alignment: right;
          women_text2/text-vertical-alignment: middle;

          women_text3/text-anchor-cond: "[osm_id]+',women3_'+[osm_id]+',!women_text_'+[osm_id]";
          women_text3/text-allow-overlap-anchor: "[osm_id]+',women_'+[osm_id]";
          women_text3/text-anchor-set: "'women_text_'+[osm_id]";
          women_text3/text-name: "[women]";
          women_text3/text-size: 8;
          women_text3/text-fill: @transportation-text;
          women_text3/text-face-name: @standard-font;
          women_text3/text-halo-radius: 0.75*@standard-halo-radius;
          women_text3/text-halo-fill: @standard-halo-fill;
          women_text3/text-dy: -6;
          women_text3/text-dx: 10;
          women_text3/text-horizontal-alignment: right;
          women_text3/text-vertical-alignment: middle;

          women_text4/text-anchor-cond: "[osm_id]+',women3_'+[osm_id]+',!women_text_'+[osm_id]";
          women_text4/text-allow-overlap-anchor: "[osm_id]+',women_'+[osm_id]";
          women_text4/text-anchor-set: "'women_text_'+[osm_id]";
          women_text4/text-name: "[women]";
          women_text4/text-size: 8;
          women_text4/text-fill: @transportation-text;
          women_text4/text-face-name: @standard-font;
          women_text4/text-halo-radius: 0.75*@standard-halo-radius;
          women_text4/text-halo-fill: @standard-halo-fill;
          women_text4/text-dy: -8;
          women_text4/text-dx: 10;
          women_text4/text-horizontal-alignment: right;
          women_text4/text-vertical-alignment: middle;
        }
      }
    }
    [zoom >= 18] {
      [addon = 'lit2'] {
        lit5/marker-anchor-cond: "[osm_id]+',!lit_'+[osm_id]";
        lit5/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
        lit5/marker-anchor-set: "'lit_'+[osm_id]";
        lit5/marker-file: url('symbols/transport/lit_left.svg');
        lit5/marker-fill: @transportation-icon;
        lit5/marker-transform: 'translate(-6,-3)';
        lit5/marker-placement: interior;
        lit5/marker-clip: false;

        lit6/marker-anchor-cond: "[osm_id]+',!lit_'+[osm_id]";
        lit6/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
        lit6/marker-anchor-set: "'lit_'+[osm_id]";
        lit6/marker-file: url('symbols/transport/lit_left.svg');
        lit6/marker-fill: @transportation-icon;
        lit6/marker-transform: 'translate(-6,-1)';
        lit6/marker-placement: interior;
        lit6/marker-clip: false;
      }
      [addon = 'shopping2'] {
        shopping3/marker-anchor-cond: "[osm_id]+',!shopping_'+[osm_id]";
        shopping3/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
        shopping3/marker-anchor-set: "'shopping_'+[osm_id]";
        shopping3/marker-file: url('symbols/transport/shopping2.svg');
        shopping3/marker-fill: @transportation-icon;
        shopping3/marker-transform: 'translate(9,-7)';
        shopping2/marker-placement: interior;
        shopping2/marker-clip: false;
      }
    }
  }

  [feature = 'parking_minor'][zoom >= 18] {
    [addon = 'shopping'] {
      shopping/marker-anchor-cond: "[osm_id]";
      shopping/marker-allow-overlap-anchor: "[osm_id]";
      shopping/marker-anchor-set: "'shopping_'+[osm_id]";
      shopping/marker-file: url('symbols/transport/shopping.svg');
      shopping/marker-fill: @transportation-icon;
      shopping/marker-transform: 'translate(3,4)';
      shopping/marker-placement: interior;
      shopping/marker-clip: false;
    }
    [addon = 'fee'] {
      fee/marker-anchor-cond: "[osm_id]";
      fee/marker-allow-overlap-anchor: "[osm_id]";
      fee/marker-anchor-set: "'fee_'+[osm_id]";
      fee/marker-file: url('symbols/currencies/[fee].svg');
      fee/marker-fill: @transportation-icon;
      fee/marker-transform: 'translate(4,6)';
      fee/marker-placement: interior;
      fee/marker-clip: false;

      fee2/marker-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
      fee2/marker-allow-overlap-anchor: "[osm_id]";
      fee2/marker-anchor-set: "'fee_'+[osm_id]";
      fee2/marker-file: url('symbols/currencies/[fee].svg');
      fee2/marker-fill: @transportation-icon;
      fee2/marker-transform: 'translate(-6,1)';
      [capacity > 0] {
        fee2/marker-transform: 'translate(-6,7)';
      }
      fee2/marker-placement: interior;
      fee2/marker-clip: false;
    }
    [zoom >= 19] {
      [addon = 'capacity'] {
        capacity/text-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
        capacity/text-allow-overlap-anchor: "[osm_id]+',fee_'+[osm_id]";
        capacity/text-anchor-set: "'capacity_'+[osm_id]";
        capacity/text-name: "[capacity]";
        capacity/text-size: 9;
        capacity/text-fill: @transportation-text;
        capacity/text-face-name: @standard-font;
        capacity/text-halo-radius: @standard-halo-radius;
        capacity/text-halo-fill: @standard-halo-fill;
        capacity/text-dy: -4;
        capacity/text-dx: -4;
        capacity/text-horizontal-alignment: left;
        capacity/text-vertical-alignment: bottom;

        capacity2/text-anchor-cond: "[osm_id]+',fee_'+[osm_id]";
        capacity2/text-allow-overlap-anchor: "[osm_id]+',fee_'+[osm_id]";
        capacity2/text-anchor-set: "'capacity_'+[osm_id]";
        capacity2/text-name: "[capacity]";
        capacity2/text-size: 9;
        capacity2/text-fill: @transportation-text;
        capacity2/text-face-name: @standard-font;
        capacity2/text-halo-radius: @standard-halo-radius;
        capacity2/text-halo-fill: @standard-halo-fill;
        capacity2/text-dy: -5;
        capacity2/text-dx: -4;
        capacity2/text-horizontal-alignment: left;
        capacity2/text-vertical-alignment: bottom;
      }
    }
  }

  [feature = 'bicycle_parking'],
  [feature = 'motorcycle_parking'] {
    [zoom >= 18] {
      [addon = 'covered'] {
        cover/marker-anchor-cond: "[osm_id]";
        cover/marker-allow-overlap-anchor: "[osm_id]";
        cover/marker-anchor-set: "'cover_'+[osm_id]";
        cover/marker-file: url('symbols/transport/roof.svg');
        cover/marker-fill: @transportation-icon;
        cover/marker-transform: 'translate(-4,-8)';
        cover/marker-placement: interior;
        cover/marker-clip: false;
      }
      [addon = 'lit'] {
        lit/marker-anchor-cond: "[osm_id]";
        lit/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
        lit/marker-anchor-set: "'lit_'+[osm_id]";
        lit/marker-file: url('symbols/transport/lit_left.svg');
        lit/marker-fill: @transportation-icon;
        lit/marker-transform: 'translate(-9,-3)';
        lit/marker-placement: interior;
        lit/marker-clip: false;
      }
      [addon = 'shopping'] {
        [fee = 'no'][capacity = 0] {
          shopping/marker-anchor-cond: "[osm_id]";
          shopping/marker-allow-overlap-anchor: "[osm_id]+',lit_'+[osm_id]";
          shopping/marker-anchor-set: "'shopping_'+[osm_id]";
          shopping/marker-file: url('symbols/transport/shopping.svg');
          shopping/marker-fill: @transportation-icon;
          shopping/marker-transform: 'translate(4,-5)';
          shopping/marker-placement: interior;
          shopping/marker-clip: false;
        }
        shopping2/marker-anchor-cond: "[osm_id]+',!shopping_'+[osm_id]";
        shopping2/marker-allow-overlap-anchor: "[osm_id]+',lit_'+[osm_id]";
        shopping2/marker-anchor-set: "'shopping_'+[osm_id]";
        shopping2/marker-file: url('symbols/transport/shopping.svg');
        shopping2/marker-fill: @transportation-icon;
        shopping2/marker-transform: 'translate(-11,4)';
        shopping2/marker-placement: interior;
        shopping2/marker-clip: false;
      }
      [addon = 'fee'] {
        fee/marker-anchor-cond: "[osm_id]";
        fee/marker-allow-overlap-anchor: "[osm_id]";
        fee/marker-anchor-set: "'fee_'+[osm_id]";
        fee/marker-file: url('symbols/currencies/[fee].svg');
        fee/marker-fill: @transportation-icon;
        fee/marker-transform: 'translate(12,4)';
        [feature = 'motorcycle_parking'] {
          fee/marker-transform: 'translate(13,4)';
        }
        [capacity = 0] {
          fee/marker-transform: 'translate(6,-4)';
          [feature = 'motorcycle_parking'] {
            fee/marker-transform: 'translate(6,-5)';
          }
        }
        fee/marker-placement: interior;
        fee/marker-clip: false;

        fee2/marker-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
        fee2/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
        fee2/marker-anchor-set: "'fee_'+[osm_id]";
        fee2/marker-file: url('symbols/currencies/[fee].svg');
        fee2/marker-fill: @transportation-icon;
        fee2/marker-transform: 'translate(-11,-3)';
        fee2/marker-placement: interior;
        fee2/marker-clip: false;

        fee3/marker-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
        fee3/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]+',lit_'+[osm_id]";
        fee3/marker-anchor-set: "'fee_'+[osm_id]";
        fee3/marker-file: url('symbols/currencies/[fee].svg');
        fee3/marker-fill: @transportation-icon;
        fee3/marker-transform: 'translate(-11,4)';
        fee3/marker-placement: interior;
        fee3/marker-clip: false;

        fee4/marker-anchor-cond: "[osm_id]+',!fee_'+[osm_id]";
        fee4/marker-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]+',shopping_'+[osm_id]+',lit_'+[osm_id]";
        fee4/marker-anchor-set: "'fee_'+[osm_id]";
        fee4/marker-file: url('symbols/currencies/[fee].svg');
        fee4/marker-fill: @transportation-icon;
        fee4/marker-transform: 'translate(-15,-3)';
        fee4/marker-placement: interior;
        fee4/marker-clip: false;
      }
      [addon = 'capacity'] {
        capacity/text-anchor-cond: "[osm_id]";
        capacity/text-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]+',fee_'+[osm_id]";
        capacity/text-anchor-set: "'capacity_'+[osm_id]";
        capacity/text-name: "[capacity]";
        capacity/text-size: 9;
        capacity/text-fill: @transportation-text;
        capacity/text-face-name: @standard-font;
        capacity/text-halo-radius: @standard-halo-radius;
        capacity/text-halo-fill: @standard-halo-fill;
        capacity/text-dy: -8;
        [feature = 'motorcycle_parking'] {
          capacity/text-dy: -9;
        }
        capacity/text-dx: 2;
        capacity/text-horizontal-alignment: right;
        capacity/text-vertical-alignment: bottom;
      }
    }
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
