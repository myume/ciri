{
  programs.ciri = {
    enable = true;
    settings = {
      input = {
        keyboard = {
          xkb = {
            options = "caps:ctrl_modifier";
          };
        };
        touchpad = {
          tap = true;
          dwt = true;
          natural-scroll = false;
        };
        tablet = {
          map-to-output = "DP-2";
        };
      };

      screenshot-path = "~/Pictures/Screenshots/%Y-%m-%dT%H:%M:%S.png";
      prefer-no-csd = true;

      layout = {
        gaps = 10.0;
        struts = {
          top = -4;
        };

        focus-ring.off = true;
        border = {
          width = 2.0;
          active-color = "#89B4FA";
          inactive-color = "#313244";
        };

        shadow = {
          on = true;
        };

        preset-column-widths = [
          {proportion = 1.0 / 6.0;}
          {proportion = 1.0 / 4.0;}
          {proportion = 1.0 / 3.0;}
          {proportion = 1.0 / 2.0;}
          {proportion = 2.0 / 3.0;}
          {proportion = 3.0 / 4.0;}
          {proportion = 5.0 / 6.0;}
        ];

        default-column-width = {
          proportion = 1.0 / 2.0;
        };
      };
      clipboard.disable-primary = true;
      gestures = {
        hot-corners.off = true;
      };
      cursor = {
        xcursor-theme = "Bibata-Original-Ice";
        xcursor-size = 16;

        hide-after-inactive-ms = 1000;
      };
    };
  };
}
