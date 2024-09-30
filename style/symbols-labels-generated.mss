/* This is generated code, do not change this file manually.               */
/*                                                                         */
/* To change these definitions, alter symbols-labels.yaml and run:         */
/*                                                                         */
/*   ./scripts/generate_symbols_labels.py                                  */
/*                                                                         */
/* Content subject to AGPL v3.0/CC BY-SA 4.0 - see LICENSE.txt for details */
/*                                                                         */

#amenity-points {
  [feature = 'amenity_shelter'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_shelter.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_shelter.svg');
      symbolnameonly/shield-placement: interior;
      symbolnameonly/shield-clip: false;
      symbolnameonly/shield-name: '[name]';
      symbolnameonly/shield-size: @standard-font-size;
      symbolnameonly/shield-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/shield-face-name: @book-fonts-bg; }
      symbolnameonly/shield-halo-radius: @standard-halo-radius;
      symbolnameonly/shield-halo-fill: @standard-halo-fill;
      symbolnameonly/shield-wrap-width: 100;
      symbolnameonly/shield-line-spacing: @standard-line-spacing-size;
      symbolnameonly/shield-fill: #734a08;
      symbolnameonly/shield-text-dy: 11;
      symbolnameonly/shield-unlock-image: true;
      symbolnameonly/shield-file: url('symbols/colored/amenity_shelter.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_shelter.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #734a08;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      symbolnameonly/text-anchor-cond: '[osm_id]';
      symbolnameonly/text-placement: interior;
      symbolnameonly/text-name: '[name]';
      symbolnameonly/text-size: 10;
      symbolnameonly/text-wrap-width: @standard-wrap-width;
      symbolnameonly/text-line-spacing: @standard-line-spacing-size;
      symbolnameonly/text-fill: #734a08;
      symbolnameonly/text-dy: 11;
      symbolnameonly/text-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/text-face-name: @book-fonts-bg; }
      symbolnameonly/text-halo-radius: @standard-halo-radius;
      symbolnameonly/text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-anchor-cond: "'!'+[osm_id]";
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #734a08;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    // modification amenity_shelter+public_transport based on style standard-symbol-attribute-variant
    ["shelter_type" = 'public_transport'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_shelter_public_transport.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_shelter_public_transport.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/amenity_shelter_public_transport.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'tourism_alpine_hut'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_alpine_hut.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_alpine_hut.svg');
      symbolnameonly/shield-placement: interior;
      symbolnameonly/shield-clip: false;
      symbolnameonly/shield-name: '[name]';
      symbolnameonly/shield-size: @standard-font-size;
      symbolnameonly/shield-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/shield-face-name: @book-fonts-bg; }
      symbolnameonly/shield-halo-radius: @standard-halo-radius;
      symbolnameonly/shield-halo-fill: @standard-halo-fill;
      symbolnameonly/shield-wrap-width: 100;
      symbolnameonly/shield-line-spacing: @standard-line-spacing-size;
      symbolnameonly/shield-fill: #6942b0;
      symbolnameonly/shield-text-dy: 11;
      symbolnameonly/shield-unlock-image: true;
      symbolnameonly/shield-file: url('symbols/colored/tourism_alpine_hut.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_alpine_hut.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6942b0;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      symbolnameonly/text-anchor-cond: '[osm_id]';
      symbolnameonly/text-placement: interior;
      symbolnameonly/text-name: '[name]';
      symbolnameonly/text-size: 10;
      symbolnameonly/text-wrap-width: @standard-wrap-width;
      symbolnameonly/text-line-spacing: @standard-line-spacing-size;
      symbolnameonly/text-fill: #6942b0;
      symbolnameonly/text-dy: 11;
      symbolnameonly/text-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/text-face-name: @book-fonts-bg; }
      symbolnameonly/text-halo-radius: @standard-halo-radius;
      symbolnameonly/text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-anchor-cond: "'!'+[osm_id]";
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6942b0;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
  }
  [feature = 'tourism_wilderness_hut'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_wilderness_hut.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_wilderness_hut.svg');
      symbolnameonly/shield-placement: interior;
      symbolnameonly/shield-clip: false;
      symbolnameonly/shield-name: '[name]';
      symbolnameonly/shield-size: @standard-font-size;
      symbolnameonly/shield-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/shield-face-name: @book-fonts-bg; }
      symbolnameonly/shield-halo-radius: @standard-halo-radius;
      symbolnameonly/shield-halo-fill: @standard-halo-fill;
      symbolnameonly/shield-wrap-width: 100;
      symbolnameonly/shield-line-spacing: @standard-line-spacing-size;
      symbolnameonly/shield-fill: #6942b0;
      symbolnameonly/shield-text-dy: 11;
      symbolnameonly/shield-unlock-image: true;
      symbolnameonly/shield-file: url('symbols/colored/tourism_wilderness_hut.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_wilderness_hut.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6942b0;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      symbolnameonly/text-anchor-cond: '[osm_id]';
      symbolnameonly/text-placement: interior;
      symbolnameonly/text-name: '[name]';
      symbolnameonly/text-size: 10;
      symbolnameonly/text-wrap-width: @standard-wrap-width;
      symbolnameonly/text-line-spacing: @standard-line-spacing-size;
      symbolnameonly/text-fill: #6942b0;
      symbolnameonly/text-dy: 11;
      symbolnameonly/text-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/text-face-name: @book-fonts-bg; }
      symbolnameonly/text-halo-radius: @standard-halo-radius;
      symbolnameonly/text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-anchor-cond: "'!'+[osm_id]";
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6942b0;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
  }
  [feature = 'tourism_charlet'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_charlet.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_charlet.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_charlet.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_hostel'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_hostel.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_hostel.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_hostel.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_hotel'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_hotel.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_hotel.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_hotel.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_motel'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_motel.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_motel.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_motel.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_guest_house'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_guest_house.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_guest_house.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_guest_house.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_apartment'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_apartment.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_apartment.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_apartment.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_information'][variant = null] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_information.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #4863A0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_information.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_information.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4863A0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4863A0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4863A0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4863A0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_information'][variant = 'information_audioguide'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/tourism_information_information_audioguide.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #000000;
        shield-text-dy: 11;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/tourism_information_information_audioguide.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/tourism_information_information_audioguide.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-dy: 11;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'tourism_information'][variant = 'information_board'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/tourism_information_information_board.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #000000;
        shield-text-dy: 10;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/tourism_information_information_board.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/tourism_information_information_board.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-dy: 10;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'tourism_information'][variant = 'information_sign'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/tourism_information_information_sign.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #000000;
        shield-text-dy: 10;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/tourism_information_information_sign.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/tourism_information_information_sign.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-dy: 10;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'tourism_information'][variant = 'information_guidepost'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/tourism_information_information_guidepost.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #000000;
        shield-text-dy: 11;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/tourism_information_information_guidepost.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/tourism_information_information_guidepost.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-dy: 11;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'tourism_information'][variant = 'information_map'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/tourism_information_information_map.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #000000;
        shield-text-dy: 10;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/tourism_information_information_map.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/tourism_information_information_map.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-dy: 10;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'tourism_information'][variant = 'information_terminal'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/tourism_information_information_terminal.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #000000;
        shield-text-dy: 11;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/tourism_information_information_terminal.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/tourism_information_information_terminal.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-dy: 11;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'tourism_information'][variant = 'information_visitor_centre'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/tourism_information_information_visitor_centre.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #734a08;
        shield-text-dy: 11;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/tourism_information_information_visitor_centre.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/tourism_information_information_visitor_centre.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #734a08;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #734a08;
        text-dy: 11;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #734a08;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #734a08;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'amenity_atm'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_atm.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[operator]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_atm.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_atm.svg');
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[operator]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [int_access = 'restricted'] {
        text-opacity: @private-opacity;
        text-halo-radius: 0;
      }
    }
  }
  [feature = 'amenity_bank'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_bank.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 9;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_bank.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_bank.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 9;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_bar'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_bar.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_bar.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_bar.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_bbq'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_bbq.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_bbq.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_bbq.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_cafe'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_cafe.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_cafe.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_cafe.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_ice_cream'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_ice_cream.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_ice_cream.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_ice_cream.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_nightclub'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_nightclub.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_nightclub.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_nightclub.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_pub'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_pub.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_pub.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_pub.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_biergarten'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_biergarten.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_biergarten.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_biergarten.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_restaurant'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_restaurant.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_restaurant.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_restaurant.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_food_court'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_food_court.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_food_court.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_food_court.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_fast_food'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_fast_food.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_fast_food.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_fast_food.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_fire_station'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_fire_station.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_fire_station.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_fire_station.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_cinema'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_cinema.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_cinema.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_cinema.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_museum'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_museum.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_museum.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_museum.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_library'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_library.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_library.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_library.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_courthouse'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_courthouse.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_courthouse.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_courthouse.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_townhall'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_townhall.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_townhall.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_townhall.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_police'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_police.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_police.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_police.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_prison'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_prison.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_prison.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_prison.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_post_box'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_post_box.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_post_box.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_post_box.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_post_office'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_post_office.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_post_office.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_post_office.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_theatre'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_theatre.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_theatre.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_theatre.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_arts_centre'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_arts_centre.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_arts_centre.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_arts_centre.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_community_centre'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_community_centre.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_community_centre.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_community_centre.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_social_facility'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_social_facility.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_social_facility.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_social_facility.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_shower'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_shower.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_shower.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_shower.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_public_bath'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_public_bath.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_public_bath.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_public_bath.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_toilets'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_toilets.svg');
    [int_access = 'restricted'] {
      marker-opacity: @private-opacity;
    }
  }
  [feature = 'amenity_parking'][variant = null] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_parking.svg');
    [int_access = 'restricted'] {
      marker-opacity: @private-opacity;
    }
    // modification amenity_parking+large based on style symbol-only-zoom-variant
    [zoom >= 18] {
      marker-file: url('symbols/colored/amenity_parking_large.svg');
    }
  }
  [feature = 'amenity_parking'][variant = 'street_side'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_parking_street_side.svg');
      [int_access = 'restricted'] {
        marker-opacity: @private-opacity;
      }
  }
  [feature = 'amenity_parking_entrance/multi-storey'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_parking_entrance_multi-storey.svg');
  }
  [feature = 'amenity_parking_entrance/underground'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_parking_entrance_underground.svg');
  }
  [feature = 'amenity_motorcycle_parking'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_motorcycle_parking.svg');
    [int_access = 'restricted'] {
      marker-opacity: @private-opacity;
    }
    // modification amenity_motorcycle_parking+large based on style symbol-only-zoom-variant
    [zoom >= 17] {
      marker-file: url('symbols/colored/amenity_motorcycle_parking_large.svg');
    }
  }
  [feature = 'amenity_bicycle_parking'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_bicycle_parking.svg');
    [int_access = 'restricted'] {
      marker-opacity: @private-opacity;
    }
    // modification amenity_bicycle_parking+large based on style symbol-only-zoom-variant
    [zoom >= 17] {
      marker-file: url('symbols/colored/amenity_bicycle_parking_large.svg');
    }
  }
  [feature = 'amenity_bicycle_rental'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_bicycle_rental.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_bicycle_rental.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_bicycle_rental.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'highway_bus_stop'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/highway_bus_stop.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 9;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/highway_bus_stop.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/highway_bus_stop.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 9;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification highway_bus_stop+high_zoom based on style standard-symbol-zoom-variant
    [zoom >= 17] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/highway_bus_stop_high_zoom.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/highway_bus_stop_high_zoom.svg');
        symbolonly/marker-file: url('symbols/colored/highway_bus_stop_high_zoom.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'amenity_bus_station'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_bus_station.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_bus_station.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_bus_station.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_ferry_terminal'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_ferry_terminal.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_ferry_terminal.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_ferry_terminal.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_car_rental'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_car_rental.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_car_rental.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_car_rental.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_car_wash'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_car_wash.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_car_wash.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_car_wash.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_charging_station'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_charging_station.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_charging_station.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_charging_station.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_fuel'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_fuel.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_fuel.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_fuel.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_taxi'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_taxi.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_taxi.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_taxi.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'emergency_phone'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/emergency_phone.svg');
  }
  [feature = 'amenity_phone'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_phone.svg');
  }
  [feature = 'highway_elevator'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/highway_elevator.svg');
  }
  [feature = 'highway_traffic_signals'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/highway_traffic_signals.svg');
    // modification highway_traffic_signals+high_zoom based on style symbol-only-zoom-variant
    [zoom >= 19] {
      marker-file: url('symbols/colored/highway_traffic_signals_high_zoom.svg');
    }
  }
  [feature = 'railway_crossing'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/railway_crossing.svg');
    // modification railway_crossing+high_zoom based on style symbol-only-zoom-variant
    [zoom >= 16] {
      marker-file: url('symbols/colored/railway_crossing_high_zoom.svg');
    }
  }
  [feature = 'railway_level_crossing'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/railway_level_crossing.svg');
    // modification railway_level_crossing+high_zoom based on style symbol-only-zoom-variant
    [zoom >= 16] {
      marker-file: url('symbols/colored/railway_level_crossing_high_zoom.svg');
    }
  }
  [feature = 'amenity_bench'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_bench.svg');
    // modification amenity_bench+medium based on style symbol-only-zoom-variant
    [zoom >= 19] {
      marker-file: url('symbols/colored/amenity_bench_medium.svg');
    }
    // modification amenity_bench+medium+backrest based on style symbol-only-zoom-attribute-variant
    [zoom >= 19][backrest = 'yes'] {
      marker-file: url('symbols/colored/amenity_bench_medium+backrest.svg');
    }
    // modification amenity_bench+large+unknown based on style symbol-only-zoom-variant
    [zoom >= 20] {
      marker-file: url('symbols/colored/amenity_bench_large+unknown.svg');
    }
    // modification amenity_bench+large+backrest based on style symbol-only-zoom-attribute-variant
    [zoom >= 20][int_bench_type = 'unknown+backrest'] {
      marker-file: url('symbols/colored/amenity_bench_large+backrest.svg');
    }
    // modification amenity_bench+large+nobackrest based on style symbol-only-zoom-attribute-variant
    [zoom >= 20][int_bench_type = 'unknown+nobackrest'] {
      marker-file: url('symbols/colored/amenity_bench_large+nobackrest.svg');
    }
    // modification amenity_bench+large+light based on style symbol-only-zoom-attribute-variant
    [zoom >= 20][int_bench_type = 'light+unknown'] {
      marker-file: url('symbols/colored/amenity_bench_large+light.svg');
    }
    // modification amenity_bench+large+heavy based on style symbol-only-zoom-attribute-variant
    [zoom >= 20][int_bench_type = 'heavy+unknown'] {
      marker-file: url('symbols/colored/amenity_bench_large+heavy.svg');
    }
    // modification amenity_bench+large+light+backrest based on style symbol-only-zoom-attribute-variant
    [zoom >= 20][int_bench_type = 'light+backrest'] {
      marker-file: url('symbols/colored/amenity_bench_large+light+backrest.svg');
    }
    // modification amenity_bench+large+light+nobackrest based on style symbol-only-zoom-attribute-variant
    [zoom >= 20][int_bench_type = 'light+nobackrest'] {
      marker-file: url('symbols/colored/amenity_bench_large+light+nobackrest.svg');
    }
    // modification amenity_bench+large+heavy+backrest based on style symbol-only-zoom-attribute-variant
    [zoom >= 20][int_bench_type = 'heavy+backrest'] {
      marker-file: url('symbols/colored/amenity_bench_large+heavy+backrest.svg');
    }
    // modification amenity_bench+large+heavy+nobackrest based on style symbol-only-zoom-attribute-variant
    [zoom >= 20][int_bench_type = 'heavy+nobackrest'] {
      marker-file: url('symbols/colored/amenity_bench_large+heavy+nobackrest.svg');
    }
  }
  [feature = 'amenity_lounger'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_lounger.svg');
    // modification amenity_lounger+medium based on style symbol-only-zoom-variant
    [zoom >= 19] {
      marker-file: url('symbols/colored/amenity_lounger_medium.svg');
    }
    // modification amenity_lounger+large based on style symbol-only-zoom-variant
    [zoom >= 20] {
      marker-file: url('symbols/colored/amenity_lounger_large.svg');
    }
  }
  [feature = 'amenity_waste_basket'][variant = null] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_waste_basket.svg');
  }
  [feature = 'amenity_waste_basket'][variant = 'recycling'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_waste_basket_recycling.svg');
  }
  [feature = 'amenity_waste_disposal'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/amenity_waste_disposal.svg');
    [int_access = 'restricted'] {
      marker-opacity: @private-opacity;
    }
  }
  [feature = 'amenity_recycling'][variant = null] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_recycling.svg');
      [int_access = 'restricted'] {
        marker-opacity: @private-opacity;
      }
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_recycling.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_recycling.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
      [int_access = 'restricted'] {
        shield-opacity: @private-opacity;
        shield-text-opacity: @private-opacity;
        shield-halo-radius: 0;
        symbolonly/marker-opacity: @private-opacity;
        textonly/text-opacity: @private-opacity;
        textonly/text-halo-radius: 0;
      }
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
      [int_access = 'restricted'] {
        text-opacity: @private-opacity;
        text-halo-radius: 0;
        textonly/text-opacity: @private-opacity;
        textonly/text-halo-radius: 0;
      }
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      [int_access = 'restricted'] {
        text-opacity: @private-opacity;
        text-halo-radius: 0;
      }
    }
  }
  [feature = 'amenity_recycling'][variant = 'centre'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/amenity_recycling_centre.svg');
        [int_access = 'restricted'] {
          marker-opacity: @private-opacity;
        }
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #734a08;
        shield-text-dy: 13;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/amenity_recycling_centre.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/amenity_recycling_centre.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #734a08;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
        [int_access = 'restricted'] {
          shield-opacity: @private-opacity;
          shield-text-opacity: @private-opacity;
          shield-halo-radius: 0;
          symbolonly/marker-opacity: @private-opacity;
          textonly/text-opacity: @private-opacity;
          textonly/text-halo-radius: 0;
        }
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #734a08;
        text-dy: 13;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #734a08;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
        [int_access = 'restricted'] {
          text-opacity: @private-opacity;
          text-halo-radius: 0;
          textonly/text-opacity: @private-opacity;
          textonly/text-halo-radius: 0;
        }
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #734a08;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        [int_access = 'restricted'] {
          text-opacity: @private-opacity;
          text-halo-radius: 0;
        }
      }
  }
  [feature = 'amenity_recycling'][variant = 'container'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_recycling_container.svg');
      [int_access = 'restricted'] {
        marker-opacity: @private-opacity;
      }
  }
  [feature = 'barrier_gate'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_gate.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_gate.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_gate+small+noaccess based on style symbol-only-halo-attribute-variant
    [int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_gate_small+noaccess.svg');
      marker-file: url('symbols/colored/barrier_gate_small+noaccess.svg');
    }
    // modification barrier_gate+large based on style symbol-only-halo-zoom-variant
    [zoom >= 20] {
      halo/marker-file: url('symbols/colored/barrier_gate_large.svg');
      marker-file: url('symbols/colored/barrier_gate_large.svg');
    }
    // modification barrier_gate+large+noaccess based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 20][int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_gate_large+noaccess.svg');
      marker-file: url('symbols/colored/barrier_gate_large+noaccess.svg');
    }
    // modification barrier_gate+sliding based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 18][int_gate_type = 'sliding'] {
      halo/marker-file: url('symbols/colored/barrier_gate_sliding.svg');
      marker-file: url('symbols/colored/barrier_gate_sliding.svg');
    }
    // modification barrier_gate+sliding+noaccess based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 18][int_gate_type = 'sliding'][int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_gate_sliding+noaccess.svg');
      marker-file: url('symbols/colored/barrier_gate_sliding+noaccess.svg');
    }
    // modification barrier_gate+sliding+large based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 20][int_gate_type = 'sliding'] {
      halo/marker-file: url('symbols/colored/barrier_gate_sliding+large.svg');
      marker-file: url('symbols/colored/barrier_gate_sliding+large.svg');
    }
    // modification barrier_gate+sliding+large+noaccess based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 20][int_gate_type = 'sliding'][int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_gate_sliding+large+noaccess.svg');
      marker-file: url('symbols/colored/barrier_gate_sliding+large+noaccess.svg');
    }
  }
  [feature = 'barrier_lift_gate'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_lift_gate.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_lift_gate.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_lift_gate+small+noaccess based on style symbol-only-halo-attribute-variant
    [int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_lift_gate_small+noaccess.svg');
      marker-file: url('symbols/colored/barrier_lift_gate_small+noaccess.svg');
    }
    // modification barrier_lift_gate+large based on style symbol-only-halo-zoom-variant
    [zoom >= 19] {
      halo/marker-file: url('symbols/colored/barrier_lift_gate_large.svg');
      marker-file: url('symbols/colored/barrier_lift_gate_large.svg');
    }
    // modification barrier_lift_gate+large+noaccess based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 19][int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_lift_gate_large+noaccess.svg');
      marker-file: url('symbols/colored/barrier_lift_gate_large+noaccess.svg');
    }
  }
  [feature = 'barrier_swing_gate'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_swing_gate.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_swing_gate.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_swing_gate+small+noaccess based on style symbol-only-halo-attribute-variant
    [int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_swing_gate_small+noaccess.svg');
      marker-file: url('symbols/colored/barrier_swing_gate_small+noaccess.svg');
    }
    // modification barrier_swing_gate+large based on style symbol-only-halo-zoom-variant
    [zoom >= 19] {
      halo/marker-file: url('symbols/colored/barrier_swing_gate_large.svg');
      marker-file: url('symbols/colored/barrier_swing_gate_large.svg');
    }
    // modification barrier_swing_gate+large+noaccess based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 19][int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_swing_gate_large+noaccess.svg');
      marker-file: url('symbols/colored/barrier_swing_gate_large+noaccess.svg');
    }
  }
  [feature = 'barrier_cycle_barrier'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_cycle_barrier.svg');
    halo/marker-transform: 'rotate([int_barrier_orientation])';
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_cycle_barrier.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-transform: 'rotate([int_barrier_orientation])';
  }
  [feature = 'barrier_stile'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_stile.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_stile.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_stile+large based on style symbol-only-halo-zoom-variant
    [zoom >= 19] {
      halo/marker-file: url('symbols/colored/barrier_stile_large.svg');
      marker-file: url('symbols/colored/barrier_stile_large.svg');
    }
    // modification barrier_stile+large+squeezer based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 19][stile = 'squeezer'] {
      halo/marker-file: url('symbols/colored/barrier_stile_large+squeezer.svg');
      marker-file: url('symbols/colored/barrier_stile_large+squeezer.svg');
    }
  }
  [feature = 'barrier_cattle_grid'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_cattle_grid.svg');
    halo/marker-transform: 'rotate([int_barrier_orientation])';
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_cattle_grid.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-transform: 'rotate([int_barrier_orientation])';
    // modification barrier_cattle_grid+large based on style symbol-only-halo-zoom-variant
    [zoom >= 19] {
      halo/marker-file: url('symbols/colored/barrier_cattle_grid_large.svg');
      marker-file: url('symbols/colored/barrier_cattle_grid_large.svg');
    }
  }
  [feature = 'barrier_kissing_gate'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_kissing_gate.svg');
    halo/marker-transform: 'rotate([int_barrier_orientation])';
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_kissing_gate.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-transform: 'rotate([int_barrier_orientation])';
    // modification barrier_kissing_gate+large based on style symbol-only-halo-zoom-variant
    [zoom >= 19] {
      halo/marker-file: url('symbols/colored/barrier_kissing_gate_large.svg');
      marker-file: url('symbols/colored/barrier_kissing_gate_large.svg');
    }
    // modification barrier_kissing_gate+large+triangular based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 19][kissing_gate = 'triangular_profile'] {
      halo/marker-file: url('symbols/colored/barrier_kissing_gate_large+triangular.svg');
      marker-file: url('symbols/colored/barrier_kissing_gate_large+triangular.svg');
    }
    // modification barrier_kissing_gate+large+square based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 19][kissing_gate = 'square_profile'] {
      halo/marker-file: url('symbols/colored/barrier_kissing_gate_large+square.svg');
      marker-file: url('symbols/colored/barrier_kissing_gate_large+square.svg');
    }
  }
  [feature = 'barrier_chain'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_chain.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_chain.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_chain+large based on style symbol-only-halo-zoom-variant
    [zoom >= 19] {
      halo/marker-file: url('symbols/colored/barrier_chain_large.svg');
      marker-file: url('symbols/colored/barrier_chain_large.svg');
    }
  }
  [feature = 'barrier_height_restrictor'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      halo/marker-anchor-set: "'halo_'+[osm_id]";
      halo/marker-line-color: white;
      halo/marker-line-width: 1.5;
      halo/marker-placement: interior;
      halo/marker-clip: false;
      halo/marker-file: url('symbols/colored/barrier_height_restrictor.svg');
      marker-anchor-cond: "'halo_'+[osm_id]";
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/barrier_height_restrictor.svg');
      marker-allow-overlap: true;
      marker-ignore-placement: true;
    }
    [vis_type = 'symbol-label'] {
      halo/marker-anchor-set: "'halo_'+[osm_id]";
      halo/marker-line-color: white;
      halo/marker-line-width: 1.5;
      halo/marker-placement: interior;
      halo/marker-clip: false;
      halo/marker-file: url('symbols/colored/barrier_height_restrictor.svg');
      marker-anchor-cond: "'halo_'+[osm_id]";
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/barrier_height_restrictor.svg');
      marker-allow-overlap: true;
      marker-ignore-placement: true;
    
      sidelabel/text-anchor-cond: '[osm_id]';
      sidelabel/text-allow-overlap-anchor: "'halo_'+[osm_id]";
      sidelabel/text-placement: interior;
      sidelabel/text-name: '[int_maxheight]';
      sidelabel/text-size: 8;
      sidelabel/text-wrap-width: @standard-wrap-width;
      sidelabel/text-line-spacing: @standard-line-spacing-size;
      sidelabel/text-fill: #000000;
      sidelabel/text-dx: 8;
      sidelabel/text-horizontal-alignment: right;
      sidelabel/text-face-name: @book-fonts;
      sidelabel/text-halo-radius: @standard-halo-radius * 1.0;
      sidelabel/text-halo-fill: @standard-halo-fill;
    }
    [vis_type = 'label-for-symbol'] {
      sidelabel/text-anchor-cond: '[osm_id]';
      sidelabel/text-allow-overlap-anchor: "'halo_'+[osm_id]";
      sidelabel/text-placement: interior;
      sidelabel/text-name: '[int_maxheight]';
      sidelabel/text-size: 8;
      sidelabel/text-wrap-width: @standard-wrap-width;
      sidelabel/text-line-spacing: @standard-line-spacing-size;
      sidelabel/text-fill: #000000;
      sidelabel/text-dx: 8;
      sidelabel/text-horizontal-alignment: right;
      sidelabel/text-face-name: @book-fonts;
      sidelabel/text-halo-radius: @standard-halo-radius * 1.0;
      sidelabel/text-halo-fill: @standard-halo-fill;
    }
    // modification barrier_height_restrictor+large based on style symbol-only-halo-zoom-variant
    [zoom >= 20] {
      halo/marker-file: url('symbols/colored/barrier_height_restrictor_large.svg');
      marker-file: url('symbols/colored/barrier_height_restrictor_large.svg');
    }
  }
  [feature = 'barrier_sliding_gate'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_sliding_gate.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_sliding_gate.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_sliding_gate+small+noaccess based on style symbol-only-halo-attribute-variant
    [int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_sliding_gate_small+noaccess.svg');
      marker-file: url('symbols/colored/barrier_sliding_gate_small+noaccess.svg');
    }
    // modification barrier_sliding_gate+large based on style symbol-only-halo-zoom-variant
    [zoom >= 18] {
      halo/marker-file: url('symbols/colored/barrier_sliding_gate_large.svg');
      marker-file: url('symbols/colored/barrier_sliding_gate_large.svg');
    }
    // modification barrier_sliding_gate+large+noaccess based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 18][int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_sliding_gate_large+noaccess.svg');
      marker-file: url('symbols/colored/barrier_sliding_gate_large+noaccess.svg');
    }
    // modification barrier_sliding_gate+xlarge based on style symbol-only-halo-zoom-variant
    [zoom >= 20] {
      halo/marker-file: url('symbols/colored/barrier_sliding_gate_xlarge.svg');
      marker-file: url('symbols/colored/barrier_sliding_gate_xlarge.svg');
    }
    // modification barrier_sliding_gate+xlarge+noaccess based on style symbol-only-halo-zoom-attribute-variant
    [zoom >= 20][int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_sliding_gate_xlarge+noaccess.svg');
      marker-file: url('symbols/colored/barrier_sliding_gate_xlarge+noaccess.svg');
    }
  }
  [feature = 'barrier_turnstile'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_turnstile.svg');
    halo/marker-transform: 'rotate([int_barrier_orientation])';
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_turnstile.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-transform: 'rotate([int_barrier_orientation])';
    // modification barrier_turnstile+large based on style symbol-only-halo-zoom-variant
    [zoom >= 18] {
      halo/marker-file: url('symbols/colored/barrier_turnstile_large.svg');
      marker-file: url('symbols/colored/barrier_turnstile_large.svg');
    }
  }
  [feature = 'barrier_full-height_turnstile'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_full-height_turnstile.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_full-height_turnstile.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_full-height_turnstile+large based on style symbol-only-halo-zoom-variant
    [zoom >= 18] {
      halo/marker-file: url('symbols/colored/barrier_full-height_turnstile_large.svg');
      marker-file: url('symbols/colored/barrier_full-height_turnstile_large.svg');
    }
    // modification barrier_full-height_turnstile+xlarge based on style symbol-only-halo-zoom-variant
    [zoom >= 20] {
      halo/marker-file: url('symbols/colored/barrier_full-height_turnstile_xlarge.svg');
      marker-file: url('symbols/colored/barrier_full-height_turnstile_xlarge.svg');
    }
  }
  [feature = 'barrier_wicket_gate'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_wicket_gate.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_wicket_gate.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_wicket_gate+noaccess based on style symbol-only-halo-attribute-variant
    [int_access = 'restricted'] {
      halo/marker-file: url('symbols/colored/barrier_wicket_gate_noaccess.svg');
      marker-file: url('symbols/colored/barrier_wicket_gate_noaccess.svg');
    }
  }
  [feature = 'barrier_hampshire_gate'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_hampshire_gate.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_hampshire_gate.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_hampshire_gate+large based on style symbol-only-halo-zoom-variant
    [zoom >= 19] {
      halo/marker-file: url('symbols/colored/barrier_hampshire_gate_large.svg');
      marker-file: url('symbols/colored/barrier_hampshire_gate_large.svg');
    }
  }
  [feature = 'barrier_block'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_block.svg');
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_block.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification barrier_block+medium based on style symbol-only-halo-zoom-variant
    [zoom >= 18] {
      halo/marker-file: url('symbols/colored/barrier_block_medium.svg');
      marker-file: url('symbols/colored/barrier_block_medium.svg');
    }
    // modification barrier_block+large based on style symbol-only-halo-zoom-variant
    [zoom >= 20] {
      halo/marker-file: url('symbols/colored/barrier_block_large.svg');
      marker-file: url('symbols/colored/barrier_block_large.svg');
    }
  }
  [feature = 'barrier_log'] {
    halo/marker-anchor-set: "'halo_'+[osm_id]";
    halo/marker-line-color: white;
    halo/marker-line-width: 1.5;
    halo/marker-placement: interior;
    halo/marker-clip: false;
    halo/marker-file: url('symbols/colored/barrier_log.svg');
    halo/marker-transform: 'rotate([int_barrier_orientation])';
    marker-anchor-cond: "'halo_'+[osm_id]";
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/barrier_log.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-transform: 'rotate([int_barrier_orientation])';
    // modification barrier_log+medium based on style symbol-only-halo-zoom-variant
    [zoom >= 18] {
      halo/marker-file: url('symbols/colored/barrier_log_medium.svg');
      marker-file: url('symbols/colored/barrier_log_medium.svg');
    }
    // modification barrier_log+large based on style symbol-only-halo-zoom-variant
    [zoom >= 20] {
      halo/marker-file: url('symbols/colored/barrier_log_large.svg');
      marker-file: url('symbols/colored/barrier_log_large.svg');
    }
  }
  [feature = 'barrier_bollard'] {
    marker-anchor-set: '[osm_id]';
    marker-width: 3;
    marker-line-width: 0;
    marker-fill: #7d7c7c;
    marker-placement: interior;
    // modification barrier_bollard+high_zoom based on style dot-only-zoom-size-variant
    [zoom >= 18] {
      marker-width: 4;
    }
  }
  [feature = 'man_made_planter'] {
    marker-anchor-set: '[osm_id]';
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('symbols/colored/man_made_planter.svg');
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    // modification man_made_planter+medium based on style symbol-only-zoom-variant
    [zoom >= 19] {
      marker-file: url('symbols/colored/man_made_planter_medium.svg');
    }
    // modification man_made_planter+large based on style symbol-only-zoom-variant
    [zoom >= 20] {
      marker-file: url('symbols/colored/man_made_planter_large.svg');
    }
  }
  [feature = 'tourism_viewpoint'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'],
    [vis_type = 'symbol-label'] {
      footprint/marker-allow-overlap-anchor: "'viewpoint,peak'";
      footprint/marker-anchor-set: "'viewpoint,viewpoint_'+[osm_id]";
      footprint/marker-width: [int_width_viewpoint];
      footprint/marker-height: [int_height_viewpoint];
      footprint/marker-line-width: 0;
      footprint/marker-fill: "#ffffff";
      footprint/marker-opacity: 0.0;
      footprint/marker-placement: interior;
      footprint/marker-transform: 'translate([int_offset_x_viewpoint], [int_offset_y_viewpoint])';
      center/marker-anchor-cond: "'viewpoint_'+[osm_id]";
      center/marker-allow-overlap-anchor: "'viewpoint,peak'";
      center/marker-anchor-set: "viewpoint";
      center/marker-width: 1;
      center/marker-height: 1;
      center/marker-line-width: 0;
      center/marker-fill: "#ffffff";
      center/marker-opacity: 0.0;
      center/marker-placement: interior;
    }
    [vis_type = 'label-for-symbol'],
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-dy: [int_text_dy_viewpoint];
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'barrier_toll_booth'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/barrier_toll_booth.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/barrier_toll_booth.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/barrier_toll_booth.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_artwork'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_artwork.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_artwork.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_artwork.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_camp_site'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_camp_site.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_camp_site.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_camp_site.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_caravan_site'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_caravan_site.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_caravan_site.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_caravan_site.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'railway_subway_entrance'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/railway_subway_entrance.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[ref]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/railway_subway_entrance.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/railway_subway_entrance.svg');
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[ref]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [int_access = 'restricted'] {
        text-opacity: @private-opacity;
        text-halo-radius: 0;
      }
    }
  }
  [feature = 'railway_station'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/railway_station.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @bold-fonts;
      [font = 'jp'] { shield-face-name: @bold-fonts-jp; }
      [font = 'tc'] { shield-face-name: @bold-fonts-tc; }
      [font = 'kr'] { shield-face-name: @bold-fonts-kr; }
      [font = 'ur'] { shield-face-name: @bold-fonts-ur; }
      [font = 'bg'] { shield-face-name: @bold-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.5;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #4957ad;
      shield-text-dy: 9;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/railway_station.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/railway_station.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4957ad;
      textonly/text-face-name: @bold-fonts;
      [font = 'jp'] { textonly/text-face-name: @bold-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @bold-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @bold-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @bold-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @bold-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.5;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4957ad;
      text-dy: 9;
      text-face-name: @bold-fonts;
      [font = 'jp'] { text-face-name: @bold-fonts-jp; }
      [font = 'tc'] { text-face-name: @bold-fonts-tc; }
      [font = 'kr'] { text-face-name: @bold-fonts-kr; }
      [font = 'ur'] { text-face-name: @bold-fonts-ur; }
      [font = 'bg'] { text-face-name: @bold-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4957ad;
      textonly/text-face-name: @bold-fonts;
      [font = 'jp'] { textonly/text-face-name: @bold-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @bold-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @bold-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @bold-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @bold-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.5;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4957ad;
      text-face-name: @bold-fonts;
      [font = 'jp'] { text-face-name: @bold-fonts-jp; }
      [font = 'tc'] { text-face-name: @bold-fonts-tc; }
      [font = 'kr'] { text-face-name: @bold-fonts-kr; }
      [font = 'ur'] { text-face-name: @bold-fonts-ur; }
      [font = 'bg'] { text-face-name: @bold-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
    }
    // modification railway_station+size_6 based on style standard-symbol-zoom-variant
    [zoom >= 13] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/railway_station_size_6.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/railway_station_size_6.svg');
        symbolonly/marker-file: url('symbols/colored/railway_station_size_6.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification railway_station+size_9 based on style standard-symbol-zoom-variant
    [zoom >= 15] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/railway_station_size_9.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/railway_station_size_9.svg');
        shield-size: 11;
        shield-text-dy: 10;
        symbolonly/marker-file: url('symbols/colored/railway_station_size_9.svg');
        textonly/text-size: 11;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 10;
        text-size: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-size: 11;
      }
      [vis_type = 'label-only'] { text-size: 11; }
    }
  }
  [feature = 'railway_halt'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/railway_halt.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @bold-fonts;
      [font = 'jp'] { shield-face-name: @bold-fonts-jp; }
      [font = 'tc'] { shield-face-name: @bold-fonts-tc; }
      [font = 'kr'] { shield-face-name: @bold-fonts-kr; }
      [font = 'ur'] { shield-face-name: @bold-fonts-ur; }
      [font = 'bg'] { shield-face-name: @bold-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.5;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #4957ad;
      shield-text-dy: 7;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/railway_halt.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/railway_halt.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4957ad;
      textonly/text-face-name: @bold-fonts;
      [font = 'jp'] { textonly/text-face-name: @bold-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @bold-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @bold-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @bold-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @bold-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.5;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4957ad;
      text-dy: 7;
      text-face-name: @bold-fonts;
      [font = 'jp'] { text-face-name: @bold-fonts-jp; }
      [font = 'tc'] { text-face-name: @bold-fonts-tc; }
      [font = 'kr'] { text-face-name: @bold-fonts-kr; }
      [font = 'ur'] { text-face-name: @bold-fonts-ur; }
      [font = 'bg'] { text-face-name: @bold-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4957ad;
      textonly/text-face-name: @bold-fonts;
      [font = 'jp'] { textonly/text-face-name: @bold-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @bold-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @bold-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @bold-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @bold-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.5;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4957ad;
      text-face-name: @bold-fonts;
      [font = 'jp'] { text-face-name: @bold-fonts-jp; }
      [font = 'tc'] { text-face-name: @bold-fonts-tc; }
      [font = 'kr'] { text-face-name: @bold-fonts-kr; }
      [font = 'ur'] { text-face-name: @bold-fonts-ur; }
      [font = 'bg'] { text-face-name: @bold-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
    }
    // modification railway_halt+size_6 based on style standard-symbol-zoom-variant
    [zoom >= 15] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/railway_halt_size_6.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/railway_halt_size_6.svg');
        symbolonly/marker-file: url('symbols/colored/railway_halt_size_6.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'railway_tram_stop'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/railway_tram_stop.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.5;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #4957ad;
      shield-text-dy: 7;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/railway_tram_stop.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/railway_tram_stop.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4957ad;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.5;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4957ad;
      text-dy: 7;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4957ad;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.5;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4957ad;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
    }
    // modification railway_tram_stop+size_6 based on style standard-symbol-zoom-variant
    [zoom >= 15] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/railway_tram_stop_size_6.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/railway_tram_stop_size_6.svg');
        symbolonly/marker-file: url('symbols/colored/railway_tram_stop_size_6.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'aerialway_station'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/aerialway_station.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.5;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #4957ad;
      shield-text-dy: 7;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/aerialway_station.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/aerialway_station.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4957ad;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.5;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4957ad;
      text-dy: 7;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4957ad;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.5;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4957ad;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
    }
    // modification aerialway_station+size_6 based on style standard-symbol-zoom-variant
    [zoom >= 15] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/aerialway_station_size_6.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/aerialway_station_size_6.svg');
        symbolonly/marker-file: url('symbols/colored/aerialway_station_size_6.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'aeroway_helipad'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/aeroway_helipad.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: -10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/aeroway_helipad.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/aeroway_helipad.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: -10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'aeroway_aerodrome'] {
    [zoom < 14] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/aeroway_aerodrome.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @oblique-fonts;
        [font = 'jp'] { shield-face-name: @oblique-fonts-jp; }
        [font = 'tc'] { shield-face-name: @oblique-fonts-tc; }
        [font = 'kr'] { shield-face-name: @oblique-fonts-kr; }
        [font = 'ur'] { shield-face-name: @oblique-fonts-ur; }
        [font = 'bg'] { shield-face-name: @oblique-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #6942b0;
        shield-text-dy: 10;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/aeroway_aerodrome.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/aeroway_aerodrome.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #6942b0;
        textonly/text-face-name: @oblique-fonts;
        [font = 'jp'] { textonly/text-face-name: @oblique-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @oblique-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @oblique-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @oblique-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @oblique-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #6942b0;
        text-dy: 10;
        text-face-name: @oblique-fonts;
        [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
        [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
        [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
        [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
        [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #6942b0;
        textonly/text-face-name: @oblique-fonts;
        [font = 'jp'] { textonly/text-face-name: @oblique-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @oblique-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @oblique-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @oblique-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @oblique-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #6942b0;
        text-face-name: @oblique-fonts;
        [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
        [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
        [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
        [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
        [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
    }
  }
  [feature = 'aeroway_gate'] {
    text-placement: interior;
    text-name: '[ref]';
    text-size: 10;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: #aa66cc;
    text-face-name: @book-fonts;
    [font = 'jp'] { text-face-name: @book-fonts-jp; }
    [font = 'tc'] { text-face-name: @book-fonts-tc; }
    [font = 'kr'] { text-face-name: @book-fonts-kr; }
    [font = 'ur'] { text-face-name: @book-fonts-ur; }
    [font = 'bg'] { text-face-name: @book-fonts-bg; }
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }
  [feature = 'amenity_drinking_water'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_drinking_water.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #2f8099;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_drinking_water.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_drinking_water.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_water_point'][variant = null] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_water_point.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #2f8099;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_water_point.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_water_point.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_water_point'][variant = 'drinking_water'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/amenity_water_point_drinking_water.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #2f8099;
        shield-text-dy: 10;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/amenity_water_point_drinking_water.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/amenity_water_point_drinking_water.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #2f8099;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #2f8099;
        text-dy: 10;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #2f8099;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #2f8099;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'man_made_water_tap'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_water_tap.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #2f8099;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_water_tap.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_water_tap.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'natural_spring'][variant = null] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/water/natural_spring_small.svg');
      [zoom >= 16] { marker-file: url('symbols/water/natural_spring.svg'); }
      [intermittent = 'yes'] {
        marker-file: url('symbols/water/natural_spring_small_intermittent.svg');
        [zoom >= 16] { marker-file: url('symbols/water/natural_spring_intermittent.svg'); }
      }
    }
    [vis_type = 'symbol-label'] {
      shield-anchor-set: '[osm_id]';
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #2f8099;
      shield-text-dy: 6;
      shield-unlock-image: true;
      shield-file: url('symbols/water/natural_spring_small.svg');
      symbolonly/marker-anchor-set: '[osm_id]';
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/water/natural_spring_small.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
      [zoom >= 16] {
        shield-file: url('symbols/water/natural_spring.svg');
        symbolonly/marker-file: url('symbols/water/natural_spring.svg');
      }
      [intermittent = 'yes'] {
        shield-file: url('symbols/water/natural_spring_small_intermittent.svg');
        symbolonly/marker-file: url('symbols/water/natural_spring_small_intermittent.svg');
        [zoom >= 16] {
          shield-file: url('symbols/water/natural_spring_intermittent.svg');
          symbolonly/marker-file: url('symbols/water/natural_spring_intermittent.svg');
        }
      }
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-dy: 6;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'natural_spring'][variant = 'connected'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'],
      [vis_type = 'symbol-label'] {
        marker-anchor-set: '[osm_id]';
        marker-fill: #24a6cc;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-width: 1.5;
        marker-height: 1.5;
        [zoom >= 16] {
          marker-width: 2.5;
          marker-height: 2.5;
        }
        marker-ignore-placement: true;
      }
      [vis_type = 'symbol-label'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #2f8099;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
        text-dy: 7;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #2f8099;
        text-dy: 7;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'natural_hot_spring'][variant = null] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/water/natural_hot_spring_small.svg');
      [zoom >= 16] { marker-file: url('symbols/water/natural_hot_spring.svg'); }
      [intermittent = 'yes'] {
        marker-file: url('symbols/water/natural_hot_spring_small_intermittent.svg');
        [zoom >= 16] { marker-file: url('symbols/water/natural_hot_spring_intermittent.svg'); }
      }
    }
    [vis_type = 'symbol-label'] {
      shield-anchor-set: '[osm_id]';
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #2f8099;
      shield-text-dy: 6;
      shield-unlock-image: true;
      shield-file: url('symbols/water/natural_hot_spring_small.svg');
      symbolonly/marker-anchor-set: '[osm_id]';
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/water/natural_hot_spring_small.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
      [zoom >= 16] {
        shield-file: url('symbols/water/natural_hot_spring.svg');
        symbolonly/marker-file: url('symbols/water/natural_hot_spring.svg');
      }
      [intermittent = 'yes'] {
        shield-file: url('symbols/water/natural_hot_spring_small_intermittent.svg');
        symbolonly/marker-file: url('symbols/water/natural_hot_spring_small_intermittent.svg');
        [zoom >= 16] {
          shield-file: url('symbols/water/natural_hot_spring_intermittent.svg');
          symbolonly/marker-file: url('symbols/water/natural_hot_spring_intermittent.svg');
        }
      }
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-dy: 6;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'natural_hot_spring'][variant = 'connected'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'],
      [vis_type = 'symbol-label'] {
        marker-anchor-set: '[osm_id]';
        marker-fill: #ff4020;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-width: 1.5;
        marker-height: 1.5;
        [zoom >= 16] {
          marker-width: 2.5;
          marker-height: 2.5;
        }
        marker-ignore-placement: true;
      }
      [vis_type = 'symbol-label'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #2f8099;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
        text-dy: 7;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #2f8099;
        text-dy: 7;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'man_made_water_well'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_water_well.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #2f8099;
      shield-text-dy: 6;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_water_well.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_water_well.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-dy: 6;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_water_well+large based on style standard-symbol-zoom-variant
    [zoom >= 17] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_water_well_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_water_well_large.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_water_well_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'amenity_fountain'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_fountain.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #2f8099;
      shield-text-dy: 6;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_fountain.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_fountain.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-dy: 6;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification amenity_fountain+large based on style standard-symbol-zoom-variant
    [zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_fountain_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_fountain_large.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/amenity_fountain_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'natural_geyser'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/natural_geyser.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #2f8099;
      shield-text-dy: 9;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/natural_geyser.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/natural_geyser.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-dy: 9;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #2f8099;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification natural_geyser+large based on style standard-symbol-zoom-variant
    [zoom >= 16] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/natural_geyser_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/natural_geyser_large.svg');
        symbolonly/marker-file: url('symbols/colored/natural_geyser_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'natural_bay'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: 10;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: #2f8099;
    text-face-name: @book-fonts;
    [font = 'jp'] { text-face-name: @book-fonts-jp; }
    [font = 'tc'] { text-face-name: @book-fonts-tc; }
    [font = 'kr'] { text-face-name: @book-fonts-kr; }
    [font = 'ur'] { text-face-name: @book-fonts-ur; }
    [font = 'bg'] { text-face-name: @book-fonts-bg; }
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }
  [feature = 'natural_tree'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: 10;
    text-dy: [int_text_offset_tree];
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: #4d9945;
    text-face-name: @book-fonts;
    [font = 'jp'] { text-face-name: @book-fonts-jp; }
    [font = 'tc'] { text-face-name: @book-fonts-tc; }
    [font = 'kr'] { text-face-name: @book-fonts-kr; }
    [font = 'ur'] { text-face-name: @book-fonts-ur; }
    [font = 'bg'] { text-face-name: @book-fonts-bg; }
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
  }
  [feature = 'natural_peak/viewpoint'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/natural_peak_viewpoint.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6e441e;
      shield-text-dy: 7;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/natural_peak_viewpoint.svg');
      symbolnameonly/shield-placement: interior;
      symbolnameonly/shield-clip: false;
      symbolnameonly/shield-name: '[name]';
      symbolnameonly/shield-size: @standard-font-size;
      symbolnameonly/shield-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/shield-face-name: @book-fonts-bg; }
      symbolnameonly/shield-halo-radius: @standard-halo-radius;
      symbolnameonly/shield-halo-fill: @standard-halo-fill;
      symbolnameonly/shield-wrap-width: 100;
      symbolnameonly/shield-line-spacing: @standard-line-spacing-size;
      symbolnameonly/shield-fill: #6e441e;
      symbolnameonly/shield-text-dy: 7;
      symbolnameonly/shield-unlock-image: true;
      symbolnameonly/shield-file: url('symbols/colored/natural_peak_viewpoint.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/natural_peak_viewpoint.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6e441e;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6e441e;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6e441e;
      text-dy: 7;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      symbolnameonly/text-anchor-cond: '[osm_id]';
      symbolnameonly/text-placement: interior;
      symbolnameonly/text-name: '[name]';
      symbolnameonly/text-size: 10;
      symbolnameonly/text-wrap-width: @standard-wrap-width;
      symbolnameonly/text-line-spacing: @standard-line-spacing-size;
      symbolnameonly/text-fill: #6e441e;
      symbolnameonly/text-dy: 7;
      symbolnameonly/text-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/text-face-name: @book-fonts-bg; }
      symbolnameonly/text-halo-radius: @standard-halo-radius;
      symbolnameonly/text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6e441e;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-anchor-cond: "'!'+[osm_id]";
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6e441e;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    // modification natural_peak/viewpoint+large based on style large-symbol-variant-peak-viewpoint
    [zoom >= 12] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: "'peak,'+[osm_id]+',peak_'+[osm_id]";
        marker-file: url('symbols/colored/natural_peak_viewpoint_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-anchor-set: "'peak,'+[osm_id]+',peak_'+[osm_id]";
        shield-file: url('symbols/colored/natural_peak_viewpoint_large.svg');
        shield-text-dy: [int_text_dy_viewpoint];
        symbolonly/marker-file: url('symbols/colored/natural_peak_viewpoint_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: [int_text_dy_viewpoint];
      }
    }
    // modification natural_peak/viewpoint+large+viewpoint based on style peak-variant-with-viewpoint
    [zoom >= 16] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'],
      [vis_type = 'symbol-label'] {
        footprint/marker-allow-overlap-anchor: "'viewpoint,peak'";
        footprint/marker-anchor-set: "'viewpoint,viewpoint_'+[osm_id]";
        footprint/marker-width: [int_width_viewpoint];
        footprint/marker-height: [int_height_viewpoint];
        footprint/marker-line-width: 0;
        footprint/marker-fill: "#ffffff";
        footprint/marker-opacity: 0.0;
        footprint/marker-placement: interior;
        footprint/marker-transform: 'translate([int_offset_x_viewpoint], [int_offset_y_viewpoint])';
        center/marker-anchor-cond: "'viewpoint_'+[osm_id]";
        center/marker-allow-overlap-anchor: "'viewpoint,peak'";
        center/marker-anchor-set: "viewpoint";
        center/marker-width: 1;
        center/marker-height: 1;
        center/marker-line-width: 0;
        center/marker-fill: "#ffffff";
        center/marker-opacity: 0.0;
        center/marker-placement: interior;
      }
    }
  }
  [feature = 'natural_peak'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/natural_peak.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6e441e;
      shield-text-dy: 7;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/natural_peak.svg');
      symbolnameonly/shield-placement: interior;
      symbolnameonly/shield-clip: false;
      symbolnameonly/shield-name: '[name]';
      symbolnameonly/shield-size: @standard-font-size;
      symbolnameonly/shield-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/shield-face-name: @book-fonts-bg; }
      symbolnameonly/shield-halo-radius: @standard-halo-radius;
      symbolnameonly/shield-halo-fill: @standard-halo-fill;
      symbolnameonly/shield-wrap-width: 100;
      symbolnameonly/shield-line-spacing: @standard-line-spacing-size;
      symbolnameonly/shield-fill: #6e441e;
      symbolnameonly/shield-text-dy: 7;
      symbolnameonly/shield-unlock-image: true;
      symbolnameonly/shield-file: url('symbols/colored/natural_peak.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/natural_peak.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6e441e;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6e441e;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6e441e;
      text-dy: 7;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      symbolnameonly/text-anchor-cond: '[osm_id]';
      symbolnameonly/text-placement: interior;
      symbolnameonly/text-name: '[name]';
      symbolnameonly/text-size: 10;
      symbolnameonly/text-wrap-width: @standard-wrap-width;
      symbolnameonly/text-line-spacing: @standard-line-spacing-size;
      symbolnameonly/text-fill: #6e441e;
      symbolnameonly/text-dy: 7;
      symbolnameonly/text-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/text-face-name: @book-fonts-bg; }
      symbolnameonly/text-halo-radius: @standard-halo-radius;
      symbolnameonly/text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6e441e;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-anchor-cond: "'!'+[osm_id]";
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6e441e;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    // modification natural_peak+large based on style large-symbol-variant-peak
    [zoom >= 12] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: "'peak,'+[osm_id]+',peak_'+[osm_id]";
        marker-file: url('symbols/colored/natural_peak_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-anchor-set: "'peak,'+[osm_id]+',peak_'+[osm_id]";
        shield-file: url('symbols/colored/natural_peak_large.svg');
        symbolonly/marker-file: url('symbols/colored/natural_peak_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
      }
    }
  }
  [feature = 'natural_volcano'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/natural_volcano.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6e441e;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/natural_volcano.svg');
      symbolnameonly/shield-placement: interior;
      symbolnameonly/shield-clip: false;
      symbolnameonly/shield-name: '[name]';
      symbolnameonly/shield-size: @standard-font-size;
      symbolnameonly/shield-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/shield-face-name: @book-fonts-bg; }
      symbolnameonly/shield-halo-radius: @standard-halo-radius;
      symbolnameonly/shield-halo-fill: @standard-halo-fill;
      symbolnameonly/shield-wrap-width: 100;
      symbolnameonly/shield-line-spacing: @standard-line-spacing-size;
      symbolnameonly/shield-fill: #6e441e;
      symbolnameonly/shield-text-dy: 11;
      symbolnameonly/shield-unlock-image: true;
      symbolnameonly/shield-file: url('symbols/colored/natural_volcano.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/natural_volcano.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6e441e;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6e441e;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6e441e;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      symbolnameonly/text-anchor-cond: '[osm_id]';
      symbolnameonly/text-placement: interior;
      symbolnameonly/text-name: '[name]';
      symbolnameonly/text-size: 10;
      symbolnameonly/text-wrap-width: @standard-wrap-width;
      symbolnameonly/text-line-spacing: @standard-line-spacing-size;
      symbolnameonly/text-fill: #6e441e;
      symbolnameonly/text-dy: 11;
      symbolnameonly/text-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/text-face-name: @book-fonts-bg; }
      symbolnameonly/text-halo-radius: @standard-halo-radius;
      symbolnameonly/text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6e441e;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-anchor-cond: "'!'+[osm_id]";
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6e441e;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    // modification natural_volcano+large based on style large-symbol-variant
    [zoom >= 14] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/natural_volcano_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-anchor-set: '[osm_id]';
        shield-file: url('symbols/colored/natural_volcano_large.svg');
        symbolonly/marker-file: url('symbols/colored/natural_volcano_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
      }
    }
  }
  [feature = 'natural_saddle'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/natural_saddle.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6e441e;
      shield-text-dy: 7;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/natural_saddle.svg');
      symbolnameonly/shield-placement: interior;
      symbolnameonly/shield-clip: false;
      symbolnameonly/shield-name: '[name]';
      symbolnameonly/shield-size: @standard-font-size;
      symbolnameonly/shield-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/shield-face-name: @book-fonts-bg; }
      symbolnameonly/shield-halo-radius: @standard-halo-radius;
      symbolnameonly/shield-halo-fill: @standard-halo-fill;
      symbolnameonly/shield-wrap-width: 100;
      symbolnameonly/shield-line-spacing: @standard-line-spacing-size;
      symbolnameonly/shield-fill: #6e441e;
      symbolnameonly/shield-text-dy: 7;
      symbolnameonly/shield-unlock-image: true;
      symbolnameonly/shield-file: url('symbols/colored/natural_saddle.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/natural_saddle.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6e441e;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6e441e;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6e441e;
      text-dy: 7;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      symbolnameonly/text-anchor-cond: '[osm_id]';
      symbolnameonly/text-placement: interior;
      symbolnameonly/text-name: '[name]';
      symbolnameonly/text-size: 10;
      symbolnameonly/text-wrap-width: @standard-wrap-width;
      symbolnameonly/text-line-spacing: @standard-line-spacing-size;
      symbolnameonly/text-fill: #6e441e;
      symbolnameonly/text-dy: 7;
      symbolnameonly/text-face-name: @book-fonts;
      [font = 'jp'] { symbolnameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { symbolnameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { symbolnameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { symbolnameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { symbolnameonly/text-face-name: @book-fonts-bg; }
      symbolnameonly/text-halo-radius: @standard-halo-radius;
      symbolnameonly/text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]<Format face-name="Noto Sans Italic" size="9">[int_elevation]</Format>';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6e441e;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-vertical-alignment: bottom;
      textonly/text-avoid-edges: true;
      nameonly/text-anchor-cond: "'!'+[osm_id]";
      nameonly/text-placement: interior;
      nameonly/text-name: '[name]';
      nameonly/text-size: 10;
      nameonly/text-wrap-width: @standard-wrap-width;
      nameonly/text-line-spacing: @standard-line-spacing-size;
      nameonly/text-fill: #6e441e;
      nameonly/text-face-name: @book-fonts;
      [font = 'jp'] { nameonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { nameonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { nameonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { nameonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { nameonly/text-face-name: @book-fonts-bg; }
      nameonly/text-halo-radius: @standard-halo-radius;
      nameonly/text-halo-fill: @standard-halo-fill;
      nameonly/text-avoid-edges: true;
    }
  }
  [feature = 'natural_cave_entrance'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/natural_cave_entrance.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/natural_cave_entrance.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/natural_cave_entrance.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'power_generator/wind'][variant = null] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/power_generator_wind.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/power_generator_wind.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/power_generator_wind.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'power_generator/wind'][variant = 'offshore'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-placement: interior;
        marker-clip: false;
        marker-file: url('symbols/colored/power_generator_wind_offshore.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-placement: interior;
        shield-clip: false;
        shield-name: '[name]';
        shield-size: 10;
        shield-face-name: @book-fonts;
        [font = 'jp'] { shield-face-name: @book-fonts-jp; }
        [font = 'tc'] { shield-face-name: @book-fonts-tc; }
        [font = 'kr'] { shield-face-name: @book-fonts-kr; }
        [font = 'ur'] { shield-face-name: @book-fonts-ur; }
        [font = 'bg'] { shield-face-name: @book-fonts-bg; }
        shield-halo-radius: @standard-halo-radius * 1.0;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-line-spacing: @standard-line-spacing-size;
        shield-fill: #000000;
        shield-text-dy: 13;
        shield-unlock-image: true;
        shield-file: url('symbols/colored/power_generator_wind_offshore.svg');
        symbolonly/marker-placement: interior;
        symbolonly/marker-clip: false;
        symbolonly/marker-file: url('symbols/colored/power_generator_wind_offshore.svg');
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-dy: 13;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
        textonly/text-anchor-cond: "'!'+[osm_id]";
        textonly/text-placement: interior;
        textonly/text-name: '[name]';
        textonly/text-size: 10;
        textonly/text-wrap-width: @standard-wrap-width;
        textonly/text-line-spacing: @standard-line-spacing-size;
        textonly/text-fill: #000000;
        textonly/text-face-name: @book-fonts;
        [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
        [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
        [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
        [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
        [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
        textonly/text-halo-radius: @standard-halo-radius * 1.0;
        textonly/text-halo-fill: @standard-halo-fill;
        textonly/text-avoid-edges: true;
      }
      [vis_type = 'label-only'] {
        text-placement: interior;
        text-name: '[name]';
        text-size: 10;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: #000000;
        text-face-name: @book-fonts;
        [font = 'jp'] { text-face-name: @book-fonts-jp; }
        [font = 'tc'] { text-face-name: @book-fonts-tc; }
        [font = 'kr'] { text-face-name: @book-fonts-kr; }
        [font = 'ur'] { text-face-name: @book-fonts-ur; }
        [font = 'bg'] { text-face-name: @book-fonts-bg; }
        text-halo-radius: @standard-halo-radius * 1.0;
        text-halo-fill: @standard-halo-fill;
      }
  }
  [feature = 'military_bunker'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/military_bunker.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 9;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/military_bunker.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/military_bunker.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 9;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_hunting_stand'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_hunting_stand.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_hunting_stand.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_hunting_stand.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_windpump'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_windpump.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_windpump.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_windpump.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_windmill'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_windmill.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_windmill.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_windmill.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_watermill'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_watermill.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_watermill.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_watermill.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_water_tower'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_water_tower.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_water_tower.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_water_tower.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_silo'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_silo.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_silo.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_silo.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_silo+silage based on style standard-symbol-attribute-variant
    ["content" = 'silage'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_silo_silage.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_silo_silage.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_silo_silage.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_silo+gravel based on style standard-symbol-attribute-variant
    ["content" = 'gravel'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_silo_gravel.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_silo_gravel.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_silo_gravel.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_silo+salt based on style standard-symbol-attribute-variant
    ["content" = 'salt'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_silo_salt.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_silo_salt.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_silo_salt.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_silo+grain based on style standard-symbol-attribute-variant
    ["content" = 'grain'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_silo_grain.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_silo_grain.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_silo_grain.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_silo+crop based on style standard-symbol-attribute-variant
    ["content" = 'crop'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_silo_crop.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_silo_crop.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_silo_crop.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_bunker_silo'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_bunker_silo.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 8;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_bunker_silo.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_bunker_silo.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 8;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_bunker_silo+manure based on style standard-symbol-attribute-variant
    ["content" = 'manure'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_bunker_silo_manure.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_bunker_silo_manure.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_bunker_silo_manure.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_bunker_silo+silage based on style standard-symbol-attribute-variant
    ["content" = 'silage'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_bunker_silo_silage.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_bunker_silo_silage.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_bunker_silo_silage.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_bunker_silo+coal based on style standard-symbol-zoom-attribute-variant
    ["content" = 'coal'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_bunker_silo_coal.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_bunker_silo_coal.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/man_made_bunker_silo_coal.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_bunker_silo+gravel based on style standard-symbol-attribute-variant
    ["content" = 'gravel'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_bunker_silo_gravel.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_bunker_silo_gravel.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_bunker_silo_gravel.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_bunker_silo+salt based on style standard-symbol-attribute-variant
    ["content" = 'salt'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_bunker_silo_salt.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_bunker_silo_salt.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_bunker_silo_salt.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_bunker_silo+grain based on style standard-symbol-attribute-variant
    ["content" = 'grain'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_bunker_silo_grain.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_bunker_silo_grain.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_bunker_silo_grain.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_reservoir_covered'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_reservoir_covered.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 7;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_reservoir_covered.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_reservoir_covered.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 7;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_heap'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_heap.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 8;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_heap.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_heap.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 8;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_heap+large based on style standard-symbol-zoom-variant
    [zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_heap_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_heap_large.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/man_made_heap_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_heap+coal based on style standard-symbol-zoom-attribute-variant
    ["resource" = 'coal'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_heap_coal.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_heap_coal.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/man_made_heap_coal.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_heap+gravel based on style standard-symbol-zoom-attribute-variant
    ["resource" = 'gravel'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_heap_gravel.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_heap_gravel.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/man_made_heap_gravel.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_heap+salt based on style standard-symbol-zoom-attribute-variant
    ["resource" = 'salt'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_heap_salt.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_heap_salt.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/man_made_heap_salt.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_spoil_heap'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_spoil_heap.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 8;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_spoil_heap.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_spoil_heap.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 8;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_spoil_heap+large based on style standard-symbol-zoom-variant
    [zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_spoil_heap_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_spoil_heap_large.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/man_made_spoil_heap_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_gasometer'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_gasometer.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_gasometer.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_gasometer.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_storage_tank'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_storage_tank.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_storage_tank.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_storage_tank.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_storage_tank+water based on style standard-symbol-attribute-variant
    ["content" = 'water'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_storage_tank_water.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_storage_tank_water.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_storage_tank_water.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_storage_tank+oil based on style standard-symbol-attribute-variant
    ["content" = 'oil'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_storage_tank_oil.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_storage_tank_oil.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_storage_tank_oil.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_storage_tank+fuel based on style standard-symbol-attribute-variant
    ["content" = 'fuel'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_storage_tank_fuel.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_storage_tank_fuel.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_storage_tank_fuel.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_storage_tank+gas based on style standard-symbol-attribute-variant
    ["content" = 'gas'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_storage_tank_gas.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_storage_tank_gas.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_storage_tank_gas.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_storage_tank+sewage based on style standard-symbol-attribute-variant
    ["content" = 'sewage'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_storage_tank_sewage.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_storage_tank_sewage.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_storage_tank_sewage.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_storage_tank+slurry based on style standard-symbol-attribute-variant
    ["content" = 'slurry'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_storage_tank_slurry.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_storage_tank_slurry.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_storage_tank_slurry.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_storage_tank+silage based on style standard-symbol-attribute-variant
    ["content" = 'silage'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_storage_tank_silage.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_storage_tank_silage.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_storage_tank_silage.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_lighthouse'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_lighthouse.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_lighthouse.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_lighthouse.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_lighthouse+active based on style standard-symbol-attribute-variant
    ["int_lighthouse_type" = 'active'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_lighthouse_active.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_lighthouse_active.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_lighthouse_active.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_lighthouse+active+variable based on style standard-symbol-attribute-variant
    ["int_lighthouse_type" = 'active+variable'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_lighthouse_active+variable.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_lighthouse_active+variable.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_lighthouse_active+variable.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_telescope'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_telescope.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_telescope.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_telescope.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_telescope+radio based on style standard-symbol-attribute-variant
    ["telescope:type" = 'radio'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_telescope_radio.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_telescope_radio.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_telescope_radio.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_crane'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_crane.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_crane.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_crane.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_crane+gantry_crane based on style standard-symbol-attribute-variant
    ["crane:type" = 'gantry_crane'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_crane_gantry_crane.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_crane_gantry_crane.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_crane_gantry_crane.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_crane+portal_crane based on style standard-symbol-attribute-variant
    ["crane:type" = 'portal_crane'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_crane_portal_crane.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_crane_portal_crane.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_crane_portal_crane.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_crane+floor-mounted_crane based on style standard-symbol-attribute-variant
    ["crane:type" = 'floor-mounted_crane'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_crane_floor-mounted_crane.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_crane_floor-mounted_crane.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_crane_floor-mounted_crane.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_crane+tower_crane based on style standard-symbol-attribute-variant
    ["crane:type" = 'tower_crane'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_crane_tower_crane.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_crane_tower_crane.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_crane_tower_crane.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_mast'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_mast.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_mast.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_mast.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_mast+unknown+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_unknown+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_unknown+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_unknown+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+unknown+lighting based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+lighting'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_unknown+lighting.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_unknown+lighting.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_unknown+lighting.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+unknown+siren based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+siren'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_unknown+siren.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_unknown+siren.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_unknown+siren.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+unknown+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_unknown+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_unknown+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_unknown+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+freestanding based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_freestanding.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_freestanding.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_freestanding.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+freestanding+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_freestanding+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_freestanding+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_freestanding+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+freestanding+lighting based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+lighting'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_freestanding+lighting.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_freestanding+lighting.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_freestanding+lighting.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+freestanding+siren based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+siren'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_freestanding+siren.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_freestanding+siren.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_freestanding+siren.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+freestanding+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_freestanding+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_freestanding+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_freestanding+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+lattice based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_lattice.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_lattice.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_lattice.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+lattice+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_lattice+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_lattice+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_lattice+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+lattice+lighting based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+lighting'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_lattice+lighting.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_lattice+lighting.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_lattice+lighting.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+lattice+siren based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+siren'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_lattice+siren.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_lattice+siren.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_lattice+siren.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+lattice+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_lattice+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_lattice+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_lattice+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_lattice based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_lattice'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_lattice.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_lattice.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_lattice.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_lattice+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_lattice+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_lattice+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_lattice+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_lattice+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_lattice+lighting based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_lattice+lighting'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_lattice+lighting.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_lattice+lighting.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_lattice+lighting.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_lattice+siren based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_lattice+siren'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_lattice+siren.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_lattice+siren.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_lattice+siren.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_lattice+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_lattice+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_lattice+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_lattice+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_lattice+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_tube based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_tube'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_tube.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_tube.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_tube.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_tube+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_tube+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_tube+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_tube+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_tube+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_tube+lighting based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_tube+lighting'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_tube+lighting.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_tube+lighting.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_tube+lighting.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_tube+siren based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_tube+siren'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_tube+siren.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_tube+siren.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_tube+siren.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_mast+guyed_tube+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'guyed_tube+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_mast_guyed_tube+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_mast_guyed_tube+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_mast_guyed_tube+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_tower'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_tower.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_tower.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_tower.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_tower+cooling based on style standard-symbol-attribute-variant
    ["tower:type" = 'cooling'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_cooling.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_cooling.svg');
        shield-text-dy: 12;
        symbolonly/marker-file: url('symbols/colored/man_made_tower_cooling.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 12;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+defensive based on style standard-symbol-attribute-variant
    ["tower:type" = 'defensive'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_defensive.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_defensive.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_defensive.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+minaret based on style standard-symbol-attribute-variant
    ["tower:type" = 'minaret'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_minaret.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_minaret.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_minaret.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+lattice based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+lattice'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+lattice.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+lattice.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+lattice.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+flat based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+flat'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+flat.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+flat.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+flat.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+flat+lattice based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+flat+lattice'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+flat+lattice.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+flat+lattice.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+flat+lattice.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+gabled based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+gabled'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+gabled.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+gabled.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+gabled.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+gabled+lattice based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+gabled+lattice'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+gabled+lattice.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+gabled+lattice.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+gabled+lattice.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+hipped based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+hipped'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+hipped.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+hipped.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+hipped.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+hipped+lattice based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+hipped+lattice'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+hipped+lattice.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+hipped+lattice.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+hipped+lattice.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+pyramidal based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+pyramidal'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+pyramidal.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+pyramidal.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+pyramidal.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+bell_tower+pyramidal+lattice based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'bell_tower+pyramidal+lattice'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_bell_tower+pyramidal+lattice.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_bell_tower+pyramidal+lattice.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_bell_tower+pyramidal+lattice.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+unknown+observation based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+observation'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_unknown+observation.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_unknown+observation.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_unknown+observation.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+freestanding+observation based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+observation'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_freestanding+observation.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_freestanding+observation.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_freestanding+observation.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+lattice+observation based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+observation'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_lattice+observation.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_lattice+observation.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_lattice+observation.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+unknown+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_unknown+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_unknown+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_unknown+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+freestanding+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_freestanding+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_freestanding+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_freestanding+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+lattice+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_lattice+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_lattice+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_lattice+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+dome+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'dome+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_dome+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_dome+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_dome+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+dish+communication based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'dish+communication'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_dish+communication.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_dish+communication.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_dish+communication.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+unknown+lighting based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+lighting'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_unknown+lighting.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_unknown+lighting.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_unknown+lighting.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+freestanding+lighting based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+lighting'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_freestanding+lighting.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_freestanding+lighting.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_freestanding+lighting.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+lattice+lighting based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+lighting'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_lattice+lighting.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_lattice+lighting.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_lattice+lighting.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+unknown+siren based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+siren'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_unknown+siren.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_unknown+siren.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_unknown+siren.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+freestanding+siren based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+siren'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_freestanding+siren.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_freestanding+siren.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_freestanding+siren.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+lattice+siren based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+siren'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_lattice+siren.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_lattice+siren.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_lattice+siren.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+unknown+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'unknown+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_unknown+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_unknown+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_unknown+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+freestanding+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_freestanding+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_freestanding+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_freestanding+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+dome+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'dome+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_dome+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_dome+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_dome+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+dish+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'dish+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_dish+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_dish+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_dish+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+lattice+radar based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice+radar'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_lattice+radar.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_lattice+radar.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_lattice+radar.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+freestanding based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'freestanding'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_freestanding.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_freestanding.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_freestanding.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+lattice based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'lattice'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_lattice.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_lattice.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_tower_lattice.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+dome based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'dome'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_dome.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_dome.svg');
        shield-text-dy: 12;
        symbolonly/marker-file: url('symbols/colored/man_made_tower_dome.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 12;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_tower+dish based on style standard-symbol-attribute-variant
    ["int_tower_type" = 'dish'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_tower_dish.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_tower_dish.svg');
        shield-text-dy: 12;
        symbolonly/marker-file: url('symbols/colored/man_made_tower_dish.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 12;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_communications_tower'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_communications_tower.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_communications_tower.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_communications_tower.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_petroleum_well'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_petroleum_well.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 7;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_petroleum_well.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 7;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification man_made_petroleum_well+large based on style standard-symbol-zoom-variant
    [zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_large.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_large.svg');
        shield-text-dy: 8;
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_large.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 8;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+disused based on style standard-symbol-attribute-variant
    ["int_petroleum_well_type" = 'disused'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_disused.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_disused.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_disused.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+large+disused based on style standard-symbol-zoom-attribute-variant
    [int_petroleum_well_type = 'disused'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_large+disused.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_large+disused.svg');
        shield-text-dy: 8;
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_large+disused.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 8;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+oil based on style standard-symbol-zoom-attribute-variant
    ["int_petroleum_well_type" = 'oil'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_oil.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_oil.svg');
        shield-text-dy: 8;
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_oil.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 8;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+gas based on style standard-symbol-zoom-attribute-variant
    ["int_petroleum_well_type" = 'gas'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_gas.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_gas.svg');
        shield-text-dy: 8;
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_gas.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 8;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+disused+oil based on style standard-symbol-attribute-variant
    ["int_petroleum_well_type" = 'disused+oil'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_disused+oil.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_disused+oil.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_disused+oil.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+disused+gas based on style standard-symbol-attribute-variant
    ["int_petroleum_well_type" = 'disused+gas'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_disused+gas.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_disused+gas.svg');
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_disused+gas.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+large+disused+oil based on style standard-symbol-zoom-attribute-variant
    [int_petroleum_well_type = 'disused+oil'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_large+disused+oil.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_large+disused+oil.svg');
        shield-text-dy: 8;
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_large+disused+oil.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 8;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+large+disused+gas based on style standard-symbol-zoom-attribute-variant
    [int_petroleum_well_type = 'disused+gas'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_large+disused+gas.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_large+disused+gas.svg');
        shield-text-dy: 8;
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_large+disused+gas.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 8;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+pump based on style standard-symbol-attribute-variant
    ["int_petroleum_well_type" = 'pump'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_pump.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_pump.svg');
        shield-text-dy: 10;
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_pump.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 10;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification man_made_petroleum_well+disused+pump based on style standard-symbol-attribute-variant
    ["int_petroleum_well_type" = 'disused+pump'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/man_made_petroleum_well_disused+pump.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/man_made_petroleum_well_disused+pump.svg');
        shield-text-dy: 10;
        symbolonly/marker-file: url('symbols/colored/man_made_petroleum_well_disused+pump.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 10;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'historic_city_gate'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_city_gate.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_city_gate.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_city_gate.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'historic_memorial'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_memorial.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_memorial.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_memorial.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification historic_memorial+statue based on style standard-symbol-attribute-variant
    ["memorial" = 'statue'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/historic_memorial_statue.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/historic_memorial_statue.svg');
        symbolonly/marker-file: url('symbols/colored/historic_memorial_statue.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification historic_memorial+bust based on style standard-symbol-attribute-variant
    ["memorial" = 'bust'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/historic_memorial_bust.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/historic_memorial_bust.svg');
        symbolonly/marker-file: url('symbols/colored/historic_memorial_bust.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification historic_memorial+stone based on style standard-symbol-attribute-variant
    ["memorial" = 'stone'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/historic_memorial_stone.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/historic_memorial_stone.svg');
        symbolonly/marker-file: url('symbols/colored/historic_memorial_stone.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification historic_memorial+plaque based on style standard-symbol-attribute-variant
    ["memorial" = 'plaque'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/historic_memorial_plaque.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/historic_memorial_plaque.svg');
        symbolonly/marker-file: url('symbols/colored/historic_memorial_plaque.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification historic_memorial+blue_plaque based on style standard-symbol-attribute-variant
    ["memorial" = 'blue_plaque'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/historic_memorial_blue_plaque.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/historic_memorial_blue_plaque.svg');
        symbolonly/marker-file: url('symbols/colored/historic_memorial_blue_plaque.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_obelisk'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_obelisk.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_obelisk.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_obelisk.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'historic_monument'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_monument.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_monument.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_monument.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'historic_fort'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_fort.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_fort.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_fort.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'historic_castle'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_castle.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_castle.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_castle.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification historic_castle+manor based on style standard-symbol-attribute-variant
    ["castle_type" = 'manor'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/historic_castle_manor.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/historic_castle_manor.svg');
        symbolonly/marker-file: url('symbols/colored/historic_castle_manor.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification historic_castle+palace based on style standard-symbol-attribute-variant
    [castle_type = 'palace'], [castle_type = 'stately'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/historic_castle_palace.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/historic_castle_palace.svg');
        symbolonly/marker-file: url('symbols/colored/historic_castle_palace.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification historic_castle+fortress based on style standard-symbol-attribute-variant
    [castle_type = 'fortress'], [castle_type = 'defensive'], [castle_type = 'castrum'], [castle_type = 'shiro'], [castle_type = 'kremlin'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/historic_castle_fortress.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/historic_castle_fortress.svg');
        symbolonly/marker-file: url('symbols/colored/historic_castle_fortress.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'historic_manor'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_manor.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_manor.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_manor.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'historic_archaeological_site'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_archaeological_site.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_archaeological_site.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_archaeological_site.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_place_of_worship'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_place_of_worship.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000033;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_place_of_worship.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000033;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000033;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000033;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000033;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification amenity_place_of_worship+christian based on style standard-symbol-attribute-variant
    ["religion" = 'christian'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_place_of_worship_christian.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_place_of_worship_christian.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship_christian.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification amenity_place_of_worship+muslim based on style standard-symbol-attribute-variant
    ["religion" = 'muslim'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_place_of_worship_muslim.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_place_of_worship_muslim.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship_muslim.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification amenity_place_of_worship+sikh based on style standard-symbol-attribute-variant
    ["religion" = 'sikh'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_place_of_worship_sikh.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_place_of_worship_sikh.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship_sikh.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification amenity_place_of_worship+jewish based on style standard-symbol-attribute-variant
    ["religion" = 'jewish'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_place_of_worship_jewish.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_place_of_worship_jewish.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship_jewish.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification amenity_place_of_worship+hindu based on style standard-symbol-attribute-variant
    ["religion" = 'hindu'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_place_of_worship_hindu.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_place_of_worship_hindu.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship_hindu.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification amenity_place_of_worship+buddhist based on style standard-symbol-attribute-variant
    ["religion" = 'buddhist'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_place_of_worship_buddhist.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_place_of_worship_buddhist.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship_buddhist.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification amenity_place_of_worship+shinto based on style standard-symbol-attribute-variant
    ["religion" = 'shinto'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_place_of_worship_shinto.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_place_of_worship_shinto.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship_shinto.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification amenity_place_of_worship+taoist based on style standard-symbol-attribute-variant
    ["religion" = 'taoist'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_place_of_worship_taoist.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_place_of_worship_taoist.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_place_of_worship_taoist.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'man_made_cross'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/man_made_cross.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000033;
      shield-text-dy: 6;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/man_made_cross.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/man_made_cross.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000033;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000033;
      text-dy: 6;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000033;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000033;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'historic_wayside_cross'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_wayside_cross.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000033;
      shield-text-dy: 6;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_wayside_cross.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_wayside_cross.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000033;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000033;
      text-dy: 6;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000033;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000033;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'historic_wayside_shrine'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/historic_wayside_shrine.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000033;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/historic_wayside_shrine.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/historic_wayside_shrine.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000033;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000033;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000033;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000033;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'waterway_waterfall'] {
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-dy: 11;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #2f8099;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'man_made_bridge'] {
    [vis_type = 'label-only'] {
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: 30; // 3 em
      text-line-spacing: -1.2; // -0.15 em
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-min-distance: 2;
      text-wrap-width: 30;
      text-placement: interior;
      [way_pixels > 250] {
        text-size: 11;
        text-wrap-width: 33; // 3 em
        text-line-spacing: -1.35; // -0.15 em
      }
      [way_pixels > 1000] {
        text-size: 12;
        text-wrap-width: 36; // 3 em
        text-line-spacing: -1.65; // -0.15 em
        text-halo-radius: @standard-halo-radius * 1.5;
      }
      [way_pixels > 4000] {
        text-size: 13;
        text-wrap-width: 39; // 3 em
        text-line-spacing: -1.80; // -0.15 em
      }
      [way_pixels > 16000] {
        text-size: 14;
        text-wrap-width: 42; // 3 em
        text-line-spacing: -1.95; // -0.15 em
        text-halo-radius: 2;
      }
    }
  }
  [feature = 'amenity_hospital'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_hospital.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #da0092;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_hospital.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_hospital.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_pharmacy'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_pharmacy.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #da0092;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_pharmacy.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_pharmacy.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_dentist'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_dentist.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #da0092;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_dentist.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_dentist.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_doctors'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_doctors.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #da0092;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_doctors.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_doctors.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_clinic'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_clinic.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #da0092;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_clinic.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_clinic.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_veterinary'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_veterinary.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #da0092;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_veterinary.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_veterinary.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #da0092;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #da0092;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'amenity_driving_school'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_driving_school.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #939;
      shield-text-dy: 8;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_driving_school.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_driving_school.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #939;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #939;
      text-dy: 8;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #939;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #939;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification amenity_driving_school+high_zoom based on style standard-symbol-zoom-variant
    [zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/amenity_driving_school_high_zoom.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/amenity_driving_school_high_zoom.svg');
        symbolonly/marker-file: url('symbols/colored/amenity_driving_school_high_zoom.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'amenity_marketplace'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/amenity_marketplace.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #939;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/amenity_marketplace.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/amenity_marketplace.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #939;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #939;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #939;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #939;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'shop_massage'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/shop_massage.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/shop_massage.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/shop_massage.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'shop'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/shop.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #939;
      shield-text-dy: 8;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/shop.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/shop.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #939;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #939;
      text-dy: 8;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #939;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #939;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification shop+other based on style standard-symbol-zoom-variant
    [zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_other.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_other.svg');
        shield-text-dy: 8;
        symbolonly/marker-file: url('symbols/colored/shop_other.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 8;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+supermarket based on style standard-symbol-attribute-variant
    ["shop" = 'supermarket'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_supermarket.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_supermarket.svg');
        shield-text-dy: 10;
        symbolonly/marker-file: url('symbols/colored/shop_supermarket.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 10;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+department_store based on style standard-symbol-attribute-variant
    ["shop" = 'department_store'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_department_store.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_department_store.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_department_store.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+alcohol based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'alcohol'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_alcohol.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_alcohol.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_alcohol.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+wine based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'wine'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_wine.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_wine.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_wine.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+art based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'art'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_art.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_art.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_art.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+bag based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'bag'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_bag.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_bag.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_bag.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+bakery based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'bakery'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_bakery.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_bakery.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_bakery.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+beauty based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'beauty'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_beauty.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_beauty.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_beauty.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+bed based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'bed'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_bed.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_bed.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_bed.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+beverages based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'beverages'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_beverages.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_beverages.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_beverages.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+bicycle based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'bicycle'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_bicycle.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_bicycle.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_bicycle.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+books based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'books'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_books.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_books.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_books.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+butcher based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'butcher'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_butcher.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_butcher.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_butcher.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+chemist based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'chemist'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_chemist.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_chemist.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_chemist.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+car based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'car'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_car.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_car.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_car.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+car_parts based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'car_parts'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_car_parts.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_car_parts.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_car_parts.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+car_repair based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'car_repair'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_car_repair.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_car_repair.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_car_repair.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+carpet based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'carpet'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_carpet.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_carpet.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_carpet.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+charity based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'charity'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_charity.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_charity.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_charity.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+clothes based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'clothes'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_clothes.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_clothes.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_clothes.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+fashion based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'fashion'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_fashion.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_fashion.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_fashion.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+coffee based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'coffee'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_coffee.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_coffee.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_coffee.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+computer based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'computer'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_computer.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_computer.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_computer.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+convenience based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'convenience'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_convenience.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_convenience.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_convenience.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+chocolate based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'chocolate'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_chocolate.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_chocolate.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_chocolate.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+confectionery based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'confectionery'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_confectionery.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_confectionery.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_confectionery.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+pastry based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'pastry'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_pastry.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_pastry.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_pastry.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+copyshop based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'copyshop'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_copyshop.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_copyshop.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_copyshop.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+cosmetics based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'cosmetics'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_cosmetics.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_cosmetics.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_cosmetics.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+perfumery based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'perfumery'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_perfumery.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_perfumery.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_perfumery.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+dairy based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'dairy'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_dairy.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_dairy.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_dairy.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+deli based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'deli'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_deli.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_deli.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_deli.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+doityourself based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'doityourself'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_doityourself.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_doityourself.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_doityourself.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+hardware based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'hardware'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_hardware.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_hardware.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_hardware.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+dry_cleaning based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'dry_cleaning'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_dry_cleaning.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_dry_cleaning.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_dry_cleaning.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+laundry based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'laundry'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_laundry.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_laundry.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_laundry.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+electronics based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'electronics'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_electronics.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_electronics.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_electronics.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+fabric based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'fabric'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_fabric.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_fabric.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_fabric.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+fishmonger based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'fishmonger'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_fishmonger.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_fishmonger.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/shop_fishmonger.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+seafood based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'seafood'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_seafood.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_seafood.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/shop_seafood.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+florist based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'florist'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_florist.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_florist.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_florist.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+furniture based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'furniture'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_furniture.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_furniture.svg');
        shield-text-dy: 10;
        symbolonly/marker-file: url('symbols/colored/shop_furniture.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 10;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+garden_centre based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'garden_centre'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_garden_centre.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_garden_centre.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_garden_centre.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+gift based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'gift'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_gift.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_gift.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_gift.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+greengrocer based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'greengrocer'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_greengrocer.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_greengrocer.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_greengrocer.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+farm based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'farm'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_farm.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_farm.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_farm.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+hairdresser based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'hairdresser'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_hairdresser.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_hairdresser.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_hairdresser.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+hifi based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'hifi'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_hifi.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_hifi.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_hifi.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+houseware based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'houseware'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_houseware.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_houseware.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_houseware.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+interior_decoration based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'interior_decoration'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_interior_decoration.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_interior_decoration.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_interior_decoration.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+jewelry based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'jewelry'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_jewelry.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_jewelry.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_jewelry.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+jewellry based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'jewellry'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_jewellry.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_jewellry.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_jewellry.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+medical_supply based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'medical_supply'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_medical_supply.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_medical_supply.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_medical_supply.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+mobile_phone based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'mobile_phone'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_mobile_phone.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_mobile_phone.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_mobile_phone.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+motorcycle based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'motorcycle'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_motorcycle.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_motorcycle.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_motorcycle.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+music based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'music'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_music.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_music.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_music.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+musical_instrument based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'musical_instrument'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_musical_instrument.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_musical_instrument.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_musical_instrument.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+kiosk based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'kiosk'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_kiosk.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_kiosk.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_kiosk.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+newsagent based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'newsagent'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_newsagent.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_newsagent.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_newsagent.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+optician based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'optician'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_optician.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_optician.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_optician.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+outdoor based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'outdoor'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_outdoor.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_outdoor.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_outdoor.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+pet based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'pet'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_pet.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_pet.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_pet.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+photo based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'photo'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_photo.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_photo.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_photo.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+photo_studio based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'photo_studio'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_photo_studio.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_photo_studio.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_photo_studio.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+photography based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'photography'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_photography.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_photography.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_photography.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+paint based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'paint'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_paint.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_paint.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_paint.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+shoes based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'shoes'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_shoes.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_shoes.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_shoes.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+second_hand based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'second_hand'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_second_hand.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_second_hand.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_second_hand.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+sports based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'sports'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_sports.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_sports.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_sports.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+stationery based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'stationery'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_stationery.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_stationery.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_stationery.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+tobacco based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'tobacco'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_tobacco.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_tobacco.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_tobacco.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+tea based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'tea'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_tea.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_tea.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_tea.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+ticket based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'ticket'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_ticket.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_ticket.svg');
        shield-text-dy: 9;
        symbolonly/marker-file: url('symbols/colored/shop_ticket.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 9;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+toys based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'toys'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_toys.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_toys.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_toys.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+trade based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'trade'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_trade.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_trade.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_trade.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+wholesale based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'wholesale'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_wholesale.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_wholesale.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_wholesale.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+travel_agency based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'travel_agency'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_travel_agency.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_travel_agency.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_travel_agency.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+tyres based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'tyres'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_tyres.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_tyres.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_tyres.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+variety_store based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'variety_store'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_variety_store.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_variety_store.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_variety_store.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+video based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'video'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_video.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_video.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_video.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification shop+video_games based on style standard-symbol-zoom-attribute-variant
    ["shop" = 'video_games'][zoom >= 18] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/shop_video_games.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/shop_video_games.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/shop_video_games.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'advertising_column'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/advertising_column.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #000000;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/advertising_column.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/advertising_column.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #000000;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #000000;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'office'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/office.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #4863A0;
      shield-text-dy: 8;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/office.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/office.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4863A0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4863A0;
      text-dy: 8;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #4863A0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #4863A0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
    // modification office+embassy based on style standard-symbol-attribute-variant
    ["diplomatic" = 'embassy'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/office_embassy.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/office_embassy.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/office_embassy.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
    // modification office+consulate based on style standard-symbol-attribute-variant
    ["diplomatic" = 'consulate'] {
      [vis_type = 'symbol-for-label'],
      [vis_type = 'symbol-only'] {
        marker-anchor-set: '[osm_id]';
        marker-file: url('symbols/colored/office_consulate.svg');
      }
      [vis_type = 'symbol-label'] {
        shield-file: url('symbols/colored/office_consulate.svg');
        shield-text-dy: 11;
        symbolonly/marker-file: url('symbols/colored/office_consulate.svg');
      }
      [vis_type = 'label-for-symbol'] {
        text-anchor-cond: '[osm_id]';
        text-dy: 11;
        textonly/text-anchor-cond: "'!'+[osm_id]";
      }
    }
  }
  [feature = 'leisure_water_park'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_water_park.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_water_park.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_water_park.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'leisure_fitness_centre'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@stadium, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'leisure_fitness_station'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@stadium, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'leisure_playground'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_playground.svg');
      [int_access = 'restricted'] {
        marker-opacity: @private-opacity;
      }
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 12;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_playground.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_playground.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
      [int_access = 'restricted'] {
        shield-opacity: @private-opacity;
        shield-text-opacity: @private-opacity;
        shield-halo-radius: 0;
        symbolonly/marker-opacity: @private-opacity;
        textonly/text-opacity: @private-opacity;
        textonly/text-halo-radius: 0;
      }
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
      [int_access = 'restricted'] {
        text-opacity: @private-opacity;
        text-halo-radius: 0;
        textonly/text-opacity: @private-opacity;
        textonly/text-halo-radius: 0;
      }
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      [int_access = 'restricted'] {
        text-opacity: @private-opacity;
        text-halo-radius: 0;
      }
    }
  }
  [feature = 'leisure_miniature_golf'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_miniature_golf.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_miniature_golf.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_miniature_golf.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'leisure_golf_course'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_golf_course.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_golf_course.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_golf_course.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'tourism_picnic_site'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/tourism_picnic_site.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/tourism_picnic_site.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/tourism_picnic_site.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'leisure_picnic_table'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_picnic_table.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_picnic_table.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_picnic_table.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'leisure_firepit'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_firepit.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_firepit.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_firepit.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'leisure_sauna'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_sauna.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 11;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_sauna.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_sauna.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 11;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'leisure_beach_resort'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_beach_resort.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #734a08;
      shield-text-dy: 10;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_beach_resort.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_beach_resort.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-dy: 10;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #734a08;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #734a08;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'leisure_slipway'] {
    [vis_type = 'symbol-for-label'],
    [vis_type = 'symbol-only'] {
      marker-anchor-set: '[osm_id]';
      marker-placement: interior;
      marker-clip: false;
      marker-file: url('symbols/colored/leisure_slipway.svg');
    }
    [vis_type = 'symbol-label'] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: '[name]';
      shield-size: 10;
      shield-face-name: @book-fonts;
      [font = 'jp'] { shield-face-name: @book-fonts-jp; }
      [font = 'tc'] { shield-face-name: @book-fonts-tc; }
      [font = 'kr'] { shield-face-name: @book-fonts-kr; }
      [font = 'ur'] { shield-face-name: @book-fonts-ur; }
      [font = 'bg'] { shield-face-name: @book-fonts-bg; }
      shield-halo-radius: @standard-halo-radius * 1.0;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-line-spacing: @standard-line-spacing-size;
      shield-fill: #6942b0;
      shield-text-dy: 13;
      shield-unlock-image: true;
      shield-file: url('symbols/colored/leisure_slipway.svg');
      symbolonly/marker-placement: interior;
      symbolonly/marker-clip: false;
      symbolonly/marker-file: url('symbols/colored/leisure_slipway.svg');
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-for-symbol'] {
      text-anchor-cond: '[osm_id]';
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-dy: 13;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
      textonly/text-anchor-cond: "'!'+[osm_id]";
      textonly/text-placement: interior;
      textonly/text-name: '[name]';
      textonly/text-size: 10;
      textonly/text-wrap-width: @standard-wrap-width;
      textonly/text-line-spacing: @standard-line-spacing-size;
      textonly/text-fill: #6942b0;
      textonly/text-face-name: @book-fonts;
      [font = 'jp'] { textonly/text-face-name: @book-fonts-jp; }
      [font = 'tc'] { textonly/text-face-name: @book-fonts-tc; }
      [font = 'kr'] { textonly/text-face-name: @book-fonts-kr; }
      [font = 'ur'] { textonly/text-face-name: @book-fonts-ur; }
      [font = 'bg'] { textonly/text-face-name: @book-fonts-bg; }
      textonly/text-halo-radius: @standard-halo-radius * 1.0;
      textonly/text-halo-fill: @standard-halo-fill;
      textonly/text-avoid-edges: true;
    }
    [vis_type = 'label-only'] {
      text-placement: interior;
      text-name: '[name]';
      text-size: 10;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: #6942b0;
      text-face-name: @book-fonts;
      [font = 'jp'] { text-face-name: @book-fonts-jp; }
      [font = 'tc'] { text-face-name: @book-fonts-tc; }
      [font = 'kr'] { text-face-name: @book-fonts-kr; }
      [font = 'ur'] { text-face-name: @book-fonts-ur; }
      [font = 'bg'] { text-face-name: @book-fonts-bg; }
      text-halo-radius: @standard-halo-radius * 1.0;
      text-halo-fill: @standard-halo-fill;
    }
  }
  [feature = 'leisure_dog_park'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@park, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.5;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'leisure_swimming_pool'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @marina-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'shop_mall'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@retail, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'place_archipelago'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: #000000;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'place_island'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: #000000;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'place_islet'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: #000000;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_military'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@military, 20%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'military_danger_area'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@military, 20%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'highway_services'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@rest_area, 40%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'highway_rest_area'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@rest_area, 40%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_garages'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@garages, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_retail'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@retail, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_residential'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@residential, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_industrial'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@industrial, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_railway'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@industrial, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'man_made_works'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@industrial, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_cemetery'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@cemetery, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.5;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'amenity_grave_yard'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@cemetery, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.5;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_commercial'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@commercial, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_quarry'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@construction, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_brownfield'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@construction, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_landfill'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@construction, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_construction'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@construction, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_village_green'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@grass, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'leisure_common'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@grass, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'leisure_garden'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@grass, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_meadow'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@grass, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_grass'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@grass, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_grassland'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@grass, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_allotments'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@allotments, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_farmyard'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@farmyard, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_farmland'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@farmland, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_greenhouse_horticulture'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@farmland, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_forest'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @forest-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_wood'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @forest-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_wetland'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @wetland-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_reef'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @wetland-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_mud'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @wetland-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_heath'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@heath, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_scrub'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@scrub, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_beach'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@beach, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_shoal'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@beach, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_sand'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@sand, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_scree'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@bare_ground, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_shingle'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@bare_ground, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_bare_rock'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@bare_ground, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_glacier'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: mix(darken(@glacier, 40%), darken(@glacier-line, 30%), 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'natural_water'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @water-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
    [way_pixels > 12000] {
      text-size: @landcover-font-size-big;
      text-wrap-width: 37;
      text-line-spacing: -1.6;
    }
    [way_pixels > 48000] {
      text-size: @landcover-font-size-bigger;
      text-wrap-width: 59;
      text-line-spacing: -1.5;
    }
    [way_pixels > 192000] {
      text-size: 19;
      text-wrap-width: 95;
      text-line-spacing: -0.95;
    }
  }
  [feature = 'landuse_reservoir'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @water-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
    [way_pixels > 12000] {
      text-size: @landcover-font-size-big;
      text-wrap-width: 37;
      text-line-spacing: -1.6;
    }
    [way_pixels > 48000] {
      text-size: @landcover-font-size-bigger;
      text-wrap-width: 59;
      text-line-spacing: -1.5;
    }
    [way_pixels > 192000] {
      text-size: 19;
      text-wrap-width: 95;
      text-line-spacing: -0.95;
    }
  }
  [feature = 'landuse_basin'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @water-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
    [way_pixels > 12000] {
      text-size: @landcover-font-size-big;
      text-wrap-width: 37;
      text-line-spacing: -1.6;
    }
    [way_pixels > 48000] {
      text-size: @landcover-font-size-bigger;
      text-wrap-width: 59;
      text-line-spacing: -1.5;
    }
    [way_pixels > 192000] {
      text-size: 19;
      text-wrap-width: 95;
      text-line-spacing: -0.95;
    }
  }
  [feature = 'leisure_sport_centre'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@stadium, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'leisure_stadium'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@stadium, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'leisure_park'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@park, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'landuse_recreation_ground'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@park, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'tourism_theme_park'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @tourism;
    text-face-name: @bold-fonts;
    [font = 'jp'] { text-face-name: @bold-fonts-jp; }
    [font = 'tc'] { text-face-name: @bold-fonts-tc; }
    [font = 'kr'] { text-face-name: @bold-fonts-kr; }
    [font = 'ur'] { text-face-name: @bold-fonts-ur; }
    [font = 'bg'] { text-face-name: @bold-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'tourism_zoo'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @tourism;
    text-face-name: @bold-fonts;
    [font = 'jp'] { text-face-name: @bold-fonts-jp; }
    [font = 'tc'] { text-face-name: @bold-fonts-tc; }
    [font = 'kr'] { text-face-name: @bold-fonts-kr; }
    [font = 'ur'] { text-face-name: @bold-fonts-ur; }
    [font = 'bg'] { text-face-name: @bold-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'leisure_marina'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: @marina-text;
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'amenity_kindergarten'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@societal_amenities, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'amenity_school'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@societal_amenities, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'amenity_college'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@societal_amenities, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'amenity_university'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@societal_amenities, 60%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'power_plant'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@power, 40%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'power_generator'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@power, 40%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'power_substation'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@power, 40%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
  [feature = 'aeroway_apron'] {
    text-placement: interior;
    text-name: '[name]';
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-fill: darken(@apron, 50%);
    text-face-name: @oblique-fonts;
    [font = 'jp'] { text-face-name: @oblique-fonts-jp; }
    [font = 'tc'] { text-face-name: @oblique-fonts-tc; }
    [font = 'kr'] { text-face-name: @oblique-fonts-kr; }
    [font = 'ur'] { text-face-name: @oblique-fonts-ur; }
    [font = 'bg'] { text-face-name: @oblique-fonts-bg; }
    text-halo-radius: @standard-halo-radius * 1.0;
    text-halo-fill: @standard-halo-fill;
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
  }
}
