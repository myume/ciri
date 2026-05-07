{
  ciri = {
    enable = true;
    settings = {
      input = {
        keyboard = {
          numlock = true;
          repeat-delay = 600;
          repeat-rate = 20;
          track-layout = "global";
          xkb = {
            options = "caps:ctrl_modifier";
          };
        };
        touchpad = {
          dwt = true;
          tap = true;
        };
        tablet = {
          map-to-output = "DP-2";
        };
      };
      prefer-no-csd = true;
      screenshot-path = "~/Pictures";
      layout = {
        gaps = 10.0;
        struts = {
          left = 0;
          right = 0;
          top = -4;
          bottom = 0;
        };

        shadow = {
          on = true;
          offset = {
            x = 0.000000;
            y = 5.000000;
          };
          softness = 30.000000;
          spread = 5.000000;
          draw-behind-window = false;
          color = "#00000070";
        };
      };
      binds = [
        {
          key = "Mod+A";
          action.focus-workspace = {};
        }
        {
          key = "Mod+K";
          action.fullscreen-window = true;
        }
      ];
    };
  };
}
