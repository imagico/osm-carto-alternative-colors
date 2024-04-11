/* Features related to (postal) adresses: */

@address-color: #666;

#interpolation {
  [zoom >= 17] {
    line-color: @address-color;
    line-width: 1;
    line-dasharray: 2,4;
  }
}

#addresses {
  [zoom >= 17] {
    ["addr_housenumber" != null] {
      text-anchor-cond: "'!addr_'+[osm_id_building]";
      text-anchor-set: "'addr_'+[osm_id]";
      text-name: [addr_housenumber];
      //text-name: [osm_id_building];
      text-min-distance: 1;
      text-face-name: @book-fonts;
      text-fill: @address-color;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-size: 10;
      text-wrap-width: 20; // 2.0 em
      text-line-spacing: -1.5; // -0.15 em
      [zoom >= 20] {
        text-size: 11;
        text-wrap-width: 22; // 2.0 em
        text-line-spacing: -1.65; // -0.15 em
      }
      ["addr_unit" != null],
      ["addr_flats" != null] {
        text-horizontal-alignment: left;
        text-vertical-alignment: middle;
      }
      ["entrance" = null]
      ["addr_housename" != null] {
        text-vertical-alignment: top;
        text-dy: -2;
      }
      ["entrance" != null] {
        text-horizontal-alignment: left;
        text-dx: -4;
        [zoom >= 20] { text-dx: -5; }
        text-vertical-alignment: middle;
        ["ref" != null] {
          text-vertical-alignment: top;
          text-dy: -1;
        }
      }
      ["entrance" = null] {
        hn2/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn2/text-anchor-set: "'addr_'+[osm_id]";
        hn2/text-name: [addr_housenumber];
        hn2/text-min-distance: 1;
        hn2/text-face-name: @book-fonts;
        hn2/text-fill: @address-color;
        hn2/text-halo-radius: @standard-halo-radius;
        hn2/text-halo-fill: @standard-halo-fill;
        hn2/text-size: 10;
        hn2/text-wrap-width: 20; // 2.0 em
        hn2/text-line-spacing: -1.5; // -0.15 em
        hn2/text-horizontal-alignment: left;
        hn2/text-dx: -3;
        hn2/text-vertical-alignment: middle;
        [zoom >= 20] {
          hn2/text-size: 11;
          hn2/text-wrap-width: 22; // 2.0 em
          hn2/text-line-spacing: -1.65; // -0.15 em
        }

        hn3/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn3/text-anchor-set: "'addr_'+[osm_id]";
        hn3/text-name: [addr_housenumber];
        hn3/text-min-distance: 1;
        hn3/text-face-name: @book-fonts;
        hn3/text-fill: @address-color;
        hn3/text-halo-radius: @standard-halo-radius;
        hn3/text-halo-fill: @standard-halo-fill;
        hn3/text-size: 10;
        hn3/text-wrap-width: 20; // 2.0 em
        hn3/text-line-spacing: -1.5; // -0.15 em
        hn3/text-horizontal-alignment: left;
        hn3/text-dx: -5;
        hn3/text-vertical-alignment: middle;
        [zoom >= 20] {
          hn3/text-size: 11;
          hn3/text-wrap-width: 22; // 2.0 em
          hn3/text-line-spacing: -1.65; // -0.15 em
        }

        hn4/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn4/text-anchor-set: "'addr_'+[osm_id]";
        hn4/text-name: [addr_housenumber];
        hn4/text-min-distance: 1;
        hn4/text-face-name: @book-fonts;
        hn4/text-fill: @address-color;
        hn4/text-halo-radius: @standard-halo-radius;
        hn4/text-halo-fill: @standard-halo-fill;
        hn4/text-size: 10;
        hn4/text-wrap-width: 20; // 2.0 em
        hn4/text-line-spacing: -1.5; // -0.15 em
        hn4/text-horizontal-alignment: left;
        hn4/text-dx: -7;
        hn4/text-vertical-alignment: middle;
        [zoom >= 20] {
          hn4/text-size: 11;
          hn4/text-wrap-width: 22; // 2.0 em
          hn4/text-line-spacing: -1.65; // -0.15 em
        }
        hn5/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn5/text-anchor-set: "'addr_'+[osm_id]";
        hn5/text-name: [addr_housenumber];
        hn5/text-min-distance: 1;
        hn5/text-face-name: @book-fonts;
        hn5/text-fill: @address-color;
        hn5/text-halo-radius: @standard-halo-radius;
        hn5/text-halo-fill: @standard-halo-fill;
        hn5/text-size: 10;
        hn5/text-wrap-width: 20; // 2.0 em
        hn5/text-line-spacing: -1.5; // -0.15 em
        hn5/text-horizontal-alignment: left;
        hn5/text-dx: -9;
        hn5/text-vertical-alignment: middle;
        [zoom >= 20] {
          hn5/text-size: 11;
          hn5/text-wrap-width: 22; // 2.0 em
          hn5/text-line-spacing: -1.65; // -0.15 em
        }

        hn2v/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn2v/text-anchor-set: "'addr_'+[osm_id]";
        hn2v/text-name: [addr_housenumber];
        hn2v/text-min-distance: 1;
        hn2v/text-face-name: @book-fonts;
        hn2v/text-fill: @address-color;
        hn2v/text-halo-radius: @standard-halo-radius;
        hn2v/text-halo-fill: @standard-halo-fill;
        hn2v/text-size: 10;
        hn2v/text-wrap-width: 20; // 2.0 em
        hn2v/text-line-spacing: -1.5; // -0.15 em
        hn2v/text-vertical-alignment: top;
        hn2v/text-dy: -4;
        [zoom >= 20] {
          hn2v/text-size: 11;
          hn2v/text-wrap-width: 22; // 2.0 em
          hn2v/text-line-spacing: -1.65; // -0.15 em
        }

        hn3v/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn3v/text-anchor-set: "'addr_'+[osm_id]";
        hn3v/text-name: [addr_housenumber];
        hn3v/text-min-distance: 1;
        hn3v/text-face-name: @book-fonts;
        hn3v/text-fill: @address-color;
        hn3v/text-halo-radius: @standard-halo-radius;
        hn3v/text-halo-fill: @standard-halo-fill;
        hn3v/text-size: 10;
        hn3v/text-wrap-width: 20; // 2.0 em
        hn3v/text-line-spacing: -1.5; // -0.15 em
        hn3v/text-vertical-alignment: top;
        hn3v/text-dy: -6;
        [zoom >= 20] {
          hn3v/text-size: 11;
          hn3v/text-wrap-width: 22; // 2.0 em
          hn3v/text-line-spacing: -1.65; // -0.15 em
        }

        hn4v/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn4v/text-anchor-set: "'addr_'+[osm_id]";
        hn4v/text-name: [addr_housenumber];
        hn4v/text-min-distance: 1;
        hn4v/text-face-name: @book-fonts;
        hn4v/text-fill: @address-color;
        hn4v/text-halo-radius: @standard-halo-radius;
        hn4v/text-halo-fill: @standard-halo-fill;
        hn4v/text-size: 10;
        hn4v/text-wrap-width: 20; // 2.0 em
        hn4v/text-line-spacing: -1.5; // -0.15 em
        hn4v/text-vertical-alignment: top;
        hn4v/text-dy: -8;
        [zoom >= 20] {
          hn4v/text-size: 11;
          hn4v/text-wrap-width: 22; // 2.0 em
          hn4v/text-line-spacing: -1.65; // -0.15 em
        }

        hn5v/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn5v/text-anchor-set: "'addr_'+[osm_id]";
        hn5v/text-name: [addr_housenumber];
        hn5v/text-min-distance: 1;
        hn5v/text-face-name: @book-fonts;
        hn5v/text-fill: @address-color;
        hn5v/text-halo-radius: @standard-halo-radius;
        hn5v/text-halo-fill: @standard-halo-fill;
        hn5v/text-size: 10;
        hn5v/text-wrap-width: 20; // 2.0 em
        hn5v/text-line-spacing: -1.5; // -0.15 em
        hn5v/text-vertical-alignment: top;
        hn5v/text-dy: -10;
        [zoom >= 20] {
          hn5v/text-size: 11;
          hn5v/text-wrap-width: 22; // 2.0 em
          hn5v/text-line-spacing: -1.65; // -0.15 em
        }

        hn2r/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn2r/text-anchor-set: "'addr_'+[osm_id]";
        hn2r/text-name: [addr_housenumber];
        hn2r/text-min-distance: 1;
        hn2r/text-face-name: @book-fonts;
        hn2r/text-fill: @address-color;
        hn2r/text-halo-radius: @standard-halo-radius;
        hn2r/text-halo-fill: @standard-halo-fill;
        hn2r/text-size: 10;
        hn2r/text-wrap-width: 20; // 2.0 em
        hn2r/text-line-spacing: -1.5; // -0.15 em
        hn2r/text-horizontal-alignment: right;
        hn2r/text-dx: 3;
        hn2r/text-vertical-alignment: middle;
        [zoom >= 20] {
          hn2r/text-size: 11;
          hn2r/text-wrap-width: 22; // 2.0 em
          hn2r/text-line-spacing: -1.65; // -0.15 em
        }

        hn3r/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn3r/text-anchor-set: "'addr_'+[osm_id]";
        hn3r/text-name: [addr_housenumber];
        hn3r/text-min-distance: 1;
        hn3r/text-face-name: @book-fonts;
        hn3r/text-fill: @address-color;
        hn3r/text-halo-radius: @standard-halo-radius;
        hn3r/text-halo-fill: @standard-halo-fill;
        hn3r/text-size: 10;
        hn3r/text-wrap-width: 20; // 2.0 em
        hn3r/text-line-spacing: -1.5; // -0.15 em
        hn3r/text-horizontal-alignment: right;
        hn3r/text-dx: 5;
        hn3r/text-vertical-alignment: middle;
        [zoom >= 20] {
          hn3r/text-size: 11;
          hn3r/text-wrap-width: 22; // 2.0 em
          hn3r/text-line-spacing: -1.65; // -0.15 em
        }

        hn4r/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn4r/text-anchor-set: "'addr_'+[osm_id]";
        hn4r/text-name: [addr_housenumber];
        hn4r/text-min-distance: 1;
        hn4r/text-face-name: @book-fonts;
        hn4r/text-fill: @address-color;
        hn4r/text-halo-radius: @standard-halo-radius;
        hn4r/text-halo-fill: @standard-halo-fill;
        hn4r/text-size: 10;
        hn4r/text-wrap-width: 20; // 2.0 em
        hn4r/text-line-spacing: -1.5; // -0.15 em
        hn4r/text-horizontal-alignment: right;
        hn4r/text-dx: 7;
        hn4r/text-vertical-alignment: middle;
        [zoom >= 20] {
          hn4r/text-size: 11;
          hn4r/text-wrap-width: 22; // 2.0 em
          hn4r/text-line-spacing: -1.65; // -0.15 em
        }
        hn5r/text-anchor-cond: "'!addr_'+[osm_id_building]+',!addr_'+[osm_id]";
        hn5r/text-anchor-set: "'addr_'+[osm_id]";
        hn5r/text-name: [addr_housenumber];
        hn5r/text-min-distance: 1;
        hn5r/text-face-name: @book-fonts;
        hn5r/text-fill: @address-color;
        hn5r/text-halo-radius: @standard-halo-radius;
        hn5r/text-halo-fill: @standard-halo-fill;
        hn5r/text-size: 10;
        hn5r/text-wrap-width: 20; // 2.0 em
        hn5r/text-line-spacing: -1.5; // -0.15 em
        hn5r/text-horizontal-alignment: right;
        hn5r/text-dx: 9;
        hn5r/text-vertical-alignment: middle;
        [zoom >= 20] {
          hn5r/text-size: 11;
          hn5r/text-wrap-width: 22; // 2.0 em
          hn5r/text-line-spacing: -1.65; // -0.15 em
        }
      }
    }

    // small location marker for addresses without housenumber/housename that have a unit/flats label
    ["entrance" = null]
    ["addr_housenumber" = null]
    ["addr_housename" = null] {
      ["addr_unit" != null],
      ["addr_flats" != null] {
        marker-fill: @entrance-normal;
        marker-file: url('symbols/entrances/square.svg');
        marker-width: 2.0;
        marker-height: 2.0;
      }
    }

    ["addr_unit" != null] {
      unit/text-name: "[addr_unit]";
      unit/text-face-name: @oblique-fonts;
      unit/text-fill: @address-color;
      unit/text-halo-radius: @standard-halo-radius;
      unit/text-halo-fill: @standard-halo-fill;
      unit/text-size: 9;
      unit/text-horizontal-alignment: right;
      unit/text-dx: 2;
      ["addr_flats" != null] {
        ["entrance" = null]
        ["addr_housename" != null] {
          unit/text-face-name: @book-fonts;
          unit/text-name: '<Format face-name="Noto Sans Italic" size="9">[addr_unit]</Format>[addr_flats_sep]';
          [zoom >= 20] {
            unit/text-name: '<Format face-name="Noto Sans Italic" size="10">[addr_unit]</Format>[addr_flats_sep]';
          }
        }
      }
      ["entrance" != null] {
        unit/text-dx: 4;
        [zoom >= 20] {
          unit/text-dx: 5;
        }
      }
      unit/text-dy: -2;
      unit/text-vertical-alignment: top;
      [zoom >= 20] {
        unit/text-size: 10;
      }
    }
    ["addr_flats" != null] {
      ["entrance" != null],
      ["addr_housename" = null] {
        flats/text-name: "[addr_flats]";
        flats/text-face-name: @book-fonts;
        flats/text-fill: @address-color;
        flats/text-halo-radius: @standard-halo-radius;
        flats/text-halo-fill: @standard-halo-fill;
        flats/text-size: 9;
        flats/text-horizontal-alignment: right;
        flats/text-dx: 2;
        ["entrance" != null] {
          flats/text-dx: 4;
          [zoom >= 20] {
            flats/text-dx: 5;
          }
        }
        flats/text-dy: 1;
        flats/text-vertical-alignment: bottom;
        [zoom >= 20] {
          flats/text-size: 10;
        }
      }
      ["addr_unit" = null] {
        ["entrance" = null]
        ["addr_housename" != null] {
          flats/text-name: "[addr_flats]";
          flats/text-face-name: @book-fonts;
          flats/text-fill: @address-color;
          flats/text-halo-radius: @standard-halo-radius;
          flats/text-halo-fill: @standard-halo-fill;
          flats/text-size: 9;
          flats/text-horizontal-alignment: right;
          flats/text-dx: 2;
          flats/text-dy: -2;
          flats/text-vertical-alignment: top;
          [zoom >= 20] {
            flats/text-size: 10;
          }
        }
      }
    }

    ["entrance" != null] {
      ["ref" != null] {
        ref/text-anchor-cond: "'!addr_'+[osm_id]";
        ref/text-anchor-set: "'addr_ref_'+[osm_id]";
        ref/text-name: "[ref]";
        ref/text-min-distance: 1;
        ref/text-face-name: @book-fonts;
        ref/text-fill: @address-color;
        ref/text-halo-radius: @standard-halo-radius;
        ref/text-halo-fill: @standard-halo-fill;
        ref/text-size: 9;
        ref/text-horizontal-alignment: left;
        ref/text-vertical-alignment: middle;
        ref/text-dx: -5;
        [zoom >= 20] {
          ref/text-size: 10;
        }

        ref2/text-anchor-cond: "'!addr_ref_'+[osm_id]";
        ref2/text-anchor-set: "'addr_ref_'+[osm_id]";
        ref2/text-name: "[ref]";
        ref2/text-min-distance: 1;
        ref2/text-face-name: @book-fonts;
        ref2/text-fill: @address-color;
        ref2/text-halo-radius: @standard-halo-radius;
        ref2/text-halo-fill: @standard-halo-fill;
        ref2/text-size: 9;
        ref2/text-horizontal-alignment: left;
        ref2/text-vertical-alignment: bottom;
        ref2/text-dx: -5;
        ref2/text-dy: 1;
        [zoom >= 20] {
          ref2/text-size: 10;
        }
      }
    }
    ["entrance" = null]
    ["addr_housename" != null] {
      hnm/text-anchor-cond: "'!addr_'+[osm_id]";
      hnm/text-anchor-set: "'addr_housename_'+[osm_id]";
      hnm/text-name: "[addr_housename]";
      hnm/text-face-name: @book-fonts;
      hnm/text-fill: @address-color;
      hnm/text-halo-radius: @standard-halo-radius;
      hnm/text-halo-fill: @standard-halo-fill;
      hnm/text-size: 10;
      hnm/text-wrap-width: 20; // 2.0 em
      hnm/text-line-spacing: -1.5; // -0.15 em
      [zoom >= 20] {
        hnm/text-size: 11;
        hnm/text-wrap-width: 22; // 2.0 em
        hnm/text-line-spacing: -1.65; // -0.15 em
      }

      hnm2/text-anchor-cond: "'!addr_housename_'+[osm_id]";
      hnm2/text-anchor-set: "'addr_housename_'+[osm_id]";
      hnm2/text-name: "[addr_housename]";
      hnm2/text-face-name: @book-fonts;
      hnm2/text-fill: @address-color;
      hnm2/text-halo-radius: @standard-halo-radius;
      hnm2/text-halo-fill: @standard-halo-fill;
      hnm2/text-size: 10;
      hnm2/text-wrap-width: 20; // 2.0 em
      hnm2/text-line-spacing: -1.5; // -0.15 em
      hnm2/text-vertical-alignment: bottom;
      hnm2/text-dy: 5;
      [zoom >= 20] {
        hnm2/text-size: 11;
        hnm2/text-wrap-width: 22; // 2.0 em
        hnm2/text-line-spacing: -1.65; // -0.15 em
      }
    }
  }
}

/* Building names (rendered differently from addresses because they are
no official postal addresses) */

#building-text {
  [zoom >= 14][way_pixels > 3000],
  [zoom >= 17] {
    text-name: "[name]";
    text-placement: interior;
    text-min-distance: 1;
    text-face-name: @book-fonts;
    [font = 'jp'] { text-face-name: @book-fonts-jp; }
    [font = 'tc'] { text-face-name: @book-fonts-tc; }
    [font = 'kr'] { text-face-name: @book-fonts-kr; }
    [font = 'ur'] { text-face-name: @book-fonts-ur; }
    text-fill: #444;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-size: 11;
    text-wrap-width: 22; // 2.0 em
    text-line-spacing: -1.65; // -0.15 em
  }
}
