@ferry-route: #66f;
@ferry-route-text: @ferry-route;

#ferry-routes-lz[zoom >= 7],
#roads[zoom >= 10][road_layer = 'ferry_routes'] {
  /* background prevents problems with overlapping ferry-routes, see #457 */
  background/line-color: @river-color;
  background/line-width: 1; /* Needs to be a bit wider than the route itself because of antialiasing */
  background/line-comp-op: lighten;
  background/line-dasharray: 4,4;
  line-color: @ferry-route;
  line-width: 0.4;
  line-dasharray: 4,4;
  [zoom >= 11] {
    background/line-width: 1;
    line-width: 0.8;
    line-dasharray: 6,6;
  }
}

#ferry-routes-text {
  [zoom >= 13] {
    text-name: "[name]";
    text-face-name: @book-fonts;
    text-placement: line;
    text-fill: @ferry-route-text;
    text-spacing: 1000;
    text-size: 10;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-dy: -8;
  }
}
