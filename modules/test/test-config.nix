{
  ciri = {
    enable = true;
    settings = {
      input = {
        keyboard = {
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
