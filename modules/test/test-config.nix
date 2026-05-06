{
  ciri = {
    enable = true;
    settings = {
      input = {
        keyboard = {
          numlock = true;
          repeat_delay = 600;
          repeat_rate = 20;
          track_layout = "global";
          xkb = {
            options = "caps:ctrl_modifier";
          };
        };
        touchpad = {
          dwt = true;
          tap = true;
        };
        tablet = {
          map_to_output = "DP-2";
        };
      };
      prefer_no_csd = true;
      screenshot_path = "~/Pictures";
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
          draw_behind_window = false;
          color = "#00000070";
        };
      };
      binds = [
        {
          key = "Mod+K";
          action.FullscreenWindow = true;
        }
      ];
    };
  };
}
