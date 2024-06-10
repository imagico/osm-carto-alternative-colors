/* Basic standalone styling for symbols inspection style */

@tree-color: #000;
@label-color: #000080;

@book-fonts: "Noto Sans Regular", "DejaVu Sans Book";

#tree_symbols,
#tree_symbols_compact {
  polygon-fill: @tree-color;
}

#labels {
  text-name: "[name]";
  text-horizontal-alignment: left;
  text-face-name: @book-fonts;
  text-fill: @label-color;
  text-halo-radius: 1;
  text-halo-fill: #fff;
  text-size: 11;
}