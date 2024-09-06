/* Basic standalone styling for symbols inspection style */

@tree-color: #000;
@label-color: #000080;

@book-fonts: "Noto Sans Regular", "DejaVu Sans Book";

#peak_symbols,
#viewpoint_symbols,
#tree_symbols,
#tree_symbols_compact {
  polygon-fill: @tree-color;
}

#labels_viewpoint_x,
#labels_viewpoint_y,
#labels_tree {
  text-name: "[name]";
  text-horizontal-alignment: left;
  text-face-name: @book-fonts;
  text-fill: @label-color;
  text-halo-radius: 1;
  text-halo-fill: #fff;
  text-size: 11;
}