@entrance-permissive: darken(@building-line, 15%);
@entrance-normal: @building-line;

#entrances {
  ["entrance" = "main"][zoom >= 18] {
    marker-fill: @entrance-normal;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-file: url('symbols/entrances/square.svg');
    marker-width: 5.0;
    marker-height: 5.0;
    [zoom >= 19] {
      marker-width: 6.0;
      marker-height: 6.0;
      [zoom >= 20] {
        marker-width: 8.0;
        marker-height: 8.0;
      }
    }
    ["access" = "yes"],
    ["access" = "permissive"] {
      marker-fill: @entrance-permissive;
    }
    ["access" = "no"] {
      marker-file: url('symbols/entrances/rectdiag6.svg');
      [zoom >= 20] {
        marker-file: url('symbols/entrances/rectdiag8.svg');
      }
    }
  }
  ["entrance" != "main"][zoom >= 19] {
    marker-fill: @entrance-normal;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-file: url('symbols/entrances/rect6.svg');
    marker-width: 6.0;
    marker-height: 6.0;
    [zoom >= 20] {
      marker-file: url('symbols/entrances/rect8.svg');
      marker-width: 8.0;
      marker-height: 8.0;
    }
    ["entrance" = "shop"]["access" != "no"] {
      centerdot/marker-fill: lighten(#ac39ac, 15%);
      centerdot/marker-allow-overlap: true;
      centerdot/marker-ignore-placement: true;
      centerdot/marker-file: url('symbols/entrances/square.svg');
      centerdot/marker-width: 4.0;
      centerdot/marker-height: 4.0;
    }
    ["entrance" = "staircase"]["access" != "no"][zoom >= 20] {
      marker-file: url('symbols/entrances/staircase8right.svg');
      [direction >= 0][direction < 90],
      [direction >= 180][direction < 270] {
        marker-file: url('symbols/entrances/staircase8left.svg');
      }
    }
    ["entrance" = "service"]["access" != "no"] {
      marker-file: url('symbols/entrances/corners6.svg');
      [zoom >= 20] {
        marker-file: url('symbols/entrances/corners8.svg');
      }
    }
    ["access" = "yes"],
    ["access" = "permissive"] {
      marker-fill: @entrance-permissive;
    }
    ["access" = "no"] {
      marker-file: url('symbols/entrances/rectdiag6.svg');
      [zoom >= 20] {
        marker-file: url('symbols/entrances/rectdiag8.svg');
      }
    }
    ["entrance" = "exit"] {
      arrow/marker-fill: @entrance-normal;
      arrow/marker-allow-overlap: true;
      arrow/marker-ignore-placement: true;
      arrow/marker-file: url('symbols/entrances/exit.svg');
      arrow/marker-transform: 'rotate([direction]-180) translate(5,0)';
      [zoom >= 20] {
        arrow/marker-transform: 'scale(1.25) rotate([direction]-180) translate(5,0)';
      }
    }
    ["entrance" = "entrance"] {
      arrow/marker-fill: @entrance-normal;
      arrow/marker-allow-overlap: true;
      arrow/marker-ignore-placement: true;
      arrow/marker-file: url('symbols/entrances/entrance.svg');
      arrow/marker-transform: 'rotate([direction]) translate(-6.5,0)';
      [zoom >= 20] {
        arrow/marker-transform: 'scale(1.25) rotate([direction]) translate(-6.5,0)';
      }
    }
  }
}
