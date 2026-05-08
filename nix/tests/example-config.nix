{lib, ...}: {
  programs.niri = {
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

      spawn-sh-at-startup = [
        {
          command = "echo hello world";
        }
      ];
      spawn-at-startup = [
        {
          command = ["echo" "hello world"];
        }
      ];

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

      binds = let
        workspaces = lib.flatten (map (n: [
          {
            key = "Mod+${toString n}";
            action.focus-workspace = n;
          }
          {
            key = "Mod+Shift+${toString n}";
            action.move-column-to-workspace.args = [n];
          }
        ]) (lib.lists.range 1 9));
      in
        workspaces
        ++ [
          {
            key = "Mod+Return";
            action.spawn-sh = "kitty -1";
          }
          {
            key = "Mod+P";
            action.screenshot = {};
          }
        ];

      layer-rules = [
        {
          matches = [
            {
              namespace = "^(bar|launcher|osd|popup)$";
            }
          ];

          background-effect = {
            blur = true;
            xray = false;
          };
        }
        {
          matches = [
            {
              namespace = "^awww-daemonoverview$";
            }
          ];
          place-within-backdrop = true;
          background-effect = {
            blur = true;
            saturation = 2;
          };
        }
      ];

      window-rules = [
        {
          matches = [
            {
              app-id = "^kitty$";
            }
          ];
          background-effect = {
            blur = true;
          };
        }
        {
          draw-border-with-background = false;
          clip-to-geometry = true;
          geometry-corner-radius = let
            r = 16.0;
          in {
            top-left = r;
            top-right = r;
            bottom-left = r;
            bottom-right = r;
          };
        }
      ];
    };
  };
}
