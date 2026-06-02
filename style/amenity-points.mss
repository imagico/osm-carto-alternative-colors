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
@viewpoints-icon: @amenity-brown;
@tree-icon: #4d9945;
@tree-text: @tree-icon;

@street-lamp-halo: #fefecc;
@street-lamp: @man-made-icon;

@station-color: #7981b0;
@station-text: darken(saturate(@station-color, 15%), 10%);

// shadows of planters and piers
@shadow-color: #505060;

@power-medium: #db27e1;
@power-high: #f6610e;

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

#planter-polygons [zoom >= 18] {
  ::shadow {
    line-color: @shadow-color;
    line-width: 1.0;
    line-clip: false;
    line-opacity: 0.2;
    line-geometry-transform: "translate(1.0, 1.0)";
  }
  ::main {
    polygon-fill: @orchard;
    polygon-clip: false;
    line-width: 0.5;
    [zoom >= 19] { line-width: 0.625; }
    [zoom >= 20] { line-width: 0.75; }
    line-color: @man-made-icon;
    line-clip: false;
    [way_pixels > 120] {
      backside/line-width: 0.25;
      backside/line-color: @man-made-icon;
      backside/line-offset: -1.6;
      [zoom >= 19] { backside/line-offset: -1.75; }
      [zoom >= 20] { backside/line-offset: -1.9; }
      backside/line-dasharray: 1.5,1;
    }
  }
}

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

#viewpoints[zoom >= 16] {
  halo/line-color: @standard-halo-fill;
  halo/line-width: 1.6;
  fill/polygon-fill: @viewpoints-icon;
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

#addon-symbols-chargingstation[zoom >= 17] {
  [feature = 'charging_station'] {
    [addon = 'private'][zoom >= 18] {
      private/marker-anchor-cond: "[osm_id]";
      private/marker-allow-overlap-anchor: "[osm_id]";
      private/marker-anchor-set: "'private_'+[osm_id]";
      private/marker-file: url('symbols/transport/private.svg');
      private/marker-fill: @transportation-icon;
      private/marker-opacity: @private-opacity;
      private/marker-transform: 'translate(10,3)';
      private/marker-placement: interior;
      private/marker-clip: false;
    }
    [addon = 'covered'] {
      cover/marker-anchor-cond: "[osm_id]";
      cover/marker-allow-overlap-anchor: "[osm_id]";
      cover/marker-anchor-set: "'cover_'+[osm_id]";
      cover/marker-file: url('symbols/transport/roof_large.svg');
      cover/marker-fill: @transportation-icon;
      cover/marker-transform: 'translate(0,-9)';
      cover/marker-placement: interior;
      cover/marker-clip: false;
    }
    [addon = 'capacity'][zoom >= 18] {
      capacity/text-anchor-cond: "[osm_id]";
      capacity/text-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
      capacity/text-anchor-set: "'capacity_'+[osm_id]";
      capacity/text-name: "[capacity]";
      capacity/text-size: 9;
      capacity/text-fill: @transportation-text;
      capacity/text-face-name: @standard-font;
      capacity/text-halo-radius: @standard-halo-radius;
      capacity/text-halo-fill: @standard-halo-fill;
      capacity/text-dy: -6;
      capacity/text-dx: -8;
      capacity/text-horizontal-alignment: left;
      capacity/text-vertical-alignment: bottom;

      capacity2/text-anchor-cond: "[osm_id]+',!capacity_'+[osm_id]";
      capacity2/text-allow-overlap-anchor: "[osm_id]+',cover_'+[osm_id]";
      capacity2/text-anchor-set: "'capacity_'+[osm_id]";
      capacity2/text-name: "[capacity]";
      capacity2/text-size: 9;
      capacity2/text-fill: @transportation-text;
      capacity2/text-face-name: @standard-font;
      capacity2/text-halo-radius: @standard-halo-radius;
      capacity2/text-halo-fill: @standard-halo-fill;
      capacity2/text-dy: -8;
      capacity2/text-dx: -8;
      capacity2/text-horizontal-alignment: left;
      capacity2/text-vertical-alignment: bottom;

      capacity3/text-anchor-cond: "[osm_id]+',!capacity_'+[osm_id]";
      capacity3/text-allow-overlap-anchor: "[osm_id]";
      capacity3/text-anchor-set: "'capacity3_'+[osm_id]";
      capacity3/text-name: "[capacity]";
      capacity3/text-size: 9;
      capacity3/text-fill: @transportation-text;
      capacity3/text-face-name: @standard-font;
      capacity3/text-halo-radius: @standard-halo-radius;
      capacity3/text-halo-fill: @standard-halo-fill;
      capacity3/text-dy: -12;
      capacity3/text-dx: -8;
      capacity3/text-horizontal-alignment: left;
      capacity3/text-vertical-alignment: bottom;

      capacity4/text-anchor-cond: "[osm_id]+',!capacity_'+[osm_id]+',!capacity3_'+[osm_id]";
      capacity4/text-allow-overlap-anchor: "[osm_id]";
      capacity4/text-anchor-set: "'capacity4_'+[osm_id]";
      capacity4/text-name: "[capacity]";
      capacity4/text-size: 9;
      capacity4/text-fill: @transportation-text;
      capacity4/text-face-name: @standard-font;
      capacity4/text-halo-radius: @standard-halo-radius;
      capacity4/text-halo-fill: @standard-halo-fill;
      capacity4/text-dy: -11;
      capacity4/text-dx: 0;
      capacity4/text-horizontal-alignment: middle;
      capacity4/text-vertical-alignment: top;

      capacity5/text-anchor-cond: "[osm_id]+',!capacity_'+[osm_id]+',!capacity3_'+[osm_id]+',!capacity4_'+[osm_id]";
      capacity5/text-allow-overlap-anchor: "[osm_id]";
      capacity5/text-anchor-set: "'capacity5_'+[osm_id]";
      capacity5/text-name: "[capacity]";
      capacity5/text-size: 9;
      capacity5/text-fill: @transportation-text;
      capacity5/text-face-name: @standard-font;
      capacity5/text-halo-radius: @standard-halo-radius;
      capacity5/text-halo-fill: @standard-halo-fill;
      capacity5/text-dy: 15;
      capacity5/text-dx: -7;
      capacity5/text-horizontal-alignment: left;
      capacity5/text-vertical-alignment: top;
    }
    [addon = 'vehicles'] {
      [vehicles = 'bicycle'],
      [vehicles = 'bicycle+car'] {
        bicycle/marker-anchor-cond: "[osm_id]";
        bicycle/marker-allow-overlap-anchor: '[osm_id]';
        bicycle/marker-anchor-set: "'bicycle_'+[osm_id]";
        bicycle/marker-file: url('symbols/transport/bicycle.svg');
        bicycle/marker-fill: @transportation-icon;
        bicycle/marker-transform: 'translate(-12,4)';
        bicycle/marker-placement: interior;
        bicycle/marker-clip: false;

        bicycle2/marker-anchor-cond: "[osm_id]+',!bicycle_'+[osm_id]+',!capacity_'+[osm_id]";
        bicycle2/marker-allow-overlap-anchor: '[osm_id]';
        bicycle2/marker-anchor-set: "'bicycle2_'+[osm_id]";
        bicycle2/marker-file: url('symbols/transport/bicycle.svg');
        bicycle2/marker-fill: @transportation-icon;
        bicycle2/marker-transform: 'translate(-12,-4)';
        bicycle2/marker-placement: interior;
        bicycle2/marker-clip: false;

        bicycle3/marker-anchor-cond: "[osm_id]+',!bicycle_'+[osm_id]+',!bicycle2_'+[osm_id]";
        bicycle3/marker-allow-overlap-anchor: '[osm_id]';
        bicycle3/marker-anchor-set: "'bicycle_'+[osm_id]";
        bicycle3/marker-file: url('symbols/transport/bicycle.svg');
        bicycle3/marker-fill: @transportation-icon;
        bicycle3/marker-transform: 'translate(-12,6)';
        bicycle3/marker-placement: interior;
        bicycle3/marker-clip: false;

        bicycle4/marker-anchor-cond: "[osm_id]+',!bicycle_'+[osm_id]+',!bicycle2_'+[osm_id]";
        bicycle4/marker-allow-overlap-anchor: "[osm_id]";
        bicycle4/marker-anchor-set: "'bicycle4_'+[osm_id]";
        bicycle4/marker-file: url('symbols/transport/bicycle.svg');
        bicycle4/marker-fill: @transportation-icon;
        bicycle4/marker-transform: 'translate(11,9)';
        bicycle4/marker-placement: interior;
        bicycle4/marker-clip: false;

        bicycle5/marker-anchor-cond: "[osm_id]+',!bicycle_'+[osm_id]+',!bicycle2_'+[osm_id]+',!bicycle4_'+[osm_id]";
        bicycle5/marker-allow-overlap-anchor: "[osm_id]";
        bicycle5/marker-anchor-set: "'bicycle5_'+[osm_id]";
        bicycle5/marker-file: url('symbols/transport/bicycle.svg');
        bicycle5/marker-fill: @transportation-icon;
        bicycle5/marker-transform: 'translate(11,-9)';
        bicycle5/marker-placement: interior;
        bicycle5/marker-clip: false;
      }


      [vehicles = 'motorcycle'],
      [vehicles = 'motorcycle+car'] {
        motorcycle/marker-anchor-cond: "[osm_id]";
        motorcycle/marker-allow-overlap-anchor: '[osm_id]';
        motorcycle/marker-anchor-set: "'motorcycle_'+[osm_id]";
        motorcycle/marker-file: url('symbols/transport/motorcycle.svg');
        motorcycle/marker-fill: @transportation-icon;
        motorcycle/marker-transform: 'translate(-12,4)';
        motorcycle/marker-placement: interior;
        motorcycle/marker-clip: false;

        motorcycle2/marker-anchor-cond: "[osm_id]+',!motorcycle_'+[osm_id]+',!capacity_'+[osm_id]";
        motorcycle2/marker-allow-overlap-anchor: '[osm_id]';
        motorcycle2/marker-anchor-set: "'motorcycle_'+[osm_id]";
        motorcycle2/marker-file: url('symbols/transport/motorcycle.svg');
        motorcycle2/marker-fill: @transportation-icon;
        motorcycle2/marker-transform: 'translate(-12,-4)';
        motorcycle2/marker-placement: interior;
        motorcycle2/marker-clip: false;
      }

      [vehicles = 'bicycle+car'],
      [vehicles = 'motorcycle+car'] {
        car/marker-anchor-cond: "[osm_id]+',!capacity_'+[osm_id]";
        car/marker-allow-overlap-anchor: "[osm_id]+',bicycle_'+[osm_id]+',motorcycle_'+[osm_id]";
        car/marker-anchor-set: "'car_'+[osm_id]";
        car/marker-file: url('symbols/transport/car.svg');
        car/marker-fill: @transportation-icon;
        car/marker-transform: 'translate(-12,-3)';
        car/marker-placement: interior;
        car/marker-clip: false;

        car1/marker-anchor-cond: "[osm_id]+',!car_'+[osm_id]";
        car1/marker-allow-overlap-anchor: "[osm_id]+',bicycle_'+[osm_id]+',motorcycle_'+[osm_id]";
        car1/marker-anchor-set: "'car_'+[osm_id]";
        car1/marker-file: url('symbols/transport/car.svg');
        car1/marker-fill: @transportation-icon;
        car1/marker-transform: 'translate(0,12)';
        car1/marker-placement: interior;
        car1/marker-clip: false;

        car2/marker-anchor-cond: "[osm_id]+',!car_'+[osm_id]";
        car2/marker-allow-overlap-anchor: "[osm_id]+',bicycle_'+[osm_id]+',motorcycle_'+[osm_id]";
        car2/marker-anchor-set: "'car2_'+[osm_id]";
        car2/marker-file: url('symbols/transport/car.svg');
        car2/marker-fill: @transportation-icon;
        car2/marker-transform: 'translate(-8,13)';
        car2/marker-placement: interior;
        car2/marker-clip: false;

        car3/marker-anchor-cond: "[osm_id]+',!car_'+[osm_id]+',!car2_'+[osm_id]";
        car3/marker-allow-overlap-anchor: "[osm_id]+',bicycle_'+[osm_id]+',motorcycle_'+[osm_id]";
        car3/marker-anchor-set: "'car_'+[osm_id]";
        car3/marker-file: url('symbols/transport/car.svg');
        car3/marker-fill: @transportation-icon;
        car3/marker-transform: 'translate(9,12)';
        car3/marker-placement: interior;
        car3/marker-clip: false;

        car4/marker-anchor-cond: "[osm_id]+',!car_'+[osm_id]+',!car2_'+[osm_id]";
        car4/marker-allow-overlap-anchor: "[osm_id]";
        car4/marker-anchor-set: "'car4_'+[osm_id]";
        car4/marker-file: url('symbols/transport/car.svg');
        car4/marker-fill: @transportation-icon;
        car4/marker-transform: 'translate(11,11)';
        car4/marker-placement: interior;
        car4/marker-clip: false;

        car5/marker-anchor-cond: "[osm_id]+',!car_'+[osm_id]+',!car2_'+[osm_id]+',!car4_'+[osm_id]";
        car5/marker-allow-overlap-anchor: "[osm_id]";
        car5/marker-anchor-set: "'car5_'+[osm_id]";
        car5/marker-file: url('symbols/transport/car.svg');
        car5/marker-fill: @transportation-icon;
        car5/marker-transform: 'translate(12,-10)';
        car5/marker-placement: interior;
        car5/marker-clip: false;
      }
    }

    [addon = 'socket_type2_combo'][zoom >= 18] {

      socket2_combo/marker-anchor-cond: "[osm_id]";
      socket2_combo/marker-allow-overlap-anchor: "[osm_id]";
      socket2_combo/marker-anchor-set: "'socket2_combo_'+[osm_id]";
      socket2_combo/marker-file: url('symbols/colored/socket_type2_combo.svg');
      [socket_output = 'medium'] { socket2_combo/marker-file: url('symbols/colored/socket_type2_combo_medium.svg'); }
      [socket_output = 'high'] { socket2_combo/marker-file: url('symbols/colored/socket_type2_combo_high.svg'); }
      socket2_combo/marker-transform: 'translate(12,3)';
      socket2_combo/marker-placement: interior;
      socket2_combo/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2_combo_capacity/text-anchor-cond: "[osm_id]+',socket2_combo_'+[osm_id]";
        socket2_combo_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_combo_'+[osm_id]";
        socket2_combo_capacity/text-anchor-set: "'socket2_combo_capacity_'+[osm_id]";
        socket2_combo_capacity/text-name: "[socket_capacity]";
        socket2_combo_capacity/text-size: 8;
        socket2_combo_capacity/text-fill: @transportation-text;
        socket2_combo_capacity/text-face-name: @standard-font;
        socket2_combo_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2_combo_capacity/text-halo-fill: @standard-halo-fill;
        socket2_combo_capacity/text-dy: 2;
        socket2_combo_capacity/text-dx: 17;
        socket2_combo_capacity/text-horizontal-alignment: right;
        socket2_combo_capacity/text-vertical-alignment: middle;
      }

      socket2_combo_b/marker-anchor-cond: "[osm_id]+',!socket2_combo_'+[osm_id]";
      socket2_combo_b/marker-allow-overlap-anchor: "[osm_id]";
      socket2_combo_b/marker-anchor-set: "'socket2_combo_'+[osm_id]+',socket2_combo_b_'+[osm_id]";
      socket2_combo_b/marker-file: url('symbols/colored/socket_type2_combo.svg');
      [socket_output = 'medium'] { socket2_combo_b/marker-file: url('symbols/colored/socket_type2_combo_medium.svg'); }
      [socket_output = 'high'] { socket2_combo_b/marker-file: url('symbols/colored/socket_type2_combo_high.svg'); }
      socket2_combo_b/marker-transform: 'translate(12,8)';
      socket2_combo_b/marker-placement: interior;
      socket2_combo_b/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2_combo_b_capacity/text-anchor-cond: "[osm_id]+',socket2_combo_b_'+[osm_id]";
        socket2_combo_b_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_combo_'+[osm_id]+',socket2_combo_b_'+[osm_id]";
        socket2_combo_b_capacity/text-anchor-set: "'socket2_combo_capacity_'+[osm_id]";
        socket2_combo_b_capacity/text-name: "[socket_capacity]";
        socket2_combo_b_capacity/text-size: 8;
        socket2_combo_b_capacity/text-fill: @transportation-text;
        socket2_combo_b_capacity/text-face-name: @standard-font;
        socket2_combo_b_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2_combo_b_capacity/text-halo-fill: @standard-halo-fill;
        socket2_combo_b_capacity/text-dy: 7;
        socket2_combo_b_capacity/text-dx: 17;
        socket2_combo_b_capacity/text-horizontal-alignment: right;
        socket2_combo_b_capacity/text-vertical-alignment: middle;
      }

      socket2_combo_c/marker-anchor-cond: "[osm_id]+',!socket2_combo_'+[osm_id]";
      socket2_combo_c/marker-allow-overlap-anchor: "[osm_id]";
      socket2_combo_c/marker-anchor-set: "'socket2_combo_'+[osm_id]+',socket2_combo_c_'+[osm_id]";
      socket2_combo_c/marker-file: url('symbols/colored/socket_type2_combo.svg');
      [socket_output = 'medium'] { socket2_combo_c/marker-file: url('symbols/colored/socket_type2_combo_medium.svg'); }
      [socket_output = 'high'] { socket2_combo_c/marker-file: url('symbols/colored/socket_type2_combo_high.svg'); }
      socket2_combo_c/marker-transform: 'translate(12,-2)';
      socket2_combo_c/marker-placement: interior;
      socket2_combo_c/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2_combo_c_capacity/text-anchor-cond: "[osm_id]+',socket2_combo_c_'+[osm_id]";
        socket2_combo_c_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_combo_'+[osm_id]+',socket2_combo_c_'+[osm_id]";
        socket2_combo_c_capacity/text-anchor-set: "'socket2_combo_capacity_'+[osm_id]";
        socket2_combo_c_capacity/text-name: "[socket_capacity]";
        socket2_combo_c_capacity/text-size: 8;
        socket2_combo_c_capacity/text-fill: @transportation-text;
        socket2_combo_c_capacity/text-face-name: @standard-font;
        socket2_combo_c_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2_combo_c_capacity/text-halo-fill: @standard-halo-fill;
        socket2_combo_c_capacity/text-dy: -3;
        socket2_combo_c_capacity/text-dx: 17;
        socket2_combo_c_capacity/text-horizontal-alignment: right;
        socket2_combo_c_capacity/text-vertical-alignment: middle;
      }

    }

    [addon = 'socket_type2'][zoom >= 18] {

      socket2a/marker-anchor-cond: "[osm_id]";
      socket2a/marker-allow-overlap-anchor: "[osm_id]";
      socket2a/marker-anchor-set: "'socket2_'+[osm_id]+',socket2a_'+[osm_id]";
      socket2a/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2a/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2a/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2a/marker-transform: 'translate(12,3)';
      socket2a/marker-placement: interior;
      socket2a/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2a_capacity/text-anchor-cond: "[osm_id]+',socket2a_'+[osm_id]";
        socket2a_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2a_'+[osm_id]";
        socket2a_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2a_capacity/text-name: "[socket_capacity]";
        socket2a_capacity/text-size: 8;
        socket2a_capacity/text-fill: @transportation-text;
        socket2a_capacity/text-face-name: @standard-font;
        socket2a_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2a_capacity/text-halo-fill: @standard-halo-fill;
        socket2a_capacity/text-dy: 2;
        socket2a_capacity/text-dx: 17;
        socket2a_capacity/text-horizontal-alignment: right;
        socket2a_capacity/text-vertical-alignment: middle;
      }

      socket2b/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2b/marker-allow-overlap-anchor: "[osm_id]";
      socket2b/marker-anchor-set: "'socket2_'+[osm_id]+',socket2b_'+[osm_id]";
      socket2b/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2b/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2b/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2b/marker-transform: 'translate(12,6)';
      socket2b/marker-placement: interior;
      socket2b/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2b_capacity/text-anchor-cond: "[osm_id]+',socket2b_'+[osm_id]";
        socket2b_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2b_'+[osm_id]";
        socket2b_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2b_capacity/text-name: "[socket_capacity]";
        socket2b_capacity/text-size: 8;
        socket2b_capacity/text-fill: @transportation-text;
        socket2b_capacity/text-face-name: @standard-font;
        socket2b_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2b_capacity/text-halo-fill: @standard-halo-fill;
        socket2b_capacity/text-dy: 5;
        socket2b_capacity/text-dx: 17;
        socket2b_capacity/text-horizontal-alignment: right;
        socket2b_capacity/text-vertical-alignment: middle;
      }

      socket2c/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2c/marker-allow-overlap-anchor: "[osm_id]";
      socket2c/marker-anchor-set: "'socket2_'+[osm_id]+',socket2c_'+[osm_id]";
      socket2c/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2c/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2c/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2c/marker-transform: 'translate(12,0)';
      socket2c/marker-placement: interior;
      socket2c/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2c_capacity/text-anchor-cond: "[osm_id]+',socket2c_'+[osm_id]";
        socket2c_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2c_'+[osm_id]";
        socket2c_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2c_capacity/text-name: "[socket_capacity]";
        socket2c_capacity/text-size: 8;
        socket2c_capacity/text-fill: @transportation-text;
        socket2c_capacity/text-face-name: @standard-font;
        socket2c_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2c_capacity/text-halo-fill: @standard-halo-fill;
        socket2c_capacity/text-dy: -1;
        socket2c_capacity/text-dx: 17;
        socket2c_capacity/text-horizontal-alignment: right;
        socket2c_capacity/text-vertical-alignment: middle;
      }

      socket2d/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2d/marker-allow-overlap-anchor: "[osm_id]";
      socket2d/marker-anchor-set: "'socket2_'+[osm_id]+',socket2d_'+[osm_id]";
      socket2d/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2d/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2d/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2d/marker-transform: 'translate(12,15)';
      socket2d/marker-placement: interior;
      socket2d/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2d_capacity/text-anchor-cond: "[osm_id]+',socket2d_'+[osm_id]";
        socket2d_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2d_'+[osm_id]";
        socket2d_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2d_capacity/text-name: "[socket_capacity]";
        socket2d_capacity/text-size: 8;
        socket2d_capacity/text-fill: @transportation-text;
        socket2d_capacity/text-face-name: @standard-font;
        socket2d_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2d_capacity/text-halo-fill: @standard-halo-fill;
        socket2d_capacity/text-dy: 14;
        socket2d_capacity/text-dx: 17;
        socket2d_capacity/text-horizontal-alignment: right;
        socket2d_capacity/text-vertical-alignment: middle;
      }

      socket2e/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2e/marker-allow-overlap-anchor: "[osm_id]";
      socket2e/marker-anchor-set: "'socket2_'+[osm_id]+',socket2e_'+[osm_id]";
      socket2e/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2e/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2e/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2e/marker-transform: 'translate(12,-9)';
      socket2e/marker-placement: interior;
      socket2e/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2e_capacity/text-anchor-cond: "[osm_id]+',socket2e_'+[osm_id]";
        socket2e_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2e_'+[osm_id]";
        socket2e_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2e_capacity/text-name: "[socket_capacity]";
        socket2e_capacity/text-size: 8;
        socket2e_capacity/text-fill: @transportation-text;
        socket2e_capacity/text-face-name: @standard-font;
        socket2e_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2e_capacity/text-halo-fill: @standard-halo-fill;
        socket2e_capacity/text-dy: -10;
        socket2e_capacity/text-dx: 17;
        socket2e_capacity/text-horizontal-alignment: right;
        socket2e_capacity/text-vertical-alignment: middle;
      }

      socket2f/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2f/marker-allow-overlap-anchor: "[osm_id]";
      socket2f/marker-anchor-set: "'socket2_'+[osm_id]+',socket2f_'+[osm_id]";
      socket2f/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2f/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2f/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2f/marker-transform: 'translate(12,17)';
      socket2f/marker-placement: interior;
      socket2f/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2f_capacity/text-anchor-cond: "[osm_id]+',socket2f_'+[osm_id]";
        socket2f_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2f_'+[osm_id]";
        socket2f_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2f_capacity/text-name: "[socket_capacity]";
        socket2f_capacity/text-size: 8;
        socket2f_capacity/text-fill: @transportation-text;
        socket2f_capacity/text-face-name: @standard-font;
        socket2f_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2f_capacity/text-halo-fill: @standard-halo-fill;
        socket2f_capacity/text-dy: 16;
        socket2f_capacity/text-dx: 17;
        socket2f_capacity/text-horizontal-alignment: right;
        socket2f_capacity/text-vertical-alignment: middle;
      }

      socket2g/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2g/marker-allow-overlap-anchor: "[osm_id]";
      socket2g/marker-anchor-set: "'socket2_'+[osm_id]+',socket2g_'+[osm_id]";
      socket2g/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2g/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2g/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2g/marker-transform: 'translate(12,-11)';
      socket2g/marker-placement: interior;
      socket2g/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2g_capacity/text-anchor-cond: "[osm_id]+',socket2g_'+[osm_id]";
        socket2g_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2g_'+[osm_id]";
        socket2g_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2g_capacity/text-name: "[socket_capacity]";
        socket2g_capacity/text-size: 8;
        socket2g_capacity/text-fill: @transportation-text;
        socket2g_capacity/text-face-name: @standard-font;
        socket2g_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2g_capacity/text-halo-fill: @standard-halo-fill;
        socket2g_capacity/text-dy: -12;
        socket2g_capacity/text-dx: 17;
        socket2g_capacity/text-horizontal-alignment: right;
        socket2g_capacity/text-vertical-alignment: middle;
      }

      socket2h/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2h/marker-allow-overlap-anchor: "[osm_id]+',capacity_'+[osm_id]+',car_'+[osm_id]";
      socket2h/marker-anchor-set: "'socket2_'+[osm_id]+',socket2h_'+[osm_id]";
      socket2h/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2h/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2h/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2h/marker-transform: 'translate(-5,-12)';
      socket2h/marker-placement: interior;
      socket2h/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2h_capacity/text-anchor-cond: "[osm_id]+',socket2h_'+[osm_id]";
        socket2h_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2h_'+[osm_id]";
        socket2h_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2h_capacity/text-name: "[socket_capacity]";
        socket2h_capacity/text-size: 8;
        socket2h_capacity/text-fill: @transportation-text;
        socket2h_capacity/text-face-name: @standard-font;
        socket2h_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2h_capacity/text-halo-fill: @standard-halo-fill;
        socket2h_capacity/text-dy: -13;
        socket2h_capacity/text-dx: -11;
        socket2h_capacity/text-horizontal-alignment: left;
        socket2h_capacity/text-vertical-alignment: middle;
      }

      socket2j/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2j/marker-allow-overlap-anchor: "[osm_id]+',capacity_'+[osm_id]+',cover_'+[osm_id]";
      socket2j/marker-anchor-set: "'socket2_'+[osm_id]+',socket2j_'+[osm_id]";
      socket2j/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2j/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2j/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2j/marker-transform: 'translate(-11,-11)';
      socket2j/marker-placement: interior;
      socket2j/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2j_capacity/text-anchor-cond: "[osm_id]+',socket2j_'+[osm_id]";
        socket2j_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2j_'+[osm_id]";
        socket2j_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2j_capacity/text-name: "[socket_capacity]";
        socket2j_capacity/text-size: 8;
        socket2j_capacity/text-fill: @transportation-text;
        socket2j_capacity/text-face-name: @standard-font;
        socket2j_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2j_capacity/text-halo-fill: @standard-halo-fill;
        socket2j_capacity/text-dy: -12;
        socket2j_capacity/text-dx: -17;
        socket2j_capacity/text-horizontal-alignment: left;
        socket2j_capacity/text-vertical-alignment: middle;
      }

      socket2i/marker-anchor-cond: "[osm_id]+',!socket2_'+[osm_id]";
      socket2i/marker-allow-overlap-anchor: "[osm_id]+',bicycle_'+[osm_id]+',car_'+[osm_id]";
      socket2i/marker-anchor-set: "'socket2_'+[osm_id]+',socket2i_'+[osm_id]";
      socket2i/marker-file: url('symbols/colored/socket_type2.svg');
      [socket_output = 'medium'] { socket2i/marker-file: url('symbols/colored/socket_type2_medium.svg'); }
      [socket_output = 'high'] { socket2i/marker-file: url('symbols/colored/socket_type2_high.svg'); }
      socket2i/marker-transform: 'translate(-9,14)';
      socket2i/marker-placement: interior;
      socket2i/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket2i_capacity/text-anchor-cond: "[osm_id]+',socket2i_'+[osm_id]";
        socket2i_capacity/text-allow-overlap-anchor: "[osm_id]+',socket2_'+[osm_id]+',socket2i_'+[osm_id]";
        socket2i_capacity/text-anchor-set: "'socket2_capacity_'+[osm_id]";
        socket2i_capacity/text-name: "[socket_capacity]";
        socket2i_capacity/text-size: 8;
        socket2i_capacity/text-fill: @transportation-text;
        socket2i_capacity/text-face-name: @standard-font;
        socket2i_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket2i_capacity/text-halo-fill: @standard-halo-fill;
        socket2i_capacity/text-dy: 14;
        socket2i_capacity/text-dx: -15;
        socket2i_capacity/text-horizontal-alignment: left;
        socket2i_capacity/text-vertical-alignment: middle;
      }
    }

    [addon = 'socket_nacs'][zoom >= 18] {
      socket_nacs_a/marker-anchor-cond: "[osm_id]";
      socket_nacs_a/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_a/marker-anchor-set: "'socket_nacs_a_'+[osm_id]+',socket_nacs_'+[osm_id]";
      socket_nacs_a/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_a/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_a/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_a/marker-transform: 'translate(12,3)';
      socket_nacs_a/marker-placement: interior;
      socket_nacs_a/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_a_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_'+[osm_id]";
        socket_nacs_a_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_a_'+[osm_id]";
        socket_nacs_a_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_a_capacity/text-name: "[socket_capacity]";
        socket_nacs_a_capacity/text-size: 8;
        socket_nacs_a_capacity/text-fill: @transportation-text;
        socket_nacs_a_capacity/text-face-name: @standard-font;
        socket_nacs_a_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_a_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_a_capacity/text-dy: 2;
        socket_nacs_a_capacity/text-dx: 19;
        socket_nacs_a_capacity/text-horizontal-alignment: right;
        socket_nacs_a_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_b/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_b/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_b/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_b_'+[osm_id]";
      socket_nacs_b/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_b/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_b/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_b/marker-transform: 'translate(13,6)';
      socket_nacs_b/marker-placement: interior;
      socket_nacs_b/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_b_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_b_'+[osm_id]";
        socket_nacs_b_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_b_'+[osm_id]";
        socket_nacs_b_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_b_capacity/text-name: "[socket_capacity]";
        socket_nacs_b_capacity/text-size: 8;
        socket_nacs_b_capacity/text-fill: @transportation-text;
        socket_nacs_b_capacity/text-face-name: @standard-font;
        socket_nacs_b_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_b_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_b_capacity/text-dy: 5;
        socket_nacs_b_capacity/text-dx: 19;
        socket_nacs_b_capacity/text-horizontal-alignment: right;
        socket_nacs_b_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_c/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_c/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_c/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_c_'+[osm_id]";
      socket_nacs_c/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_c/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_c/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_c/marker-transform: 'translate(13,0)';
      socket_nacs_c/marker-placement: interior;
      socket_nacs_c/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_c_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_c_'+[osm_id]";
        socket_nacs_c_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_c_'+[osm_id]";
        socket_nacs_c_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_c_capacity/text-name: "[socket_capacity]";
        socket_nacs_c_capacity/text-size: 8;
        socket_nacs_c_capacity/text-fill: @transportation-text;
        socket_nacs_c_capacity/text-face-name: @standard-font;
        socket_nacs_c_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_c_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_c_capacity/text-dy: -1;
        socket_nacs_c_capacity/text-dx: 19;
        socket_nacs_c_capacity/text-horizontal-alignment: right;
        socket_nacs_c_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_d/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_d/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_d/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_d_'+[osm_id]";
      socket_nacs_d/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_d/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_d/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_d/marker-transform: 'translate(13,13)';
      socket_nacs_d/marker-placement: interior;
      socket_nacs_d/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_d_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_d_'+[osm_id]";
        socket_nacs_d_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_d_'+[osm_id]";
        socket_nacs_d_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_d_capacity/text-name: "[socket_capacity]";
        socket_nacs_d_capacity/text-size: 8;
        socket_nacs_d_capacity/text-fill: @transportation-text;
        socket_nacs_d_capacity/text-face-name: @standard-font;
        socket_nacs_d_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_d_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_d_capacity/text-dy: 12;
        socket_nacs_d_capacity/text-dx: 19;
        socket_nacs_d_capacity/text-horizontal-alignment: right;
        socket_nacs_d_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_e/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_e/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_e/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_e_'+[osm_id]";
      socket_nacs_e/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_e/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_e/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_e/marker-transform: 'translate(13,-7)';
      socket_nacs_e/marker-placement: interior;
      socket_nacs_e/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_e_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_e_'+[osm_id]";
        socket_nacs_e_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_e_'+[osm_id]";
        socket_nacs_e_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_e_capacity/text-name: "[socket_capacity]";
        socket_nacs_e_capacity/text-size: 8;
        socket_nacs_e_capacity/text-fill: @transportation-text;
        socket_nacs_e_capacity/text-face-name: @standard-font;
        socket_nacs_e_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_e_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_e_capacity/text-dy: -8;
        socket_nacs_e_capacity/text-dx: 19;
        socket_nacs_e_capacity/text-horizontal-alignment: right;
        socket_nacs_e_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_f/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_f/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_f/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_f_'+[osm_id]";
      socket_nacs_f/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_f/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_f/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_f/marker-transform: 'translate(13,15)';
      socket_nacs_f/marker-placement: interior;
      socket_nacs_f/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_f_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_f_'+[osm_id]";
        socket_nacs_f_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_f_'+[osm_id]";
        socket_nacs_f_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_f_capacity/text-name: "[socket_capacity]";
        socket_nacs_f_capacity/text-size: 8;
        socket_nacs_f_capacity/text-fill: @transportation-text;
        socket_nacs_f_capacity/text-face-name: @standard-font;
        socket_nacs_f_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_f_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_f_capacity/text-dy: 14;
        socket_nacs_f_capacity/text-dx: 19;
        socket_nacs_f_capacity/text-horizontal-alignment: right;
        socket_nacs_f_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_g/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_g/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_g/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_g_'+[osm_id]";
      socket_nacs_g/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_g/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_g/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_g/marker-transform: 'translate(13,-9)';
      socket_nacs_g/marker-placement: interior;
      socket_nacs_g/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_g_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_g_'+[osm_id]";
        socket_nacs_g_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_g_'+[osm_id]";
        socket_nacs_g_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_g_capacity/text-name: "[socket_capacity]";
        socket_nacs_g_capacity/text-size: 8;
        socket_nacs_g_capacity/text-fill: @transportation-text;
        socket_nacs_g_capacity/text-face-name: @standard-font;
        socket_nacs_g_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_g_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_g_capacity/text-dy: -10;
        socket_nacs_g_capacity/text-dx: 19;
        socket_nacs_g_capacity/text-horizontal-alignment: right;
        socket_nacs_g_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_h/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_h/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_h/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_h_'+[osm_id]";
      socket_nacs_h/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_h/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_h/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_h/marker-transform: 'translate(13,17)';
      socket_nacs_h/marker-placement: interior;
      socket_nacs_h/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_h_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_h_'+[osm_id]";
        socket_nacs_h_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_h_'+[osm_id]";
        socket_nacs_h_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_h_capacity/text-name: "[socket_capacity]";
        socket_nacs_h_capacity/text-size: 8;
        socket_nacs_h_capacity/text-fill: @transportation-text;
        socket_nacs_h_capacity/text-face-name: @standard-font;
        socket_nacs_h_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_h_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_h_capacity/text-dy: 16;
        socket_nacs_h_capacity/text-dx: 19;
        socket_nacs_h_capacity/text-horizontal-alignment: right;
        socket_nacs_h_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_i/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_i/marker-allow-overlap-anchor: "[osm_id]";
      socket_nacs_i/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_i_'+[osm_id]";
      socket_nacs_i/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_i/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_i/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_i/marker-transform: 'translate(13,-11)';
      socket_nacs_i/marker-placement: interior;
      socket_nacs_i/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_i_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_i_'+[osm_id]";
        socket_nacs_i_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_i_'+[osm_id]";
        socket_nacs_i_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_i_capacity/text-name: "[socket_capacity]";
        socket_nacs_i_capacity/text-size: 8;
        socket_nacs_i_capacity/text-fill: @transportation-text;
        socket_nacs_i_capacity/text-face-name: @standard-font;
        socket_nacs_i_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_i_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_i_capacity/text-dy: -12;
        socket_nacs_i_capacity/text-dx: 19;
        socket_nacs_i_capacity/text-horizontal-alignment: right;
        socket_nacs_i_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_j/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_j/marker-allow-overlap-anchor: "[osm_id]+',capacity_'+[osm_id]+',car_'+[osm_id]";
      socket_nacs_j/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_j_'+[osm_id]";
      socket_nacs_j/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_j/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_j/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_j/marker-transform: 'translate(-5,-12)';
      socket_nacs_j/marker-placement: interior;
      socket_nacs_j/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_j_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_j_'+[osm_id]";
        socket_nacs_j_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_j_'+[osm_id]";
        socket_nacs_j_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_j_capacity/text-name: "[socket_capacity]";
        socket_nacs_j_capacity/text-size: 8;
        socket_nacs_j_capacity/text-fill: @transportation-text;
        socket_nacs_j_capacity/text-face-name: @standard-font;
        socket_nacs_j_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_j_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_j_capacity/text-dy: -13;
        socket_nacs_j_capacity/text-dx: -12;
        socket_nacs_j_capacity/text-horizontal-alignment: left;
        socket_nacs_j_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_l/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_l/marker-allow-overlap-anchor: "[osm_id]+',capacity_'+[osm_id]+',cover_'+[osm_id]";
      socket_nacs_l/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_l_'+[osm_id]";
      socket_nacs_l/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_l/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_l/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_l/marker-transform: 'translate(-11,-11)';
      socket_nacs_l/marker-placement: interior;
      socket_nacs_l/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_l_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_l_'+[osm_id]";
        socket_nacs_l_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_l_'+[osm_id]";
        socket_nacs_l_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_l_capacity/text-name: "[socket_capacity]";
        socket_nacs_l_capacity/text-size: 8;
        socket_nacs_l_capacity/text-fill: @transportation-text;
        socket_nacs_l_capacity/text-face-name: @standard-font;
        socket_nacs_l_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_l_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_l_capacity/text-dy: -12;
        socket_nacs_l_capacity/text-dx: -18;
        socket_nacs_l_capacity/text-horizontal-alignment: left;
        socket_nacs_l_capacity/text-vertical-alignment: middle;
      }

      socket_nacs_k/marker-anchor-cond: "[osm_id]+',!socket_nacs_'+[osm_id]";
      socket_nacs_k/marker-allow-overlap-anchor: "[osm_id]+',bicycle_'+[osm_id]+',car_'+[osm_id]";
      socket_nacs_k/marker-anchor-set: "'socket_nacs_'+[osm_id]+',socket_nacs_k_'+[osm_id]";
      socket_nacs_k/marker-file: url('symbols/colored/socket_nacs.svg');
      [socket_output = 'medium'] { socket_nacs_k/marker-file: url('symbols/colored/socket_nacs_medium.svg'); }
      [socket_output = 'high'] { socket_nacs_k/marker-file: url('symbols/colored/socket_nacs_high.svg'); }
      socket_nacs_k/marker-transform: 'translate(-10,14)';
      socket_nacs_k/marker-placement: interior;
      socket_nacs_k/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_nacs_k_capacity/text-anchor-cond: "[osm_id]+',socket_nacs_k_'+[osm_id]";
        socket_nacs_k_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_nacs_'+[osm_id]+',socket_nacs_k_'+[osm_id]";
        socket_nacs_k_capacity/text-anchor-set: "'socket_nacs_capacity_'+[osm_id]";
        socket_nacs_k_capacity/text-name: "[socket_capacity]";
        socket_nacs_k_capacity/text-size: 8;
        socket_nacs_k_capacity/text-fill: @transportation-text;
        socket_nacs_k_capacity/text-face-name: @standard-font;
        socket_nacs_k_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_nacs_k_capacity/text-halo-fill: @standard-halo-fill;
        socket_nacs_k_capacity/text-dy: 14;
        socket_nacs_k_capacity/text-dx: -17;
        socket_nacs_k_capacity/text-horizontal-alignment: left;
        socket_nacs_k_capacity/text-vertical-alignment: middle;
      }
    }

    [addon = 'socket_type1_combo'][zoom >= 18] {

      socket1_combo/marker-anchor-cond: "[osm_id]";
      socket1_combo/marker-allow-overlap-anchor: "[osm_id]";
      socket1_combo/marker-anchor-set: "'socket1_combo_'+[osm_id]";
      socket1_combo/marker-file: url('symbols/colored/socket_type1_combo.svg');
      [socket_output = 'medium'] { socket1_combo/marker-file: url('symbols/colored/socket_type1_combo_medium.svg'); }
      [socket_output = 'high'] { socket1_combo/marker-file: url('symbols/colored/socket_type1_combo_high.svg'); }
      socket1_combo/marker-transform: 'translate(12,3)';
      socket1_combo/marker-placement: interior;
      socket1_combo/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1_combo_capacity/text-anchor-cond: "[osm_id]+',socket1_combo_'+[osm_id]";
        socket1_combo_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_combo_'+[osm_id]";
        socket1_combo_capacity/text-anchor-set: "'socket1_combo_capacity_'+[osm_id]";
        socket1_combo_capacity/text-name: "[socket_capacity]";
        socket1_combo_capacity/text-size: 8;
        socket1_combo_capacity/text-fill: @transportation-text;
        socket1_combo_capacity/text-face-name: @standard-font;
        socket1_combo_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1_combo_capacity/text-halo-fill: @standard-halo-fill;
        socket1_combo_capacity/text-dy: 2;
        socket1_combo_capacity/text-dx: 17;
        socket1_combo_capacity/text-horizontal-alignment: right;
        socket1_combo_capacity/text-vertical-alignment: middle;
      }

      socket1_combo_combo_b/marker-anchor-cond: "[osm_id]+',!socket1_combo_'+[osm_id]";
      socket1_combo_combo_b/marker-allow-overlap-anchor: "[osm_id]";
      socket1_combo_combo_b/marker-anchor-set: "'socket1_combo_'+[osm_id]+',socket1_combo_combo_b_'+[osm_id]";
      socket1_combo_combo_b/marker-file: url('symbols/colored/socket_type1_combo.svg');
      [socket_output = 'medium'] { socket1_combo_combo_b/marker-file: url('symbols/colored/socket_type1_combo_medium.svg'); }
      [socket_output = 'high'] { socket1_combo_combo_b/marker-file: url('symbols/colored/socket_type1_combo_high.svg'); }
      socket1_combo_combo_b/marker-transform: 'translate(12,6)';
      socket1_combo_combo_b/marker-placement: interior;
      socket1_combo_combo_b/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1_combo_combo_b_capacity/text-anchor-cond: "[osm_id]+',socket1_combo_combo_b_'+[osm_id]";
        socket1_combo_combo_b_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_combo_'+[osm_id]+',socket1_combo_combo_b_'+[osm_id]";
        socket1_combo_combo_b_capacity/text-anchor-set: "'socket1_combo_capacity_'+[osm_id]";
        socket1_combo_combo_b_capacity/text-name: "[socket_capacity]";
        socket1_combo_combo_b_capacity/text-size: 8;
        socket1_combo_combo_b_capacity/text-fill: @transportation-text;
        socket1_combo_combo_b_capacity/text-face-name: @standard-font;
        socket1_combo_combo_b_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1_combo_combo_b_capacity/text-halo-fill: @standard-halo-fill;
        socket1_combo_combo_b_capacity/text-dy: 5;
        socket1_combo_combo_b_capacity/text-dx: 17;
        socket1_combo_combo_b_capacity/text-horizontal-alignment: right;
        socket1_combo_combo_b_capacity/text-vertical-alignment: middle;
      }

      socket1_combo_combo_c/marker-anchor-cond: "[osm_id]+',!socket1_combo_'+[osm_id]";
      socket1_combo_combo_c/marker-allow-overlap-anchor: "[osm_id]";
      socket1_combo_combo_c/marker-anchor-set: "'socket1_combo_'+[osm_id]+',socket1_combo_combo_c_'+[osm_id]";
      socket1_combo_combo_c/marker-file: url('symbols/colored/socket_type1_combo.svg');
      [socket_output = 'medium'] { socket1_combo_combo_c/marker-file: url('symbols/colored/socket_type1_combo_medium.svg'); }
      [socket_output = 'high'] { socket1_combo_combo_c/marker-file: url('symbols/colored/socket_type1_combo_high.svg'); }
      socket1_combo_combo_c/marker-transform: 'translate(12,0)';
      socket1_combo_combo_c/marker-placement: interior;
      socket1_combo_combo_c/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1_combo_combo_c_capacity/text-anchor-cond: "[osm_id]+',socket1_combo_combo_c_'+[osm_id]";
        socket1_combo_combo_c_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_combo_'+[osm_id]+',socket1_combo_combo_c_'+[osm_id]";
        socket1_combo_combo_c_capacity/text-anchor-set: "'socket1_combo_capacity_'+[osm_id]";
        socket1_combo_combo_c_capacity/text-name: "[socket_capacity]";
        socket1_combo_combo_c_capacity/text-size: 8;
        socket1_combo_combo_c_capacity/text-fill: @transportation-text;
        socket1_combo_combo_c_capacity/text-face-name: @standard-font;
        socket1_combo_combo_c_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1_combo_combo_c_capacity/text-halo-fill: @standard-halo-fill;
        socket1_combo_combo_c_capacity/text-dy: -1;
        socket1_combo_combo_c_capacity/text-dx: 17;
        socket1_combo_combo_c_capacity/text-horizontal-alignment: right;
        socket1_combo_combo_c_capacity/text-vertical-alignment: middle;
      }

      socket1_combo_combo_d/marker-anchor-cond: "[osm_id]+',!socket1_combo_'+[osm_id]";
      socket1_combo_combo_d/marker-allow-overlap-anchor: "[osm_id]";
      socket1_combo_combo_d/marker-anchor-set: "'socket1_combo_'+[osm_id]+',socket1_combo_combo_d_'+[osm_id]";
      socket1_combo_combo_d/marker-file: url('symbols/colored/socket_type1_combo.svg');
      [socket_output = 'medium'] { socket1_combo_combo_d/marker-file: url('symbols/colored/socket_type1_combo_medium.svg'); }
      [socket_output = 'high'] { socket1_combo_combo_d/marker-file: url('symbols/colored/socket_type1_combo_high.svg'); }
      socket1_combo_combo_d/marker-transform: 'translate(12,17)';
      socket1_combo_combo_d/marker-placement: interior;
      socket1_combo_combo_d/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1_combo_combo_d_capacity/text-anchor-cond: "[osm_id]+',socket1_combo_combo_d_'+[osm_id]";
        socket1_combo_combo_d_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_combo_'+[osm_id]+',socket1_combo_combo_d_'+[osm_id]";
        socket1_combo_combo_d_capacity/text-anchor-set: "'socket1_combo_capacity_'+[osm_id]";
        socket1_combo_combo_d_capacity/text-name: "[socket_capacity]";
        socket1_combo_combo_d_capacity/text-size: 8;
        socket1_combo_combo_d_capacity/text-fill: @transportation-text;
        socket1_combo_combo_d_capacity/text-face-name: @standard-font;
        socket1_combo_combo_d_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1_combo_combo_d_capacity/text-halo-fill: @standard-halo-fill;
        socket1_combo_combo_d_capacity/text-dy: 14;
        socket1_combo_combo_d_capacity/text-dx: 19;
        socket1_combo_combo_d_capacity/text-horizontal-alignment: right;
        socket1_combo_combo_d_capacity/text-vertical-alignment: middle;
      }

      socket1_combo_combo_e/marker-anchor-cond: "[osm_id]+',!socket1_combo_'+[osm_id]";
      socket1_combo_combo_e/marker-allow-overlap-anchor: "[osm_id]";
      socket1_combo_combo_e/marker-anchor-set: "'socket1_combo_'+[osm_id]+',socket1_combo_combo_e_'+[osm_id]";
      socket1_combo_combo_e/marker-file: url('symbols/colored/socket_type1_combo.svg');
      [socket_output = 'medium'] { socket1_combo_combo_e/marker-file: url('symbols/colored/socket_type1_combo_medium.svg'); }
      [socket_output = 'high'] { socket1_combo_combo_e/marker-file: url('symbols/colored/socket_type1_combo_high.svg'); }
      socket1_combo_combo_e/marker-transform: 'translate(12,-11)';
      socket1_combo_combo_e/marker-placement: interior;
      socket1_combo_combo_e/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1_combo_combo_e_capacity/text-anchor-cond: "[osm_id]+',socket1_combo_combo_e_'+[osm_id]";
        socket1_combo_combo_e_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_combo_'+[osm_id]+',socket1_combo_combo_e_'+[osm_id]";
        socket1_combo_combo_e_capacity/text-anchor-set: "'socket1_combo_capacity_'+[osm_id]";
        socket1_combo_combo_e_capacity/text-name: "[socket_capacity]";
        socket1_combo_combo_e_capacity/text-size: 8;
        socket1_combo_combo_e_capacity/text-fill: @transportation-text;
        socket1_combo_combo_e_capacity/text-face-name: @standard-font;
        socket1_combo_combo_e_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1_combo_combo_e_capacity/text-halo-fill: @standard-halo-fill;
        socket1_combo_combo_e_capacity/text-dy: -12;
        socket1_combo_combo_e_capacity/text-dx: 17;
        socket1_combo_combo_e_capacity/text-horizontal-alignment: right;
        socket1_combo_combo_e_capacity/text-vertical-alignment: middle;
      }

      socket1_combo_combo_f/marker-anchor-cond: "[osm_id]+',!socket1_combo_'+[osm_id]";
      socket1_combo_combo_f/marker-allow-overlap-anchor: "[osm_id]";
      socket1_combo_combo_f/marker-anchor-set: "'socket1_combo_'+[osm_id]+',socket1_combo_combo_f_'+[osm_id]";
      socket1_combo_combo_f/marker-file: url('symbols/colored/socket_type1_combo.svg');
      [socket_output = 'medium'] { socket1_combo_combo_f/marker-file: url('symbols/colored/socket_type1_combo_medium.svg'); }
      [socket_output = 'high'] { socket1_combo_combo_f/marker-file: url('symbols/colored/socket_type1_combo_high.svg'); }
      socket1_combo_combo_f/marker-transform: 'translate(12,20)';
      socket1_combo_combo_f/marker-placement: interior;
      socket1_combo_combo_f/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1_combo_combo_f_capacity/text-anchor-cond: "[osm_id]+',socket1_combo_combo_f_'+[osm_id]";
        socket1_combo_combo_f_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_combo_'+[osm_id]+',socket1_combo_combo_f_'+[osm_id]";
        socket1_combo_combo_f_capacity/text-anchor-set: "'socket1_combo_capacity_'+[osm_id]";
        socket1_combo_combo_f_capacity/text-name: "[socket_capacity]";
        socket1_combo_combo_f_capacity/text-size: 8;
        socket1_combo_combo_f_capacity/text-fill: @transportation-text;
        socket1_combo_combo_f_capacity/text-face-name: @standard-font;
        socket1_combo_combo_f_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1_combo_combo_f_capacity/text-halo-fill: @standard-halo-fill;
        socket1_combo_combo_f_capacity/text-dy: 19;
        socket1_combo_combo_f_capacity/text-dx: 17;
        socket1_combo_combo_f_capacity/text-horizontal-alignment: right;
        socket1_combo_combo_f_capacity/text-vertical-alignment: middle;
      }

      socket1_combo_combo_g/marker-anchor-cond: "[osm_id]+',!socket1_combo_'+[osm_id]";
      socket1_combo_combo_g/marker-allow-overlap-anchor: "[osm_id]";
      socket1_combo_combo_g/marker-anchor-set: "'socket1_combo_'+[osm_id]+',socket1_combo_combo_g_'+[osm_id]";
      socket1_combo_combo_g/marker-file: url('symbols/colored/socket_type1_combo.svg');
      [socket_output = 'medium'] { socket1_combo_combo_g/marker-file: url('symbols/colored/socket_type1_combo_medium.svg'); }
      [socket_output = 'high'] { socket1_combo_combo_g/marker-file: url('symbols/colored/socket_type1_combo_high.svg'); }
      socket1_combo_combo_g/marker-transform: 'translate(12,-14)';
      socket1_combo_combo_g/marker-placement: interior;
      socket1_combo_combo_g/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1_combo_combo_g_capacity/text-anchor-cond: "[osm_id]+',socket1_combo_combo_g_'+[osm_id]";
        socket1_combo_combo_g_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_combo_'+[osm_id]+',socket1_combo_combo_g_'+[osm_id]";
        socket1_combo_combo_g_capacity/text-anchor-set: "'socket1_combo_capacity_'+[osm_id]";
        socket1_combo_combo_g_capacity/text-name: "[socket_capacity]";
        socket1_combo_combo_g_capacity/text-size: 8;
        socket1_combo_combo_g_capacity/text-fill: @transportation-text;
        socket1_combo_combo_g_capacity/text-face-name: @standard-font;
        socket1_combo_combo_g_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1_combo_combo_g_capacity/text-halo-fill: @standard-halo-fill;
        socket1_combo_combo_g_capacity/text-dy: -15;
        socket1_combo_combo_g_capacity/text-dx: 17;
        socket1_combo_combo_g_capacity/text-horizontal-alignment: right;
        socket1_combo_combo_g_capacity/text-vertical-alignment: middle;
      }

    }

    [addon = 'socket_type1'][zoom >= 18] {

      socket1a/marker-anchor-cond: "[osm_id]";
      socket1a/marker-allow-overlap-anchor: "[osm_id]";
      socket1a/marker-anchor-set: "'socket1_'+[osm_id]+',socket1a_'+[osm_id]";
      socket1a/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1a/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1a/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1a/marker-transform: 'translate(12,3)';
      socket1a/marker-placement: interior;
      socket1a/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1a_capacity/text-anchor-cond: "[osm_id]+',socket1a_'+[osm_id]";
        socket1a_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1a_'+[osm_id]";
        socket1a_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1a_capacity/text-name: "[socket_capacity]";
        socket1a_capacity/text-size: 8;
        socket1a_capacity/text-fill: @transportation-text;
        socket1a_capacity/text-face-name: @standard-font;
        socket1a_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1a_capacity/text-halo-fill: @standard-halo-fill;
        socket1a_capacity/text-dy: 2;
        socket1a_capacity/text-dx: 17;
        socket1a_capacity/text-horizontal-alignment: right;
        socket1a_capacity/text-vertical-alignment: middle;
      }

      socket1b/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1b/marker-allow-overlap-anchor: "[osm_id]";
      socket1b/marker-anchor-set: "'socket1_'+[osm_id]+',socket1b_'+[osm_id]";
      socket1b/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1b/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1b/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1b/marker-transform: 'translate(12,6)';
      socket1b/marker-placement: interior;
      socket1b/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1b_capacity/text-anchor-cond: "[osm_id]+',socket1b_'+[osm_id]";
        socket1b_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1b_'+[osm_id]";
        socket1b_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1b_capacity/text-name: "[socket_capacity]";
        socket1b_capacity/text-size: 8;
        socket1b_capacity/text-fill: @transportation-text;
        socket1b_capacity/text-face-name: @standard-font;
        socket1b_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1b_capacity/text-halo-fill: @standard-halo-fill;
        socket1b_capacity/text-dy: 5;
        socket1b_capacity/text-dx: 17;
        socket1b_capacity/text-horizontal-alignment: right;
        socket1b_capacity/text-vertical-alignment: middle;
      }

      socket1c/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1c/marker-allow-overlap-anchor: "[osm_id]";
      socket1c/marker-anchor-set: "'socket1_'+[osm_id]+',socket1c_'+[osm_id]";
      socket1c/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1c/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1c/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1c/marker-transform: 'translate(12,0)';
      socket1c/marker-placement: interior;
      socket1c/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1c_capacity/text-anchor-cond: "[osm_id]+',socket1c_'+[osm_id]";
        socket1c_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1c_'+[osm_id]";
        socket1c_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1c_capacity/text-name: "[socket_capacity]";
        socket1c_capacity/text-size: 8;
        socket1c_capacity/text-fill: @transportation-text;
        socket1c_capacity/text-face-name: @standard-font;
        socket1c_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1c_capacity/text-halo-fill: @standard-halo-fill;
        socket1c_capacity/text-dy: -1;
        socket1c_capacity/text-dx: 17;
        socket1c_capacity/text-horizontal-alignment: right;
        socket1c_capacity/text-vertical-alignment: middle;
      }

      socket1d/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1d/marker-allow-overlap-anchor: "[osm_id]";
      socket1d/marker-anchor-set: "'socket1_'+[osm_id]+',socket1d_'+[osm_id]";
      socket1d/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1d/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1d/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1d/marker-transform: 'translate(12,15)';
      socket1d/marker-placement: interior;
      socket1d/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1d_capacity/text-anchor-cond: "[osm_id]+',socket1d_'+[osm_id]";
        socket1d_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1d_'+[osm_id]";
        socket1d_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1d_capacity/text-name: "[socket_capacity]";
        socket1d_capacity/text-size: 8;
        socket1d_capacity/text-fill: @transportation-text;
        socket1d_capacity/text-face-name: @standard-font;
        socket1d_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1d_capacity/text-halo-fill: @standard-halo-fill;
        socket1d_capacity/text-dy: 14;
        socket1d_capacity/text-dx: 17;
        socket1d_capacity/text-horizontal-alignment: right;
        socket1d_capacity/text-vertical-alignment: middle;
      }

      socket1e/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1e/marker-allow-overlap-anchor: "[osm_id]";
      socket1e/marker-anchor-set: "'socket1_'+[osm_id]+',socket1e_'+[osm_id]";
      socket1e/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1e/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1e/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1e/marker-transform: 'translate(12,-9)';
      socket1e/marker-placement: interior;
      socket1e/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1e_capacity/text-anchor-cond: "[osm_id]+',socket1e_'+[osm_id]";
        socket1e_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1e_'+[osm_id]";
        socket1e_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1e_capacity/text-name: "[socket_capacity]";
        socket1e_capacity/text-size: 8;
        socket1e_capacity/text-fill: @transportation-text;
        socket1e_capacity/text-face-name: @standard-font;
        socket1e_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1e_capacity/text-halo-fill: @standard-halo-fill;
        socket1e_capacity/text-dy: -10;
        socket1e_capacity/text-dx: 17;
        socket1e_capacity/text-horizontal-alignment: right;
        socket1e_capacity/text-vertical-alignment: middle;
      }

      socket1f/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1f/marker-allow-overlap-anchor: "[osm_id]";
      socket1f/marker-anchor-set: "'socket1_'+[osm_id]+',socket1f_'+[osm_id]";
      socket1f/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1f/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1f/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1f/marker-transform: 'translate(12,17)';
      socket1f/marker-placement: interior;
      socket1f/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1f_capacity/text-anchor-cond: "[osm_id]+',socket1f_'+[osm_id]";
        socket1f_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1f_'+[osm_id]";
        socket1f_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1f_capacity/text-name: "[socket_capacity]";
        socket1f_capacity/text-size: 8;
        socket1f_capacity/text-fill: @transportation-text;
        socket1f_capacity/text-face-name: @standard-font;
        socket1f_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1f_capacity/text-halo-fill: @standard-halo-fill;
        socket1f_capacity/text-dy: 16;
        socket1f_capacity/text-dx: 17;
        socket1f_capacity/text-horizontal-alignment: right;
        socket1f_capacity/text-vertical-alignment: middle;
      }

      socket1g/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1g/marker-allow-overlap-anchor: "[osm_id]";
      socket1g/marker-anchor-set: "'socket1_'+[osm_id]+',socket1g_'+[osm_id]";
      socket1g/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1g/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1g/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1g/marker-transform: 'translate(12,-11)';
      socket1g/marker-placement: interior;
      socket1g/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1g_capacity/text-anchor-cond: "[osm_id]+',socket1g_'+[osm_id]";
        socket1g_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1g_'+[osm_id]";
        socket1g_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1g_capacity/text-name: "[socket_capacity]";
        socket1g_capacity/text-size: 8;
        socket1g_capacity/text-fill: @transportation-text;
        socket1g_capacity/text-face-name: @standard-font;
        socket1g_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1g_capacity/text-halo-fill: @standard-halo-fill;
        socket1g_capacity/text-dy: -12;
        socket1g_capacity/text-dx: 17;
        socket1g_capacity/text-horizontal-alignment: right;
        socket1g_capacity/text-vertical-alignment: middle;
      }

      socket1h/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1h/marker-allow-overlap-anchor: "[osm_id]+',capacity_'+[osm_id]+',car_'+[osm_id]";
      socket1h/marker-anchor-set: "'socket1_'+[osm_id]+',socket1h_'+[osm_id]";
      socket1h/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1h/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1h/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1h/marker-transform: 'translate(-5,-12)';
      socket1h/marker-placement: interior;
      socket1h/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1h_capacity/text-anchor-cond: "[osm_id]+',socket1h_'+[osm_id]";
        socket1h_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1h_'+[osm_id]";
        socket1h_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1h_capacity/text-name: "[socket_capacity]";
        socket1h_capacity/text-size: 8;
        socket1h_capacity/text-fill: @transportation-text;
        socket1h_capacity/text-face-name: @standard-font;
        socket1h_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1h_capacity/text-halo-fill: @standard-halo-fill;
        socket1h_capacity/text-dy: -13;
        socket1h_capacity/text-dx: -11;
        socket1h_capacity/text-horizontal-alignment: left;
        socket1h_capacity/text-vertical-alignment: middle;
      }

      socket1j/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1j/marker-allow-overlap-anchor: "[osm_id]+',capacity_'+[osm_id]+',cover_'+[osm_id]";
      socket1j/marker-anchor-set: "'socket1_'+[osm_id]+',socket1j_'+[osm_id]";
      socket1j/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1j/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1j/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1j/marker-transform: 'translate(-11,-11)';
      socket1j/marker-placement: interior;
      socket1j/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1j_capacity/text-anchor-cond: "[osm_id]+',socket1j_'+[osm_id]";
        socket1j_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1j_'+[osm_id]";
        socket1j_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1j_capacity/text-name: "[socket_capacity]";
        socket1j_capacity/text-size: 8;
        socket1j_capacity/text-fill: @transportation-text;
        socket1j_capacity/text-face-name: @standard-font;
        socket1j_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1j_capacity/text-halo-fill: @standard-halo-fill;
        socket1j_capacity/text-dy: -12;
        socket1j_capacity/text-dx: -17;
        socket1j_capacity/text-horizontal-alignment: left;
        socket1j_capacity/text-vertical-alignment: middle;
      }

      socket1i/marker-anchor-cond: "[osm_id]+',!socket1_'+[osm_id]";
      socket1i/marker-allow-overlap-anchor: "[osm_id]+',bicycle_'+[osm_id]+',car_'+[osm_id]";
      socket1i/marker-anchor-set: "'socket1_'+[osm_id]+',socket1i_'+[osm_id]";
      socket1i/marker-file: url('symbols/colored/socket_type1.svg');
      [socket_output = 'medium'] { socket1i/marker-file: url('symbols/colored/socket_type1_medium.svg'); }
      [socket_output = 'high'] { socket1i/marker-file: url('symbols/colored/socket_type1_high.svg'); }
      socket1i/marker-transform: 'translate(-9,15)';
      socket1i/marker-placement: interior;
      socket1i/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket1i_capacity/text-anchor-cond: "[osm_id]+',socket1i_'+[osm_id]";
        socket1i_capacity/text-allow-overlap-anchor: "[osm_id]+',socket1_'+[osm_id]+',socket1i_'+[osm_id]";
        socket1i_capacity/text-anchor-set: "'socket1_capacity_'+[osm_id]";
        socket1i_capacity/text-name: "[socket_capacity]";
        socket1i_capacity/text-size: 8;
        socket1i_capacity/text-fill: @transportation-text;
        socket1i_capacity/text-face-name: @standard-font;
        socket1i_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket1i_capacity/text-halo-fill: @standard-halo-fill;
        socket1i_capacity/text-dy: 15;
        socket1i_capacity/text-dx: -15;
        socket1i_capacity/text-horizontal-alignment: left;
        socket1i_capacity/text-vertical-alignment: middle;
      }
    }

    [addon = 'socket_chademo'][zoom >= 18] {
      socket_chademo_a/marker-anchor-cond: "[osm_id]";
      socket_chademo_a/marker-allow-overlap-anchor: "[osm_id]";
      socket_chademo_a/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_a_'+[osm_id]";
      socket_chademo_a/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_a/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_a/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_a/marker-transform: 'translate(12,3)';
      socket_chademo_a/marker-placement: interior;
      socket_chademo_a/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_a_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_a_'+[osm_id]";
        socket_chademo_a_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_a_'+[osm_id]";
        socket_chademo_a_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_a_capacity/text-name: "[socket_capacity]";
        socket_chademo_a_capacity/text-size: 8;
        socket_chademo_a_capacity/text-fill: @transportation-text;
        socket_chademo_a_capacity/text-face-name: @standard-font;
        socket_chademo_a_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_a_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_a_capacity/text-dy: 2;
        socket_chademo_a_capacity/text-dx: 17;
        socket_chademo_a_capacity/text-horizontal-alignment: right;
        socket_chademo_a_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_b/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_b/marker-allow-overlap-anchor: "[osm_id]";
      socket_chademo_b/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_b_'+[osm_id]";
      socket_chademo_b/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_b/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_b/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_b/marker-transform: 'translate(12,6)';
      socket_chademo_b/marker-placement: interior;
      socket_chademo_b/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_b_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_b_'+[osm_id]";
        socket_chademo_b_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_b_'+[osm_id]";
        socket_chademo_b_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_b_capacity/text-name: "[socket_capacity]";
        socket_chademo_b_capacity/text-size: 8;
        socket_chademo_b_capacity/text-fill: @transportation-text;
        socket_chademo_b_capacity/text-face-name: @standard-font;
        socket_chademo_b_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_b_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_b_capacity/text-dy: 5;
        socket_chademo_b_capacity/text-dx: 17;
        socket_chademo_b_capacity/text-horizontal-alignment: right;
        socket_chademo_b_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_c/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_c/marker-allow-overlap-anchor: "[osm_id]";
      socket_chademo_c/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_c_'+[osm_id]";
      socket_chademo_c/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_c/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_c/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_c/marker-transform: 'translate(12,0)';
      socket_chademo_c/marker-placement: interior;
      socket_chademo_c/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_c_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_c_'+[osm_id]";
        socket_chademo_c_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_c_'+[osm_id]";
        socket_chademo_c_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_c_capacity/text-name: "[socket_capacity]";
        socket_chademo_c_capacity/text-size: 8;
        socket_chademo_c_capacity/text-fill: @transportation-text;
        socket_chademo_c_capacity/text-face-name: @standard-font;
        socket_chademo_c_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_c_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_c_capacity/text-dy: -1;
        socket_chademo_c_capacity/text-dx: 17;
        socket_chademo_c_capacity/text-horizontal-alignment: right;
        socket_chademo_c_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_d/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_d/marker-allow-overlap-anchor: "[osm_id]";
      socket_chademo_d/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_d_'+[osm_id]";
      socket_chademo_d/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_d/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_d/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_d/marker-transform: 'translate(12,15)';
      socket_chademo_d/marker-placement: interior;
      socket_chademo_d/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_d_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_d_'+[osm_id]";
        socket_chademo_d_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_d_'+[osm_id]";
        socket_chademo_d_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_d_capacity/text-name: "[socket_capacity]";
        socket_chademo_d_capacity/text-size: 8;
        socket_chademo_d_capacity/text-fill: @transportation-text;
        socket_chademo_d_capacity/text-face-name: @standard-font;
        socket_chademo_d_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_d_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_d_capacity/text-dy: 14;
        socket_chademo_d_capacity/text-dx: 17;
        socket_chademo_d_capacity/text-horizontal-alignment: right;
        socket_chademo_d_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_e/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_e/marker-allow-overlap-anchor: "[osm_id]";
      socket_chademo_e/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_e_'+[osm_id]";
      socket_chademo_e/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_e/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_e/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_e/marker-transform: 'translate(12,-9)';
      socket_chademo_e/marker-placement: interior;
      socket_chademo_e/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_e_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_e_'+[osm_id]";
        socket_chademo_e_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_e_'+[osm_id]";
        socket_chademo_e_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_e_capacity/text-name: "[socket_capacity]";
        socket_chademo_e_capacity/text-size: 8;
        socket_chademo_e_capacity/text-fill: @transportation-text;
        socket_chademo_e_capacity/text-face-name: @standard-font;
        socket_chademo_e_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_e_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_e_capacity/text-dy: -10;
        socket_chademo_e_capacity/text-dx: 17;
        socket_chademo_e_capacity/text-horizontal-alignment: right;
        socket_chademo_e_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_f/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_f/marker-allow-overlap-anchor: "[osm_id]";
      socket_chademo_f/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_f_'+[osm_id]";
      socket_chademo_f/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_f/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_f/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_f/marker-transform: 'translate(12,17)';
      socket_chademo_f/marker-placement: interior;
      socket_chademo_f/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_f_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_f_'+[osm_id]";
        socket_chademo_f_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_f_'+[osm_id]";
        socket_chademo_f_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_f_capacity/text-name: "[socket_capacity]";
        socket_chademo_f_capacity/text-size: 8;
        socket_chademo_f_capacity/text-fill: @transportation-text;
        socket_chademo_f_capacity/text-face-name: @standard-font;
        socket_chademo_f_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_f_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_f_capacity/text-dy: 16;
        socket_chademo_f_capacity/text-dx: 17;
        socket_chademo_f_capacity/text-horizontal-alignment: right;
        socket_chademo_f_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_g/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_g/marker-allow-overlap-anchor: "[osm_id]";
      socket_chademo_g/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_g_'+[osm_id]";
      socket_chademo_g/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_g/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_g/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_g/marker-transform: 'translate(12,-11)';
      socket_chademo_g/marker-placement: interior;
      socket_chademo_g/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_g_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_g_'+[osm_id]";
        socket_chademo_g_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_g_'+[osm_id]";
        socket_chademo_g_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_g_capacity/text-name: "[socket_capacity]";
        socket_chademo_g_capacity/text-size: 8;
        socket_chademo_g_capacity/text-fill: @transportation-text;
        socket_chademo_g_capacity/text-face-name: @standard-font;
        socket_chademo_g_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_g_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_g_capacity/text-dy: -12;
        socket_chademo_g_capacity/text-dx: 17;
        socket_chademo_g_capacity/text-horizontal-alignment: right;
        socket_chademo_g_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_h/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_h/marker-allow-overlap-anchor: "[osm_id]+',capacity_'+[osm_id]+',car_'+[osm_id]";
      socket_chademo_h/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_h_'+[osm_id]";
      socket_chademo_h/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_h/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_h/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_h/marker-transform: 'translate(-5,-12)';
      socket_chademo_h/marker-placement: interior;
      socket_chademo_h/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_h_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_h_'+[osm_id]";
        socket_chademo_h_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_h_'+[osm_id]";
        socket_chademo_h_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_h_capacity/text-name: "[socket_capacity]";
        socket_chademo_h_capacity/text-size: 8;
        socket_chademo_h_capacity/text-fill: @transportation-text;
        socket_chademo_h_capacity/text-face-name: @standard-font;
        socket_chademo_h_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_h_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_h_capacity/text-dy: -13;
        socket_chademo_h_capacity/text-dx: -11;
        socket_chademo_h_capacity/text-horizontal-alignment: left;
        socket_chademo_h_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_j/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_j/marker-allow-overlap-anchor: "[osm_id]+',capacity_'+[osm_id]+',cover_'+[osm_id]";
      socket_chademo_j/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_j_'+[osm_id]";
      socket_chademo_j/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_j/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_j/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_j/marker-transform: 'translate(-11,-11)';
      socket_chademo_j/marker-placement: interior;
      socket_chademo_j/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_j_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_j_'+[osm_id]";
        socket_chademo_j_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_j_'+[osm_id]";
        socket_chademo_j_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_j_capacity/text-name: "[socket_capacity]";
        socket_chademo_j_capacity/text-size: 8;
        socket_chademo_j_capacity/text-fill: @transportation-text;
        socket_chademo_j_capacity/text-face-name: @standard-font;
        socket_chademo_j_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_j_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_j_capacity/text-dy: -12;
        socket_chademo_j_capacity/text-dx: -17;
        socket_chademo_j_capacity/text-horizontal-alignment: left;
        socket_chademo_j_capacity/text-vertical-alignment: middle;
      }

      socket_chademo_i/marker-anchor-cond: "[osm_id]+',!socket_chademo_'+[osm_id]";
      socket_chademo_i/marker-allow-overlap-anchor: "[osm_id]+',bicycle_'+[osm_id]+',car_'+[osm_id]";
      socket_chademo_i/marker-anchor-set: "'socket_chademo_'+[osm_id]+',socket_chademo_i_'+[osm_id]";
      socket_chademo_i/marker-file: url('symbols/colored/socket_chademo.svg');
      [socket_output = 'medium'] { socket_chademo_i/marker-file: url('symbols/colored/socket_chademo_medium.svg'); }
      [socket_output = 'high'] { socket_chademo_i/marker-file: url('symbols/colored/socket_chademo_high.svg'); }
      socket_chademo_i/marker-transform: 'translate(-9,14)';
      socket_chademo_i/marker-placement: interior;
      socket_chademo_i/marker-clip: false;

      [socket_capacity != 'no'][zoom >= 19] {
        socket_chademo_i_capacity/text-anchor-cond: "[osm_id]+',socket_chademo_i_'+[osm_id]";
        socket_chademo_i_capacity/text-allow-overlap-anchor: "[osm_id]+',socket_chademo_'+[osm_id]+',socket_chademo_i_'+[osm_id]";
        socket_chademo_i_capacity/text-anchor-set: "'socket_chademo_capacity_'+[osm_id]";
        socket_chademo_i_capacity/text-name: "[socket_capacity]";
        socket_chademo_i_capacity/text-size: 8;
        socket_chademo_i_capacity/text-fill: @transportation-text;
        socket_chademo_i_capacity/text-face-name: @standard-font;
        socket_chademo_i_capacity/text-halo-radius: 0.75*@standard-halo-radius;
        socket_chademo_i_capacity/text-halo-fill: @standard-halo-fill;
        socket_chademo_i_capacity/text-dy: 14;
        socket_chademo_i_capacity/text-dx: -15;
        socket_chademo_i_capacity/text-horizontal-alignment: left;
        socket_chademo_i_capacity/text-vertical-alignment: middle;
      }
    }

    [addon = 'parking'][zoom >= 18] {
      parking/marker-anchor-cond: "[osm_id]";
      parking/marker-allow-overlap-anchor: "[osm_id]";
      parking/marker-anchor-set: "'parking_'+[osm_id]";
      parking/marker-file: url('symbols/transport/parking.svg');
      parking/marker-fill: @transportation-icon;
      parking/marker-transform: 'translate(10,-3)';
      parking/marker-placement: interior;
      parking/marker-clip: false;

      parking2/marker-anchor-cond: "[osm_id]+',!parking_'+[osm_id]";
      parking2/marker-allow-overlap-anchor: "[osm_id]";
      parking2/marker-anchor-set: "'parking_'+[osm_id]";
      parking2/marker-file: url('symbols/transport/parking.svg');
      parking2/marker-fill: @transportation-icon;
      parking2/marker-transform: 'translate(0,11)';
      parking2/marker-placement: interior;
      parking2/marker-clip: false;

      parking3/marker-anchor-cond: "[osm_id]+',!parking_'+[osm_id]";
      parking3/marker-allow-overlap-anchor: "[osm_id]";
      parking3/marker-anchor-set: "'parking_'+[osm_id]";
      parking3/marker-file: url('symbols/transport/parking.svg');
      parking3/marker-fill: @transportation-icon;
      parking3/marker-transform: 'translate(4,-9)';
      parking3/marker-placement: interior;
      parking3/marker-clip: false;

      parking4/marker-anchor-cond: "[osm_id]+',!parking_'+[osm_id]";
      parking4/marker-allow-overlap-anchor: "[osm_id]+',car_'+[osm_id]+',bicycle_'+[osm_id]+',motorcycle_'+[osm_id]";
      parking4/marker-anchor-set: "'parking_'+[osm_id]";
      parking4/marker-file: url('symbols/transport/parking.svg');
      parking4/marker-fill: @transportation-icon;
      parking4/marker-transform: 'translate(-8,12)';
      parking4/marker-placement: interior;
      parking4/marker-clip: false;
    }
  }

}

#addon-symbols-parking[zoom >= 17] {
  [feature = 'parking'] {
    [addon = 'private'][zoom >= 18] {
      private/marker-anchor-cond: "[osm_id]";
      private/marker-allow-overlap-anchor: "[osm_id]";
      private/marker-anchor-set: "'private_'+[osm_id]";
      private/marker-file: url('symbols/transport/private.svg');
      private/marker-fill: @transportation-icon;
      private/marker-opacity: @private-opacity;
      private/marker-transform: 'translate(7,4)';
      private/marker-placement: interior;
      private/marker-clip: false;
    }
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
        shopping3/marker-placement: interior;
        shopping3/marker-clip: false;
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
      [addon = 'private'] {
        private/marker-anchor-cond: "[osm_id]";
        private/marker-allow-overlap-anchor: "[osm_id]";
        private/marker-anchor-set: "'private_'+[osm_id]";
        private/marker-file: url('symbols/transport/private.svg');
        private/marker-fill: @transportation-icon;
        private/marker-opacity: @private-opacity;
        private/marker-transform: 'translate(5,-4)';
        private/marker-placement: interior;
        private/marker-clip: false;
      }
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
  [drinking_water = 'yes'] {
    dwdir1/marker-anchor-cond: '[osm_id]';
    dwdir1/marker-allow-overlap-anchor: '[osm_id]';
    dwdir1/marker-anchor-set: "'dw_'+[osm_id]";
    dwdir1/marker-file: url('symbols/water/drinking.svg');
    dwdir1/marker-fill: @water-icon;
    dwdir1/marker-transform: 'translate([dwxdist],[dwydist])';
    dwdir1/marker-placement: interior;
    dwdir1/marker-clip: false;

    dwdir2/marker-anchor-cond: "[osm_id]+',!dw_'+[osm_id]";
    dwdir2/marker-allow-overlap-anchor: '[osm_id]';
    dwdir2/marker-anchor-set: "'dw_'+[osm_id]";
    dwdir2/marker-file: url('symbols/water/drinking.svg');
    dwdir2/marker-fill: @water-icon;
    dwdir2/marker-transform: 'translate(-1*[dwxdist],[dwydist])';
    dwdir2/marker-placement: interior;
    dwdir2/marker-clip: false;

    dwdir3/marker-anchor-cond: "[osm_id]+',!dw_'+[osm_id]";
    dwdir3/marker-allow-overlap-anchor: '[osm_id]';
    dwdir3/marker-anchor-set: "'dw_'+[osm_id]";
    dwdir3/marker-file: url('symbols/water/drinking.svg');
    dwdir3/marker-fill: @water-icon;
    dwdir3/marker-transform: 'translate([dwxdist2],[dwydist2])';
    dwdir3/marker-placement: interior;
    dwdir3/marker-clip: false;

    dwdir4/marker-anchor-cond: "[osm_id]+',!dw_'+[osm_id]";
    dwdir4/marker-allow-overlap-anchor: '[osm_id]';
    dwdir4/marker-anchor-set: "'dw_'+[osm_id]";
    dwdir4/marker-file: url('symbols/water/drinking.svg');
    dwdir4/marker-fill: @water-icon;
    dwdir4/marker-transform: 'translate(-1*[dwxdist2],[dwydist2])';
    dwdir4/marker-placement: interior;
    dwdir4/marker-clip: false;
  }
  [watering_place = 'yes'] {
    wpdir1/marker-anchor-cond: '[osm_id]';
    wpdir1/marker-allow-overlap-anchor: '[osm_id]';
    wpdir1/marker-anchor-set: "'wp_'+[osm_id]";
    wpdir1/marker-file: url('symbols/landcover/animal.svg');
    wpdir1/marker-fill: @water-icon;
    wpdir1/marker-transform: 'translate([wpxdist],[wpydist])';
    [wpxdist < 0.0][wpydist2 < 2.0],
    [wpxdist >= 0.0][wpydist2 >= 2.0] {
      wpdir1/marker-transform: 'scale(-1.0,1.0) translate(-1*[wpxdist],[wpydist])';
    }
    wpdir1/marker-placement: interior;
    wpdir1/marker-clip: false;

    wpdir2/marker-anchor-cond: "[osm_id]+',!wp_'+[osm_id]";
    wpdir2/marker-allow-overlap-anchor: '[osm_id]';
    wpdir2/marker-anchor-set: "'wp_'+[osm_id]";
    wpdir2/marker-file: url('symbols/landcover/animal.svg');
    wpdir2/marker-fill: @water-icon;
    wpdir2/marker-transform: 'translate(-1*[wpxdist],[wpydist])';
    [wpxdist < 0.0][wpydist2 >= 0.0],
    [wpxdist >= 0.0][wpydist2 < 0.0] {
      wpdir2/marker-transform: 'scale(-1.0,1.0) translate([wpxdist],[wpydist])';
    }
    wpdir2/marker-placement: interior;
    wpdir2/marker-clip: false;

    wpdir3/marker-anchor-cond: "[osm_id]+',!wp_'+[osm_id]";
    wpdir3/marker-allow-overlap-anchor: '[osm_id]';
    wpdir3/marker-anchor-set: "'wp_'+[osm_id]";
    wpdir3/marker-file: url('symbols/landcover/animal.svg');
    wpdir3/marker-fill: @water-icon;
    wpdir3/marker-transform: 'translate([wpxdist2],[wpydist2])';
    [wpxdist < 0.0][wpydist2 >= 0.0],
    [wpxdist2 >= 0.0][wpydist2 < 0.0] {
      wpdir3/marker-transform: 'scale(-1.0,1.0) translate(-1*[wpxdist2],[wpydist2])';
    }
    wpdir3/marker-placement: interior;
    wpdir3/marker-clip: false;

    wpdir4/marker-anchor-cond: "[osm_id]+',!wp_'+[osm_id]";
    wpdir4/marker-allow-overlap-anchor: '[osm_id]';
    wpdir4/marker-anchor-set: "'wp_'+[osm_id]";
    wpdir4/marker-file: url('symbols/landcover/animal.svg');
    wpdir4/marker-fill: @water-icon;
    wpdir4/marker-transform: 'translate(-1*[wpxdist2],[wpydist2])';
    [wpxdist2 < 0.0][wpydist2 < 0.0],
    [wpxdist2 >= 0.0][wpydist2 >= 0.0] {
      wpdir4/marker-transform: 'scale(-1.0,1.0) translate([wpxdist2],[wpydist2])';
    }
    wpdir4/marker-placement: interior;
    wpdir4/marker-clip: false;

    wpdir5/marker-anchor-cond: "[osm_id]+',!wp_'+[osm_id]";
    wpdir5/marker-allow-overlap-anchor: '[osm_id]';
    wpdir5/marker-anchor-set: "'wp_'+[osm_id]";
    wpdir5/marker-file: url('symbols/landcover/animal.svg');
    wpdir5/marker-fill: @water-icon;
    wpdir5/marker-transform: 'translate(0.0,9)';
    wpdir5/marker-placement: interior;
    wpdir5/marker-clip: false;

    wpdir6/marker-anchor-cond: "[osm_id]+',!wp_'+[osm_id]";
    wpdir6/marker-allow-overlap-anchor: '[osm_id]';
    wpdir6/marker-anchor-set: "'wp_'+[osm_id]";
    wpdir6/marker-file: url('symbols/landcover/animal.svg');
    wpdir6/marker-fill: @water-icon;
    wpdir6/marker-transform: 'translate(0.0,-10)';
    wpdir6/marker-placement: interior;
    wpdir6/marker-clip: false;
  }
}
