// --- vegetation related ---

@grass: #d1efb4;          // Lch(91,32,128) also meadow, common, garden, village_green
@heath: #dae2ac;          // Lch(88,28,114)
@scrub: #c4daa5;          // Lch(84,29,125) halfway between heath and forest
@forest: #add19e;         // Lch(80,30,135)
@forest-text: #46673b;    // Lch(40,30,135)
@orchard: #addfa5;        // Lch(84,36,139) also vineyard, plant_nursery
@allotments: #c9e1bf;     // Lch(87,20,135)
@park: #c8facc;           // Lch(94,30,145) also recreation_ground
@farmland: #eef0d5;       // Lch(94,14,112)
@farmland-line: #c7c9ae;  // Lch(80,14,112)
@hedge: @forest;

@campsite: #def6c0;       // also caravan_site, picnic_site
@golf_course: @campsite;
@cemetery: #aacbaf;       // also grave_yard
@pitch: #88e0be;          // Lch(83,35,166)
@track: @pitch;

// --- bare ground ---

@bare_ground: #eee5dc;
@sand: #f5e9c6;
@beach: #fceeb6;          // Lch(94,29,97)
@mud: #e6dcd1;
@mud-wet: #cbb19a;
//@mud-wet: rgba(203,177,154,0.25);
@reef: #549ccd;

// --- industrial ---

@quarry: #c5bea6;
@landfill: @quarry;
@construction: @quarry;
@brownfield: @quarry;

// --- Builtup landuses ---

@residential: #e0dfdf;      // Lch(89,0,0)
@residential-line: #b9b9b9; // Lch(75,0,0)
@retail: #fcd8cd;           // Lch(89,15,42)
@retail-line: #deae9f;      // Lch(75,21,42)
@commercial: #f3dada;       // Lch(89,9,21)
@commercial-line: #d1b1b1;  // Lch(75,12,21)
@industrial: #ebdbe8;       // Lch(89,9,330) (Also used for railway)
@industrial-line: #c6b3c3;  // Lch(75,11,330) (Also used for railway-line)
@farmyard: #f5dcba;         // Lch(89,20,80)
@farmyard-line: #d1b48c;    // Lch(75,25,80)

// --- Transport ----

@transportation: #dedeee;       // Lch(89,8,291)
@transportation-line: #b7b7cd;  // Lch(75,12,291)
@station: @transportation;
@station-line: @transportation-line;
@aerodrome: @transportation;
@aerodrome-line: @transportation-line;
@garages: @transportation;
@garages-line: @transportation-line;
@parking: #faecdd;  // Lch(94,9,76)
@parking-outline: saturate(darken(@parking, 35%), 20%);
@apron: #e9d1ff;
@railway: @industrial;
@railway-line: @industrial-line;
@rest_area: #efc8c8; // also services

// --- Other ----

@danger_area: pink;
@playground: #b7f8e6;       // Lch(93,24,175)
@power: darken(@industrial, 5%);
@power-line: darken(@industrial-line, 5%);
@societal_amenities: #e2e7dc;   // Lch(91,6,127)
@stadium: @societal_amenities; // also fitness_centre and sports_centre
@place_of_worship: @societal_amenities;
@tourism: #660033;
@military: #f55;

// --- low zoom colors ---

@built-up-lowzoom: #d7d4d3;
@vegetation-tall-lowzoom: #b6dca6;
@vegetation-low-lowzoom: #ddecbd;
@bare_ground-lowzoom: #efe7d9;

#landcover-low-zoom[zoom < 10],
#landcover[zoom >= 10] {

  ::main {

    [feature = 'leisure_swimming_pool'][zoom >= 14] {
      polygon-fill: @water-color;
      line-color: saturate(darken(@water-color, 40%), 30%);
      line-width: 0.2;
      [zoom >= 15] {
        line-width: 0.3;
        [zoom >= 16] {
          line-width: 0.5;
        }
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'leisure_playground'][zoom >= 13] {
      polygon-fill: @playground;
      [zoom >= 15] {
        line-color: darken(@playground, 40%);
        line-width: 0.3;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'tourism_camp_site'],
    [feature = 'tourism_caravan_site'],
    [feature = 'tourism_picnic_site'] {
      [zoom >= 10] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 12] {
          polygon-fill: @campsite;
          [zoom >= 14] {
            line-color: saturate(darken(@campsite, 45%), 20%);
            line-width: 0.3;
          }
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'landuse_quarry'][zoom >= 8] {
      polygon-fill: @bare_ground-lowzoom;
      [zoom >= 11] {
        polygon-fill: @quarry;
        [zoom >= 13] {
          polygon-pattern-file: url('symbols/patterns/quarry.png');
          polygon-pattern-alignment: global;
          line-width: 0.5;
          line-color: darken(@quarry, 10%);
        }
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'landuse_vineyard'][zoom >= 8] {
      polygon-fill: @vegetation-tall-lowzoom;
      [zoom >= 12] {
        polygon-fill: @orchard;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 14] {
        polygon-pattern-file: url('symbols/patterns/vineyard.png');
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }

    [feature = 'landuse_orchard'][zoom >= 8] {
      polygon-fill: @vegetation-tall-lowzoom;
      [zoom >= 12] {
        polygon-fill: @orchard;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 14] {
        polygon-pattern-file: url('symbols/patterns/orchard.png');
        [zoom >= 15] {
          [crop = 'olive_trees'] {
            polygon-pattern-file: url('symbols/patterns/orchard_olive.png');
          }
          [crop = 'banana_plants'] {
            polygon-pattern-file: url('symbols/patterns/orchard_banana.png');
          }
          [crop = 'pineapple_plants'] {
            polygon-pattern-file: url('symbols/patterns/orchard_pineapple.png');
          }
          [crop = 'tea_plants'],
          [crop = 'coffea_plants'] {
            polygon-pattern-file: url('symbols/patterns/orchard_tea.png');
          }
          [crop = 'oil_palms'],
          [crop = 'coconut_palms'],
          [crop = 'date_palms'] {
            polygon-pattern-file: url('symbols/patterns/orchard_oilpalm.png');
          }
          [crop = 'apple_trees'],
          [crop = 'orange_trees'],
          [crop = 'almond_trees'] {
            polygon-pattern-file: url('symbols/patterns/orchard_tree.png');
          }
        }
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }

    [feature = 'landuse_plant_nursery'][zoom >= 8] {
      polygon-fill: @vegetation-tall-lowzoom;
      [zoom >= 12] {
        polygon-fill: @orchard;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 14] {
        polygon-pattern-file: url('symbols/patterns/plant_nursery.png');
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }

    [feature = 'landuse_cemetery'],
    [feature = 'amenity_grave_yard'] {
      [zoom >= 10] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 12] {
          polygon-fill: @cemetery;
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
      [zoom >= 14] {
        [religion = 'jewish'] { polygon-pattern-file: url('symbols/patterns/grave_yard_jewish.png'); }
        [religion = 'muslim'] { polygon-pattern-file: url('symbols/patterns/grave_yard_muslim.png'); }
        [religion = 'christian'] { polygon-pattern-file: url('symbols/patterns/grave_yard_christian.png'); }
        [religion = 'INT-generic'] { polygon-pattern-file: url('symbols/patterns/grave_yard_generic.png'); }
        [religion = 'jewish'],
        [religion = 'muslim'],
        [religion = 'christian'],
        [religion = 'INT-generic'] {
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
        }
      }
    }

    [feature = 'amenity_place_of_worship'][zoom >= 13] {
      polygon-fill: @place_of_worship;
      polygon-clip: false;
      [zoom >= 15] {
        line-color: darken(@place_of_worship, 35%);
        line-width: 0.3;
        line-clip: false;
      }
    }

    [feature = 'amenity_prison'][zoom >= 10][way_pixels > 75] {
      polygon-fill: #8e8e8e;
      polygon-opacity: 0.14;
      polygon-pattern-file: url('symbols/grey_vertical_hatch.svg');
      polygon-pattern-alignment: global;
      line-color: #888;
      line-width: 3;
      line-opacity: 0.329;
    }

    [feature = 'landuse_residential'][zoom >= 8] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] { polygon-fill: @residential; }
      [zoom >= 16] {
        line-width: .5;
        line-color: @residential-line;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'landuse_garages'][zoom >= 8] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] { polygon-fill: @garages; }
      [zoom >= 16] {
        line-width: .5;
        line-color: @garages-line;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'leisure_park'],
    [feature = 'leisure_recreation_ground'] {
      [zoom >= 10] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 12] {
          polygon-fill: @park;
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'leisure_dog_park'] {
      [zoom >= 10] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 12] {
          polygon-fill: @park;
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
      [zoom >= 16] {
        polygon-pattern-file: url('symbols/dog_park.png');
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }

    [feature = 'leisure_golf_course'][zoom >= 8],
    [feature = 'leisure_miniature_golf'][zoom >= 15] {
      polygon-fill: @vegetation-low-lowzoom;
      [zoom >= 12] {
        polygon-fill: @golf_course;
        [zoom >= 16] {
          line-width: 0.3;
          line-color: darken(@golf_course, 35%);
        }
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'landuse_allotments'][zoom >= 8] {
      polygon-fill: @vegetation-low-lowzoom;
      [zoom >= 11] {
        polygon-fill: @allotments;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 14] {
        polygon-pattern-file: url('symbols/patterns/allotments.png');
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }

    [feature = 'landuse_forest'],
    [feature = 'natural_wood'] {
      [zoom >= 8] {
        polygon-fill: @vegetation-tall-lowzoom;
        [zoom >= 12] {
          polygon-fill: @forest;
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'landuse_farmyard'][zoom >= 10] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 12] {
        polygon-fill: @farmyard;
        [zoom >= 16] {
          line-width: 0.5;
          line-color: @farmyard-line;
        }
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'landuse_farmland'],
    [feature = 'landuse_greenhouse_horticulture'] {
      [zoom >= 8] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 11] {
          polygon-fill: @farmland;
          [zoom >= 14] {
            [crop = 'rice'] {
              polygon-pattern-file: url('symbols/patterns/farmland_rice.png');
              polygon-pattern-alignment: global;
              [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
              [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
            }
            [crop = 'tea'] {
              polygon-pattern-file: url('symbols/patterns/farmland_tea.png');
              polygon-pattern-alignment: global;
              [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
              [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
            }
            [crop = 'hop'] {
              polygon-pattern-file: url('symbols/patterns/farmland_hop.png');
              polygon-pattern-alignment: global;
              [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
              [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
            }
            [crop = 'cereal'],
            [crop = 'corn'],
            [crop = 'wheat'],
            [crop = 'barley'] {
              polygon-pattern-file: url('symbols/patterns/farmland_cereal.png');
              polygon-pattern-alignment: global;
              [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
              [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
            }
            [crop = 'sugarcane'] {
              polygon-pattern-file: url('symbols/patterns/farmland_sugarcane.png');
              polygon-pattern-alignment: global;
              [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
              [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
            }
            [crop = 'grass'] {
              polygon-pattern-file: url('symbols/patterns/farmland_grass.png');
              polygon-pattern-alignment: global;
              [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
              [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
            }
          }
          [zoom >= 16] {
            line-width: .5;
            line-color: @farmland-line;
          }
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'landuse_meadow'],
    [feature = 'natural_grassland'],
    [feature = 'landuse_grass'],
    [feature = 'landuse_recreation_ground'],
    [feature = 'landuse_village_green'],
    [feature = 'leisure_common'],
    [feature = 'leisure_garden'] {
      [zoom >= 8] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 12] {
          polygon-fill: @grass;
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
        [feature = 'leisure_garden'] {
          [zoom >= 14] {
            polygon-pattern-file: url('symbols/patterns/garden.png');
            polygon-pattern-alignment: global;
            [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
            [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
          }
        }
      }
    }
    [feature = 'landuse_flowerbed'] {
      [zoom >= 8] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 12] {
          polygon-fill: @grass;
          [way_pixels >= 4]  { polygon-gamma: 0.75; }
          [way_pixels >= 64] { polygon-gamma: 0.3;  }

          [zoom >= 15] {
            polygon-fill: mix(@grass, @orchard, 75%);
            polygon-pattern-file: url('symbols/patterns/flowerbed_structure.png');
            polygon-pattern-alignment: global;
            [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
            [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
            [zoom >= 17] {
              polygon-pattern-file: url('symbols/patterns/flowerbed_symbol.png');
            }
          }
        }
      }
    }

    [feature = 'landuse_retail'][zoom >= 8] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] { polygon-fill: @retail; }
      [zoom >= 16] {
        line-width: 0.5;
        line-color: @retail-line;
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'landuse_industrial'][zoom >= 8] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] { polygon-fill: @industrial; }
      [zoom >= 16] {
        line-width: .5;
        line-color: @industrial-line;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'landuse_railway'][zoom >= 8] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] { polygon-fill: @railway; }
      [zoom >= 16] {
        line-width: .5;
        line-color: @railway-line;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'power_station'][zoom >= 10],
    [feature = 'power_generator'][zoom >= 10],
    [feature = 'power_plant'][zoom >= 10],
    [feature = 'power_substation'][zoom >= 13] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] {
        polygon-fill: @industrial;
      }
      [zoom >= 15] {
        polygon-fill: @power;
      }
      [zoom >= 16] {
        line-width: 0.5;
        line-color: @power-line;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'landuse_commercial'][zoom >= 8] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] { polygon-fill: @commercial; }
      [zoom >= 16] {
        line-width: 0.5;
        line-color: @commercial-line;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'landuse_construction'] {
      [zoom >= 10] {
        polygon-fill: @built-up-lowzoom;
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
        [zoom >= 13] {
          polygon-fill: @construction;
          [zoom >= 15] {
            polygon-pattern-file: url('symbols/patterns/construction.png');
            polygon-pattern-alignment: global;
          }
        }
      }
    }

    [feature = 'landuse_brownfield'] {
      [zoom >= 10] {
        polygon-fill: @built-up-lowzoom;
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
        [zoom >= 13] {
          polygon-fill: @brownfield;
          [zoom >= 15] {
            polygon-pattern-file: url('symbols/patterns/brownfield.png');
            polygon-pattern-alignment: global;
          }
        }
      }
    }

    [feature = 'landuse_landfill'][zoom >= 10]  {
      polygon-fill: @bare_ground-lowzoom;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 11] {
        polygon-fill: @landfill;
        [zoom >= 13] {
          polygon-pattern-file: url('symbols/patterns/landfill.png');
          polygon-pattern-alignment: global;
          line-width: 0.5;
          line-color: darken(@landfill, 10%);
        }
      }
    }

    [feature = 'landuse_salt_pond'][zoom >= 10]  {
      polygon-fill: @ocean-color;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 11] {
        a/polygon-pattern-file: url('symbols/patterns/water_salt.png');
        a/polygon-pattern-alignment: global;
        [zoom >= 13] {
          b/polygon-pattern-file: url('symbols/patterns/salt_pond.png');
          b/polygon-pattern-alignment: global;
        }
      }
    }

    [feature = 'natural_bare_rock'][zoom >= 9] {
      polygon-fill: @bare_ground-lowzoom;
      [zoom >= 12] { polygon-fill: @bare_ground; }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 13] {
        polygon-pattern-file: url('symbols/patterns/rock_overlay.png');
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }

    [feature = 'natural_scree'],
    [feature = 'natural_shingle'] {
      [zoom >= 9] {
        polygon-fill: @bare_ground-lowzoom;
        [zoom >= 12] { polygon-fill: @bare_ground; }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
        [zoom >= 13] {
          polygon-pattern-file: url('symbols/patterns/scree_overlay.png');
          polygon-pattern-alignment: global;
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
        }
      }
    }

    [feature = 'natural_sand'][zoom >= 8] {
      polygon-fill: @bare_ground-lowzoom;
      [zoom >= 12] { polygon-fill: @sand; }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'wetland_tidalflat'],
    [feature = 'natural_mud'] {
      [zoom >= 9] {
        polygon-fill: @bare_ground-lowzoom;
        [zoom >= 12] {
          polygon-fill: @mud;
          [surface = 'sand'] { polygon-fill: @sand; }
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'natural_beach'],
    [feature = 'natural_shoal'] {
      [zoom >= 9] {
        polygon-fill: @bare_ground-lowzoom;
        [zoom >= 11] { polygon-fill: @beach; }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
        [zoom >= 14] {
          [surface = 'sand'] {
            polygon-pattern-file: url('symbols/patterns/beach.png');
            polygon-pattern-alignment: global;
            [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
            [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
          }
          [surface = 'gravel'],
          [surface = 'fine_gravel'],
          [surface = 'pebbles'],
          [surface = 'pebblestone'],
          [surface = 'shingle'],
          [surface = 'stones'],
          [surface = 'shells'] {
            polygon-pattern-file: url('symbols/patterns/beach_coarse.png');
            polygon-pattern-alignment: global;
            [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
            [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
          }
        }
      }
    }

    [feature = 'natural_heath'][zoom >= 8] {
      polygon-fill: @vegetation-low-lowzoom;
      [zoom >= 12] { polygon-fill: @heath; }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'wetland_mangrove'],
    [feature = 'natural_scrub'] {
      [zoom >= 8] {
        polygon-fill: @vegetation-tall-lowzoom;
        [zoom >= 12] { polygon-fill: @scrub; }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'wetland_swamp'][zoom >= 8] {
      polygon-fill: @vegetation-tall-lowzoom;
      [zoom >= 12] { polygon-fill: @forest; }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'wetland_bog'],
    [feature = 'wetland_string_bog'] {
      [zoom >= 8] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 12] { polygon-fill: @heath; }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'wetland_wet_meadow'],
    [feature = 'wetland_fen'],
    [feature = 'wetland_saltmarsh'],
    [feature = 'wetland_reedbed'],
    [feature = 'wetland_marsh'] {
      [zoom >= 8] {
        polygon-fill: @vegetation-low-lowzoom;
        [zoom >= 12] { polygon-fill: @grass; }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'amenity_hospital'],
    [feature = 'amenity_clinic'],
    [feature = 'amenity_university'],
    [feature = 'amenity_college'],
    [feature = 'amenity_school'],
    [feature = 'amenity_kindergarten'] {
      [zoom >= 10] {
        polygon-fill: @built-up-lowzoom;
        [zoom >= 13] {
          polygon-fill: @societal_amenities;
          line-width: 0.3;
          line-color: darken(@societal_amenities, 25%);
        }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'amenity_parking'][zoom >= 10],
    [feature = 'amenity_bicycle_parking'][zoom >= 10],
    [feature = 'amenity_motorcycle_parking'][zoom >= 10] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 12] { polygon-fill: @parking; }
      [zoom >= 15] {
        [surface = 'unpaved'] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_parking.svg');
          polygon-pattern-alignment: global;
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
        }
        [surface = 'unknown'][zoom >= 18] {
          polygon-pattern-file: url('symbols/unpaved/unknown_parking.svg');
          polygon-pattern-alignment: global;
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
        }
        line-width: 0.3;
        line-color: @parking-outline;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'aeroway_apron'][zoom >= 10] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 11] { polygon-fill: @aerodrome; }
      [zoom >= 12] { polygon-fill: @apron; }
      [zoom >= 15] {
        [surface = 'unpaved'] {
          polygon-pattern-file: url('symbols/unpaved/unpaved_apron.svg');
          polygon-pattern-alignment: global;
        }
        line-width: 0.3;
        line-color: darken(@apron, 7%);
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'aeroway_aerodrome'][zoom >= 10] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 11] {
        polygon-fill: @aerodrome;
        [zoom >= 13] {
          line-width: 0.5;
          line-color: @aerodrome-line;
        }
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'highway_services'],
    [feature = 'highway_rest_area'] {
      [zoom >= 10] {
        polygon-fill: @built-up-lowzoom;
        [zoom >= 12] { polygon-fill: @rest_area; }
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }

    [feature = 'railway_station'][zoom >= 10] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] {
        polygon-fill: @station;
        [zoom >= 16] {
          line-width: 0.5;
          line-color: @station-line;
        }
      }
    }

    [feature = 'leisure_fitness_centre'],
    [feature = 'leisure_sports_centre'],
    [feature = 'leisure_stadium'] {
      [zoom >= 10] {
        polygon-fill: @built-up-lowzoom;
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
        [zoom >= 13] {
          polygon-fill: @stadium;
          line-width: 0.3;
          line-color: darken(@stadium, 35%);
        }
      }
    }

    [feature = 'leisure_track'][zoom >= 10] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] { polygon-fill: @track; }
      [zoom >= 15] {
        line-width: 0.5;
        line-color: saturate(darken(@track, 30%), 20%);
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'leisure_pitch'][zoom >= 10] {
      polygon-fill: @built-up-lowzoom;
      [zoom >= 13] {
        polygon-fill: @pitch;
        polygon-comp-op: dst-out;
      }
      [zoom >= 15] {
        line-width: 0.5;
        line-color: saturate(darken(@pitch, 30%), 20%);
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }

    [feature = 'amenity_parking_space'][zoom >= 18] {
      [zoom >= 19] {
        polygon-fill: @parking;
        polygon-comp-op: dst-out;
      }
      line-width: 0.3;
      line-color: mix(@parking-outline, @parking, 50%);
    }
  }

  ::backdrop {
    [zoom >= 13] {
    [feature = 'leisure_pitch'] {
      polygon-fill: @pitch;
      [zoom >= 15][way_pixels >= 480] {
        [sport = 'soccer'] {
          marker-file: url('symbols/sport/soccer.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
          [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
        [sport = 'handball'] {
          marker-file: url('symbols/sport/handball.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
          [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
        [sport = 'baseball'] {
          marker-file: url('symbols/sport/baseball.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
          [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
        [sport = 'basketball'] {
          marker-file: url('symbols/sport/basketball.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
          [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
        [sport = 'american_football'] {
          marker-file: url('symbols/sport/american_football.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
          [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
        [sport = 'tennis'] {
          marker-file: url('symbols/sport/tennis.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
          [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
        [sport = 'skateboard'] {
          marker-file: url('symbols/sport/skateboard.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
          [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
        [sport = 'boules'],
        [sport = 'bowls'] {
          marker-file: url('symbols/sport/boules.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
            [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
        [sport = 'volleyball'],
        [sport = 'beachvolleyball'] {
          marker-file: url('symbols/sport/volleyball.svg');
          marker-placement: interior;
          marker-clip: false;
          marker-fill: desaturate(darken(@pitch, 16%), 5%);
          marker-ignore-placement: true;
          marker-allow-overlap: true;
          [way_pixels >= 3200] { marker-transform: 'scale (2)'; marker-fill: desaturate(darken(@pitch, 10%), 5%); }
        }
      }
      comp-op: dst-over;
    }
    }
    [zoom >= 19] {
    [feature = 'amenity_parking_space'] {
      polygon-fill: @parking;
      [surface = 'unpaved'] {
        polygon-pattern-file: url('symbols/unpaved/unpaved_parking.svg');
        polygon-pattern-alignment: global;
      }
      [surface = 'unknown'] {
        polygon-pattern-file: url('symbols/unpaved/unknown_parking.svg');
        polygon-pattern-alignment: global;
      }
      [way_pixels >= 160] {
        [int_parking_space = 'disabled'] {
          bkg/marker-file: url('symbols/transport/disabled.svg');
          bkg/marker-placement: interior;
          bkg/marker-clip: false;
          bkg/marker-line-color: @parking;
          bkg/marker-line-width: 2.5;
          bkg/marker-ignore-placement: true;
          bkg/marker-allow-overlap: true;
          symbol/marker-file: url('symbols/transport/disabled.svg');
          symbol/marker-placement: interior;
          symbol/marker-clip: false;
          symbol/marker-fill: desaturate(darken(@parking, 16%), 5%);
          symbol/marker-ignore-placement: true;
          symbol/marker-allow-overlap: true;
          [way_pixels >= 640] {
            bkg/marker-transform: 'scale (2)';
            symbol/marker-transform: 'scale (2)';
            symbol/marker-fill: desaturate(darken(@parking, 9%), 5%);
          }
        }
        [int_parking_space = 'charging'] {
          bkg/marker-file: url('symbols/transport/charging.svg');
          bkg/marker-placement: interior;
          bkg/marker-clip: false;
          bkg/marker-line-color: @parking;
          bkg/marker-line-width: 2.5;
          bkg/marker-ignore-placement: true;
          bkg/marker-allow-overlap: true;
          symbol/marker-file: url('symbols/transport/charging.svg');
          symbol/marker-placement: interior;
          symbol/marker-clip: false;
          symbol/marker-fill: desaturate(darken(@parking, 16%), 5%);
          symbol/marker-ignore-placement: true;
          symbol/marker-allow-overlap: true;
          [way_pixels >= 640] {
            bkg/marker-transform: 'scale (2)';
            symbol/marker-transform: 'scale (2)';
            symbol/marker-fill: desaturate(darken(@parking, 9%), 5%);
          }
        }
        [int_parking_space = 'shopping'] {
          bkg/marker-file: url('symbols/transport/shopping_large.svg');
          bkg/marker-placement: interior;
          bkg/marker-clip: false;
          bkg/marker-line-color: @parking;
          bkg/marker-line-width: 2.5;
          bkg/marker-ignore-placement: true;
          bkg/marker-allow-overlap: true;
          symbol/marker-file: url('symbols/transport/shopping_large.svg');
          symbol/marker-placement: interior;
          symbol/marker-clip: false;
          symbol/marker-fill: desaturate(darken(@parking, 16%), 5%);
          symbol/marker-ignore-placement: true;
          symbol/marker-allow-overlap: true;
          [way_pixels >= 640] {
            bkg/marker-transform: 'scale (2)';
            symbol/marker-transform: 'scale (2)';
            symbol/marker-fill: desaturate(darken(@parking, 9%), 5%);
          }
        }
        [int_parking_space = 'private'],
        [int_parking_space = 'capacity'] {
          text-name: "[int_parking_label]";
          text-face-name: @standard-font;
          text-size: 11;
          text-placement: interior;
          text-fill: desaturate(darken(@parking, 16%), 5%);
          [way_pixels >= 640] {
            text-size: 14;
            symbol/marker-fill: desaturate(darken(@parking, 9%), 5%);
          }
          text-allow-overlap: true;
          text-halo-radius: 2.5;
          text-halo-fill: @parking;
        }
      }
      [way_pixels >= 240] {
        [int_parking_space = 'bus'] {
          bkg/marker-file: url('symbols/transport/bus.svg');
          bkg/marker-placement: interior;
          bkg/marker-clip: false;
          bkg/marker-line-color: @parking;
          bkg/marker-line-width: 2.5;
          bkg/marker-ignore-placement: true;
          bkg/marker-allow-overlap: true;
          symbol/marker-file: url('symbols/transport/bus.svg');
          symbol/marker-placement: interior;
          symbol/marker-clip: false;
          // bus symbol is somewhat larger so it can be a bit weaker
          symbol/marker-fill: desaturate(darken(@parking, 12%), 5%);
          symbol/marker-ignore-placement: true;
          symbol/marker-allow-overlap: true;
          [way_pixels >= 640] {
            bkg/marker-transform: 'scale (2)';
            symbol/marker-transform: 'scale (2)';
            symbol/marker-fill: desaturate(darken(@parking, 6%), 4%);
          }
        }
      }
      comp-op: dst-over;
    }
    }
  }
}

/* man_made=cutline */
#landcover-line {
  [zoom >= 14] {
    line-width: 3;
    line-join: round;
    line-cap: square;
    line-color: @grass;
    [zoom >= 16] {
      line-width: 6;
      [zoom >= 18] {
        line-width: 12;
      }
    }
  }
}

#landcover-water {
  [natural = 'mud'],
  [int_wetland = 'tidalflat'] {
    [surface = 'sand'][zoom >= 13] {
      polygon-fill: mix(mix(@mud, @mud-wet, 50%), @ocean-color, 25%);
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      polygon-pattern-file: url('symbols/patterns/beach.png');
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
    [surface != 'sand'],
    [zoom < 13] {
      polygon-fill: mix(@mud-wet, @ocean-color, 25%);
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [natural = 'bare_rock'] {
    [zoom >= 9] {
      polygon-fill: mix(@mud-wet, @ocean-color, 25%);
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 13] {
        polygon-fill: mix(mix(@bare_ground, @mud-wet, 50%), @ocean-color, 25%);
        polygon-pattern-file: url('symbols/patterns/rock_overlay.png');
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }
  }

  [natural = 'scree'],
  [natural = 'shingle'] {
    [zoom >= 9] {
      polygon-fill: mix(@mud-wet, @ocean-color, 25%);
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 13] {
        polygon-fill: mix(mix(@bare_ground, @mud-wet, 50%), @ocean-color, 25%);
        polygon-pattern-file: url('symbols/patterns/scree_overlay.png');
        polygon-pattern-alignment: global;
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }
  }

  [natural = 'beach'],
  [natural = 'shoal'] {
    [zoom >= 9] {
      polygon-fill: mix(@mud-wet, @ocean-color, 25%);
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 14] {
        [surface = 'sand'] {
          polygon-fill: mix(mix(@mud, @mud-wet, 50%), @ocean-color, 25%);
          polygon-pattern-file: url('symbols/patterns/beach.png');
          polygon-pattern-alignment: global;
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
        }
        [surface = 'gravel'],
        [surface = 'fine_gravel'],
        [surface = 'pebbles'],
        [surface = 'pebblestone'],
        [surface = 'shingle'],
        [surface = 'stones'],
        [surface = 'shells'] {
          polygon-pattern-file: url('symbols/patterns/beach_coarse.png');
          polygon-pattern-alignment: global;
          [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
          [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
        }
      }
    }
  }
  comp-op: dst-over;
}

#landcover-area-symbols {
  [natural = 'reef'] {
    [zoom < 10] {
      polygon-fill: @reef;
      polygon-opacity: 0.1;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 10] {
      polygon-pattern-file: url('symbols/patterns/reef.png');
      polygon-pattern-alignment: global;
      [zoom >= 13] {
        [surface = 'sand'] {
          polygon-pattern-file: url('symbols/patterns/reef_sand.png');
        }
        [surface = 'rock'] {
          polygon-pattern-file: url('symbols/patterns/reef_rock.png');
        }
        [surface = 'coral'] {
          polygon-pattern-file: url('symbols/patterns/reef_coral.png');
        }
      }
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }

  [int_wetland = 'saltmarsh'][zoom >= 13] {
    bkg/polygon-pattern-file: url('symbols/patterns/salt_dots.png');
    bkg/polygon-pattern-alignment: global;
    [way_pixels >= 4]  { bkg/polygon-pattern-gamma: 0.75; }
    [way_pixels >= 64] { bkg/polygon-pattern-gamma: 0.3;  }
  }

  [int_wetland != null][zoom >= 10] {
    polygon-pattern-file: url('symbols/patterns/wetland.png');
    polygon-pattern-alignment: global;
  }

  [zoom >= 14] {
    [int_wetland = 'marsh'],
    [int_wetland = 'saltmarsh'],
    [int_wetland = 'wet_meadow'] {
      polygon-pattern-file: url('symbols/patterns/wetland_marsh.png');
      polygon-pattern-alignment: global;
    }
    [int_wetland = 'reedbed'] {
      polygon-pattern-file: url('symbols/patterns/wetland_reed.png');
      polygon-pattern-alignment: global;
    }
    [int_wetland = 'mangrove'] {
      polygon-pattern-file: url('symbols/patterns/mangrove.png');
      polygon-pattern-alignment: global;
    }
    [int_wetland = 'swamp'] {
      [leaf_type = "broadleaved"] {
        polygon-pattern-file: url('symbols/patterns/swamp_broadleaved_unknown.png');
        [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/swamp_broadleaved_evergreen.png'); }
        [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/swamp_broadleaved_deciduous.png'); }
        [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/swamp_broadleaved_mixed.png'); }
        polygon-pattern-alignment: global;
      }
      [leaf_type = "needleleaved"] {
        polygon-pattern-file: url('symbols/patterns/swamp_needleleaved_unknown.png');
        [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/swamp_needleleaved_evergreen.png'); }
        [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/swamp_needleleaved_deciduous.png'); }
        [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/swamp_needleleaved_mixed.png'); }
        polygon-pattern-alignment: global;
      }
      [leaf_type = "mixed"] {
        polygon-pattern-file: url('symbols/patterns/swamp_mixed_unknown.png');
        [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/swamp_mixed_evergreen.png'); }
        [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/swamp_mixed_deciduous.png'); }
        [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/swamp_mixed_mixed.png'); }
        polygon-pattern-alignment: global;
      }
    }
    [int_wetland = 'bog'],
    [int_wetland = 'fen'],
    [int_wetland = 'string_bog'] {
      polygon-pattern-file: url('symbols/patterns/wetland_bog.png');
      polygon-pattern-alignment: global;
    }
    [natural = 'scrub']::scrub {
      polygon-pattern-file: url('symbols/patterns/scrub_unknown_unknown.png');
      [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/scrub_unknown_evergreen.png'); }
      [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/scrub_unknown_deciduous.png'); }
      [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/scrub_unknown_mixed.png'); }
      [leaf_type = "broadleaved"] {
        polygon-pattern-file: url('symbols/patterns/scrub_broadleaved_unknown.png');
        [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/scrub_broadleaved_evergreen.png'); }
        [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/scrub_broadleaved_deciduous.png'); }
        [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/scrub_broadleaved_mixed.png'); }
      }
      [leaf_type = "needleleaved"] {
        polygon-pattern-file: url('symbols/patterns/scrub_needleleaved_unknown.png');
        [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/scrub_needleleaved_evergreen.png'); }
        [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/scrub_needleleaved_deciduous.png'); }
        [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/scrub_needleleaved_mixed.png'); }
      }
      [leaf_type = "mixed"] {
        polygon-pattern-file: url('symbols/patterns/scrub_mixed_unknown.png');
        [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/scrub_mixed_evergreen.png'); }
        [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/scrub_mixed_deciduous.png'); }
        [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/scrub_mixed_mixed.png'); }
      }
      polygon-pattern-alignment: global;
      opacity: 0.8;
    }
  }

  //Also landuse = forest, converted in the SQL
  [natural = 'wood'][zoom >= 13]::wood {
    [leaf_type = "broadleaved"] {
      polygon-pattern-file: url('symbols/patterns/forest_broadleaved_unknown.png');
      [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/forest_broadleaved_evergreen.png'); }
      [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/forest_broadleaved_deciduous.png'); }
      [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/forest_broadleaved_mixed.png'); }
      polygon-pattern-alignment: global;
      opacity: 0.8; // The entire layer has opacity to handle overlapping forests
    }
    [leaf_type = "needleleaved"] {
      polygon-pattern-file: url('symbols/patterns/forest_needleleaved_unknown.png');
      [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/forest_needleleaved_evergreen.png'); }
      [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/forest_needleleaved_deciduous.png'); }
      [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/forest_needleleaved_mixed.png'); }
      polygon-pattern-alignment: global;
      opacity: 0.8; // The entire layer has opacity to handle overlapping forests
    }
    [leaf_type = "mixed"] {
      polygon-pattern-file: url('symbols/patterns/forest_mixed_unknown.png');
      [leaf_cycle = "evergreen"] { polygon-pattern-file: url('symbols/patterns/forest_mixed_evergreen.png'); }
      [leaf_cycle = "deciduous"] { polygon-pattern-file: url('symbols/patterns/forest_mixed_deciduous.png'); }
      [leaf_cycle = "mixed"] { polygon-pattern-file: url('symbols/patterns/forest_mixed_mixed.png'); }
      polygon-pattern-alignment: global;
      opacity: 0.8; // The entire layer has opacity to handle overlapping forests
    }
  }
}

#landuse-overlay-lz,
#roads[zoom >= 10][road_layer = 'landuse_overlay'],
#roads-noareas[zoom >= 10][road_layer = 'landuse_overlay'] {
  // width is way_pixels here
  [zoom >= 7][width > 900],
  [zoom >= 8][width > 100],
  [zoom >= 10][width > 75],
  [zoom >= 13] {
    [feature = 'landuse_military'] {
      polygon-fill: #ff5555;
      polygon-opacity: 0.08;
      polygon-pattern-file: url('symbols/military_red_hatch.svg');
      polygon-pattern-alignment: global;
      line-color: @military;
      line-opacity: 0.24;
      line-width: 1.0;
      line-offset: -0.5;
      [zoom >= 15] {
        line-width: 2;
        line-offset: -1.0;
      }
    }

    [feature = 'military_danger_area'] {
      polygon-fill: #ff5555;
      polygon-opacity: 0.1;
      polygon-pattern-file: url('symbols/danger_red_hatch.svg');
      polygon-pattern-alignment: global;
      line-color: @military;
      line-opacity: 0.2;
      line-width: 2;
      line-offset: -1.0;
    }
  }
}

#tourism-boundary {
  [tourism = 'zoo'],
  [tourism = 'theme_park'] {
    [zoom >= 10][way_pixels >= 600],
    [zoom >= 11][way_pixels >= 400],
    [zoom >= 12][way_pixels >= 250],
    [zoom >= 13][way_pixels >= 160],
    [zoom >= 14][way_pixels >= 90],
    [zoom >= 17] {
      a/line-width: 1;
      a/line-offset: -0.5;
      a/line-color: @tourism;
      a/line-opacity: 0.35;
      a/line-join: round;
      a/line-cap: round;
      [zoom >= 17],
      [way_pixels >= 90] {
        b/line-width: 4;
        b/line-offset: -2;
        b/line-color: @tourism;
        b/line-opacity: 0.2;
        b/line-join: round;
        b/line-cap: round;
      }
      [zoom >= 17] {
        a/line-width: 2;
        a/line-offset: -1;
        b/line-width: 6;
        b/line-offset: -3;
      }
    }
  }
}
