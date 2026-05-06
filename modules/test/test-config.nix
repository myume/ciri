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
        gaps = 10;
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
