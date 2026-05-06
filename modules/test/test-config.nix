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
      };
      screenshot_path = "~/Pictures";
      binds = [
        {
          key = "Mod+K";
          action.FullscreenWindow = true;
        }
      ];
    };
  };
}
