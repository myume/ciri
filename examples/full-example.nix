{
  programs.niri = {
    enable = true;
    settings = {
      animations = {
        config-notification-open-close = {
          kind = {
            easing = {
              curve = {
                linear = true;
              };
              duration-ms = 8;
            };
          };
          off = true;
        };
        exit-confirmation-open-close = {
          kind = {
            easing = {
              curve = {
                linear = true;
              };
              duration-ms = 8;
            };
          };
          off = true;
        };
        horizontal-view-movement = {
          kind = {
            easing = {
              curve = {
                linear = true;
              };
              duration-ms = 8;
            };
          };
          off = true;
        };
        off = true;
        overview-open-close = {
          kind = {
            easing = {
              curve = {
                linear = true;
              };
              duration-ms = 8;
            };
          };
          off = true;
        };
        recent-windows-close = {
          kind = {
            easing = {
              curve = {
                linear = true;
              };
              duration-ms = 8;
            };
          };
          off = true;
        };
        screenshot-ui-open = {
          kind = {
            easing = {
              curve = {
                linear = true;
              };
              duration-ms = 8;
            };
          };
          off = true;
        };
        slowdown = 0.5;
        window-close = {
          anim = {
            kind = {
              easing = {
                curve = {
                  linear = true;
                };
                duration-ms = 8;
              };
            };
            off = true;
          };
          custom-shader = "test";
        };
        window-movement = {
          kind = {
            easing = {
              curve = {
                linear = true;
              };
              duration-ms = 8;
            };
          };
          off = true;
        };
        window-open = {
          anim = {
            kind = {
              easing = {
                curve = {
                  linear = true;
                };
                duration-ms = 8;
              };
            };
            off = true;
          };
          custom-shader = "test";
        };
        window-resize = {
          anim = {
            kind = {
              easing = {
                curve = {
                  linear = true;
                };
                duration-ms = 8;
              };
            };
            off = true;
          };
          custom-shader = "test";
        };
        workspace-switch = {
          kind = {
            easing = {
              curve = {
                linear = true;
              };
              duration-ms = 8;
            };
          };
          off = true;
        };
      };
      binds = [
        {
          action = {
            quit = {
              skip-confirmation = true;
            };
          };
          allow-inhibiting = true;
          allow-when-locked = true;
          cooldown = 8;
          hotkey-overlay-title = "test";
          key = "Mod+J";
          repeat = true;
        }
      ];
      blur = {
        noise = 0.5;
        off = true;
        offset = 0.5;
        passes = 8;
        saturation = 0.5;
      };
      clipboard = {
        disable-primary = true;
      };
      config-notification = {
        disable-failed = true;
      };
      cursor = {
        hide-after-inactive-ms = 8;
        hide-when-typing = true;
        xcursor-size = 8;
        xcursor-theme = "test";
      };
      debug = {
        dbus-interfaces-in-non-session-instances = true;
        deactivate-unfocused-windows = true;
        disable-cursor-plane = true;
        disable-direct-scanout = true;
        disable-monitor-names = true;
        disable-resize-throttling = true;
        disable-transactions = true;
        emulate-zero-presentation-time = true;
        enable-overlay-planes = true;
        force-disable-connectors-on-resume = true;
        force-pipewire-invalid-modifier = true;
        honor-xdg-activation-with-invalid-serial = true;
        ignored-drm-devices = ["test"];
        keep-laptop-panel-on-when-lid-is-closed = true;
        keep-max-bpc-unchanged = true;
        preview-render = "screencast";
        render-drm-device = "test";
        restrict-primary-scanout-to-matching-format = true;
        skip-cursor-only-updates-during-vrr = true;
        strict-new-window-focus-policy = true;
        wait-for-frame-completion-before-queueing = true;
      };
      environment = [
        {
          name = "test";
          value = "test";
        }
      ];
      gestures = {
        dnd-edge-view-scroll = {
          delay-ms = 8;
          max-speed = 0.5;
          trigger-width = 0.5;
        };
        dnd-edge-workspace-switch = {
          delay-ms = 8;
          max-speed = 0.5;
          trigger-height = 0.5;
        };
        hot-corners = {
          bottom-left = true;
          bottom-right = true;
          off = true;
          top-left = true;
          top-right = true;
        };
      };
      hotkey-overlay = {
        hide-not-bound = true;
        skip-at-startup = true;
      };
      input = {
        disable-power-key-handling = true;
        focus-follows-mouse = {
          max-scroll-amount = "10%";
        };
        keyboard = {
          numlock = true;
          repeat-delay = 8;
          repeat-rate = 8;
          track-layout = "global";
          xkb = {
            file = "test";
            layout = "test";
            model = "test";
            options = "test";
            rules = "test";
            variant = "test";
          };
        };
        mod-key = "ctrl";
        mod-key-nested = "ctrl";
        mouse = {
          accel-profile = "adaptive";
          accel-speed = 0.5;
          left-handed = true;
          middle-emulation = true;
          natural-scroll = true;
          off = true;
          scroll-button = 8;
          scroll-button-lock = true;
          scroll-factor = {
            base = 0.5;
            horizontal = 0.5;
            vertical = 0.5;
          };
          scroll-method = "no-scroll";
        };
        tablet = {
          calibration-matrix = [0.5];
          left-handed = true;
          map-to-focused-output = true;
          map-to-focused-window = true;
          map-to-output = "test";
          off = true;
        };
        touch = {
          calibration-matrix = [0.5];
          map-to-output = "test";
          off = true;
        };
        touchpad = {
          accel-profile = "adaptive";
          accel-speed = 0.5;
          click-method = "clickfinger";
          disabled-on-external-mouse = true;
          drag = true;
          drag-lock = true;
          dwt = true;
          dwtp = true;
          left-handed = true;
          middle-emulation = true;
          natural-scroll = true;
          off = true;
          scroll-button = 8;
          scroll-button-lock = true;
          scroll-factor = {
            base = 0.5;
            horizontal = 0.5;
            vertical = 0.5;
          };
          scroll-method = "no-scroll";
          tap = true;
          tap-button-map = "left-right-middle";
        };
        trackball = {
          accel-profile = "adaptive";
          accel-speed = 0.5;
          left-handed = true;
          middle-emulation = true;
          natural-scroll = true;
          off = true;
          scroll-button = 8;
          scroll-button-lock = true;
          scroll-method = "no-scroll";
        };
        trackpoint = {
          accel-profile = "adaptive";
          accel-speed = 0.5;
          left-handed = true;
          middle-emulation = true;
          natural-scroll = true;
          off = true;
          scroll-button = 8;
          scroll-button-lock = true;
          scroll-method = "no-scroll";
        };
        warp-mouse-to-focus = {
          mode = "center-xy";
        };
        workspace-auto-back-and-forth = true;
      };
      layer-rules = [
        {
          baba-is-float = true;
          background-effect = {
            blur = true;
            noise = 0.5;
            saturation = 0.5;
            xray = true;
          };
          block-out-from = "screencast";
          excludes = [
            {
              at-startup = true;
              layer = "background";
              namespace = "test";
            }
          ];
          geometry-corner-radius = {
            bottom-left = 0.5;
            bottom-right = 0.5;
            top-left = 0.5;
            top-right = 0.5;
          };
          matches = [
            {
              at-startup = true;
              layer = "background";
              namespace = "test";
            }
          ];
          opacity = 0.5;
          place-within-backdrop = true;
          popups = {
            background-effect = {
              blur = true;
              noise = 0.5;
              saturation = 0.5;
              xray = true;
            };
            geometry-corner-radius = {
              bottom-left = 0.5;
              bottom-right = 0.5;
              top-left = 0.5;
              top-right = 0.5;
            };
            opacity = 0.5;
          };
          shadow = {
            color = "#000000";
            draw-behind-window = true;
            inactive-color = "#000000";
            off = true;
            offset = {
              x = 0.5;
              y = 0.5;
            };
            on = true;
            softness = 0.5;
            spread = 0.5;
          };
        }
      ];
      layout = {
        always-center-single-column = true;
        background-color = "#000000";
        border = {
          active-color = "#000000";
          active-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          inactive-color = "#000000";
          inactive-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          off = true;
          urgent-color = "#000000";
          urgent-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          width = 0.5;
        };
        center-focused-column = "never";
        default-column-display = "normal";
        default-column-width = {
          proportion = 0.5;
        };
        empty-workspace-above-first = true;
        focus-ring = {
          active-color = "#000000";
          active-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          inactive-color = "#000000";
          inactive-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          off = true;
          urgent-color = "#000000";
          urgent-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          width = 0.5;
        };
        gaps = 0.5;
        insert-hint = {
          color = "#000000";
          gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          off = true;
        };
        preset-column-widths = [
          {
            proportion = 0.5;
          }
        ];
        preset-window-heights = [
          {
            proportion = 0.5;
          }
        ];
        shadow = {
          color = "#000000";
          draw-behind-window = true;
          inactive-color = "#000000";
          offset = {
            x = 0.5;
            y = 0.5;
          };
          on = true;
          softness = 0.5;
          spread = 0.5;
        };
        struts = {
          bottom = 0.5;
          left = 0.5;
          right = 0.5;
          top = 0.5;
        };
        tab-indicator = {
          active-color = "#000000";
          active-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          corner-radius = 0.5;
          gap = 0.5;
          gaps-between-tabs = 0.5;
          hide-when-single-tab = true;
          inactive-color = "#000000";
          inactive-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          length = {
            total-proportion = 0.5;
          };
          off = true;
          place-within-column = true;
          position = "left";
          urgent-color = "#000000";
          urgent-gradient = {
            "in" = "oklch longer hue";
            angle = 8;
            from = "#000000";
            relative-to = "window";
            to = "#FFFFFF";
          };
          width = 0.5;
        };
      };
      outputs = [
        {
          backdrop-color = "#000000";
          background-color = "#000000";
          focus-at-startup = true;
          hot-corners = {
            bottom-left = true;
            bottom-right = true;
            off = true;
            top-left = true;
            top-right = true;
          };
          layout = {
            always-center-single-column = true;
            background-color = "#000000";
            border = {
              active-color = "#000000";
              active-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              inactive-color = "#000000";
              inactive-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              off = true;
              on = true;
              urgent-color = "#000000";
              urgent-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              width = 0.5;
            };
            center-focused-column = "never";
            default-column-display = "normal";
            default-column-width = {
              proportion = 0.5;
            };
            empty-workspace-above-first = true;
            focus-ring = {
              active-color = "#000000";
              active-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              inactive-color = "#000000";
              inactive-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              off = true;
              on = true;
              urgent-color = "#000000";
              urgent-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              width = 0.5;
            };
            gaps = 0.5;
            insert-hint = {
              color = "#000000";
              gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              off = true;
              on = true;
            };
            preset-column-widths = [
              {
                proportion = 0.5;
              }
            ];
            preset-window-heights = [
              {
                proportion = 0.5;
              }
            ];
            shadow = {
              color = "#000000";
              draw-behind-window = true;
              inactive-color = "#000000";
              off = true;
              offset = {
                x = 0.5;
                y = 0.5;
              };
              on = true;
              softness = 0.5;
              spread = 0.5;
            };
            struts = {
              bottom = 0.5;
              left = 0.5;
              right = 0.5;
              top = 0.5;
            };
            tab-indicator = {
              active-color = "#000000";
              active-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              corner-radius = 0.5;
              gap = 0.5;
              gaps-between-tabs = 0.5;
              hide-when-single-tab = true;
              inactive-color = "#000000";
              inactive-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              length = {
                total-proportion = 0.5;
              };
              off = true;
              on = true;
              place-within-column = true;
              position = "left";
              urgent-color = "#000000";
              urgent-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              width = 0.5;
            };
          };
          mode = {
            custom = true;
            mode = "test";
          };
          modeline = {
            clock = 0.5;
            hdisplay = 8;
            hsync-end = 8;
            hsync-polarity = "p-h-sync";
            hsync-start = 8;
            htotal = 8;
            vdisplay = 8;
            vsync-end = 8;
            vsync-polarity = "p-v-sync";
            vsync-start = 8;
            vtotal = 8;
          };
          name = "test";
          off = true;
          position = {
            x = 8;
            y = 8;
          };
          scale = 0.5;
          transform = "normal";
          variable-refresh-rate = {
            on-demand = true;
          };
        }
      ];
      overview = {
        backdrop-color = "#000000";
        workspace-shadow = {
          color = "#000000";
          off = true;
          offset = {
            x = 0.5;
            y = 0.5;
          };
          softness = 0.5;
          spread = 0.5;
        };
        zoom = 0.5;
      };
      prefer-no-csd = true;
      recent-windows = {
        binds = [
          {
            action = {
              quit = {
                skip-confirmation = true;
              };
            };
            allow-inhibiting = true;
            allow-when-locked = true;
            cooldown = 8;
            hotkey-overlay-title = "test";
            key = "Mod+J";
            repeat = true;
          }
        ];
        debounce-ms = 8;
        highlight = {
          active-color = "#000000";
          corner-radius = 0.5;
          padding = 0.5;
          urgent-color = "#000000";
        };
        on = true;
        open-delay-ms = 8;
        previews = {
          max-height = 0.5;
          max-scale = 0.5;
        };
      };
      screenshot-path = "test";
      spawn-at-startup = [
        {
          command = ["test"];
        }
      ];
      spawn-sh-at-startup = [
        {
          command = "test";
        }
      ];
      switch-events = {
        lid-close = {
          spawn = ["test"];
        };
        lid-open = {
          spawn = ["test"];
        };
        tablet-mode-off = {
          spawn = ["test"];
        };
        tablet-mode-on = {
          spawn = ["test"];
        };
      };
      window-rules = [
        {
          baba-is-float = true;
          background-effect = {
            blur = true;
            noise = 0.5;
            saturation = 0.5;
            xray = true;
          };
          block-out-from = "screencast";
          border = {
            active-color = "#000000";
            active-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
            inactive-color = "#000000";
            inactive-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
            off = true;
            on = true;
            urgent-color = "#000000";
            urgent-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
            width = 0.5;
          };
          clip-to-geometry = true;
          default-column-display = "normal";
          default-column-width = {
            proportion = 0.5;
          };
          default-floating-position = {
            relative-to = "top-left";
            x = 0.5;
            y = 0.5;
          };
          default-window-height = {
            proportion = 0.5;
          };
          draw-border-with-background = true;
          excludes = [
            {
              app-id = "test";
              at-startup = true;
              is-active = true;
              is-active-in-column = true;
              is-floating = true;
              is-focused = true;
              is-urgent = true;
              is-window-cast-target = true;
              title = "test";
            }
          ];
          focus-ring = {
            active-color = "#000000";
            active-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
            inactive-color = "#000000";
            inactive-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
            off = true;
            on = true;
            urgent-color = "#000000";
            urgent-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
            width = 0.5;
          };
          geometry-corner-radius = {
            bottom-left = 0.5;
            bottom-right = 0.5;
            top-left = 0.5;
            top-right = 0.5;
          };
          matches = [
            {
              app-id = "test";
              at-startup = true;
              is-active = true;
              is-active-in-column = true;
              is-floating = true;
              is-focused = true;
              is-urgent = true;
              is-window-cast-target = true;
              title = "test";
            }
          ];
          max-height = 8;
          max-width = 8;
          min-height = 8;
          min-width = 8;
          opacity = 0.5;
          open-floating = true;
          open-focused = true;
          open-fullscreen = true;
          open-maximized = true;
          open-maximized-to-edges = true;
          open-on-output = "test";
          open-on-workspace = "test";
          popups = {
            background-effect = {
              blur = true;
              noise = 0.5;
              saturation = 0.5;
              xray = true;
            };
            geometry-corner-radius = {
              bottom-left = 0.5;
              bottom-right = 0.5;
              top-left = 0.5;
              top-right = 0.5;
            };
            opacity = 0.5;
          };
          scroll-factor = 0.5;
          shadow = {
            color = "#000000";
            draw-behind-window = true;
            inactive-color = "#000000";
            off = true;
            offset = {
              x = 0.5;
              y = 0.5;
            };
            on = true;
            softness = 0.5;
            spread = 0.5;
          };
          tab-indicator = {
            active-color = "#000000";
            active-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
            inactive-color = "#000000";
            inactive-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
            urgent-color = "#000000";
            urgent-gradient = {
              "in" = "oklch longer hue";
              angle = 8;
              from = "#000000";
              relative-to = "window";
              to = "#FFFFFF";
            };
          };
          tiled-state = true;
          variable-refresh-rate = true;
        }
      ];
      workspaces = [
        {
          layout = {
            always-center-single-column = true;
            background-color = "#000000";
            border = {
              active-color = "#000000";
              active-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              inactive-color = "#000000";
              inactive-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              off = true;
              on = true;
              urgent-color = "#000000";
              urgent-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              width = 0.5;
            };
            center-focused-column = "never";
            default-column-display = "normal";
            default-column-width = {
              proportion = 0.5;
            };
            empty-workspace-above-first = true;
            focus-ring = {
              active-color = "#000000";
              active-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              inactive-color = "#000000";
              inactive-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              off = true;
              on = true;
              urgent-color = "#000000";
              urgent-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              width = 0.5;
            };
            gaps = 0.5;
            insert-hint = {
              color = "#000000";
              gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              off = true;
              on = true;
            };
            preset-column-widths = [
              {
                proportion = 0.5;
              }
            ];
            preset-window-heights = [
              {
                proportion = 0.5;
              }
            ];
            shadow = {
              color = "#000000";
              draw-behind-window = true;
              inactive-color = "#000000";
              off = true;
              offset = {
                x = 0.5;
                y = 0.5;
              };
              on = true;
              softness = 0.5;
              spread = 0.5;
            };
            struts = {
              bottom = 0.5;
              left = 0.5;
              right = 0.5;
              top = 0.5;
            };
            tab-indicator = {
              active-color = "#000000";
              active-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              corner-radius = 0.5;
              gap = 0.5;
              gaps-between-tabs = 0.5;
              hide-when-single-tab = true;
              inactive-color = "#000000";
              inactive-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              length = {
                total-proportion = 0.5;
              };
              off = true;
              on = true;
              place-within-column = true;
              position = "left";
              urgent-color = "#000000";
              urgent-gradient = {
                "in" = "oklch longer hue";
                angle = 8;
                from = "#000000";
                relative-to = "window";
                to = "#FFFFFF";
              };
              width = 0.5;
            };
          };
          name = "test";
          open-on-output = "test";
        }
      ];
      xwayland-satellite = {
        off = true;
        path = "test";
      };
    };
  };
}
