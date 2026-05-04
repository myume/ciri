{lib, ...}: let
  inherit (lib.options) mkOption;
in rec {
  Xkb = {
    options = {
      rules = mkOption {
        type = lib.types.str;
      };
      model = mkOption {
        type = lib.types.str;
      };
      layout = mkOption {
        type = lib.types.str;
      };
      variant = mkOption {
        type = lib.types.str;
      };
      options = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
      file = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
    };
  };
  TrackLayout = mkOption {
    type = lib.types.enum ["global window"];
  };
  Keyboard = {
    options = {
      xkb = mkOption {
        type = lib.types.submodule Xkb;
      };
      repeat_delay = mkOption {
        type = lib.types.ints.u16;
      };
      repeat_rate = mkOption {
        type = lib.types.ints.u8;
      };
      track_layout = mkOption {
        type = lib.types.submodule TrackLayout;
      };
      numlock = mkOption {
        type = lib.types.bool;
      };
    };
  };
  ClickMethod = mkOption {
    type = lib.types.enum ["clickfinger buttonareas"];
  };
  AccelProfile = mkOption {
    type = lib.types.enum ["adaptive flat"];
  };
  ScrollMethod = mkOption {
    type = lib.types.enum ["noscroll twofinger edge onbuttondown"];
  };
  TapButtonMap = mkOption {
    type = lib.types.enum ["leftrightmiddle leftmiddleright"];
  };
  ScrollFactor = {
    options = {
      base = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      horizontal = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      vertical = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
    };
  };
  Touchpad = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      tap = mkOption {
        type = lib.types.bool;
      };
      dwt = mkOption {
        type = lib.types.bool;
      };
      dwtp = mkOption {
        type = lib.types.bool;
      };
      drag = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      drag_lock = mkOption {
        type = lib.types.bool;
      };
      natural_scroll = mkOption {
        type = lib.types.bool;
      };
      click_method = mkOption {
        type = lib.types.nullOr ClickMethod;
      };
      accel_speed = mkOption {
        type = lib.types.float;
      };
      accel_profile = mkOption {
        type = lib.types.nullOr AccelProfile;
      };
      scroll_method = mkOption {
        type = lib.types.nullOr ScrollMethod;
      };
      scroll_button = mkOption {
        type = lib.types.nullOr lib.types.ints.u32;
      };
      scroll_button_lock = mkOption {
        type = lib.types.bool;
      };
      tap_button_map = mkOption {
        type = lib.types.nullOr TapButtonMap;
      };
      left_handed = mkOption {
        type = lib.types.bool;
      };
      disabled_on_external_mouse = mkOption {
        type = lib.types.bool;
      };
      middle_emulation = mkOption {
        type = lib.types.bool;
      };
      scroll_factor = mkOption {
        type = lib.types.nullOr ScrollFactor;
      };
    };
  };
  Mouse = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      natural_scroll = mkOption {
        type = lib.types.bool;
      };
      accel_speed = mkOption {
        type = lib.types.float;
      };
      accel_profile = mkOption {
        type = lib.types.nullOr AccelProfile;
      };
      scroll_method = mkOption {
        type = lib.types.nullOr ScrollMethod;
      };
      scroll_button = mkOption {
        type = lib.types.nullOr lib.types.ints.u32;
      };
      scroll_button_lock = mkOption {
        type = lib.types.bool;
      };
      left_handed = mkOption {
        type = lib.types.bool;
      };
      middle_emulation = mkOption {
        type = lib.types.bool;
      };
      scroll_factor = mkOption {
        type = lib.types.nullOr ScrollFactor;
      };
    };
  };
  Trackpoint = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      natural_scroll = mkOption {
        type = lib.types.bool;
      };
      accel_speed = mkOption {
        type = lib.types.float;
      };
      accel_profile = mkOption {
        type = lib.types.nullOr AccelProfile;
      };
      scroll_method = mkOption {
        type = lib.types.nullOr ScrollMethod;
      };
      scroll_button = mkOption {
        type = lib.types.nullOr lib.types.ints.u32;
      };
      scroll_button_lock = mkOption {
        type = lib.types.bool;
      };
      left_handed = mkOption {
        type = lib.types.bool;
      };
      middle_emulation = mkOption {
        type = lib.types.bool;
      };
    };
  };
  Trackball = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      natural_scroll = mkOption {
        type = lib.types.bool;
      };
      accel_speed = mkOption {
        type = lib.types.float;
      };
      accel_profile = mkOption {
        type = lib.types.nullOr AccelProfile;
      };
      scroll_method = mkOption {
        type = lib.types.nullOr ScrollMethod;
      };
      scroll_button = mkOption {
        type = lib.types.nullOr lib.types.ints.u32;
      };
      scroll_button_lock = mkOption {
        type = lib.types.bool;
      };
      left_handed = mkOption {
        type = lib.types.bool;
      };
      middle_emulation = mkOption {
        type = lib.types.bool;
      };
    };
  };
  Tablet = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      calibration_matrix = mkOption {
        type = lib.types.nullOr lib.types.listOf lib.types.float;
      };
      map_to_output = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
      map_to_focused_output = mkOption {
        type = lib.types.bool;
      };
      map_to_focused_window = mkOption {
        type = lib.types.bool;
      };
      left_handed = mkOption {
        type = lib.types.bool;
      };
    };
  };
  Touch = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      calibration_matrix = mkOption {
        type = lib.types.nullOr lib.types.listOf lib.types.float;
      };
      map_to_output = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
    };
  };
  WarpMouseToFocusMode = mkOption {
    type = lib.types.enum ["centerxy centerxyalways"];
  };
  WarpMouseToFocus = {
    options = {
      mode = mkOption {
        type = lib.types.nullOr WarpMouseToFocusMode;
      };
    };
  };
  Percent = {
    options = {
      Percent = mkOption {
        type = lib.types.float;
      };
    };
  };
  FocusFollowsMouse = {
    options = {
      max_scroll_amount = mkOption {
        type = lib.types.nullOr Percent;
      };
    };
  };
  ModKey = mkOption {
    type = lib.types.enum ["ctrl shift alt super isolevel3shift isolevel5shift"];
  };
  Input = {
    options = {
      keyboard = mkOption {
        type = lib.types.submodule Keyboard;
      };
      touchpad = mkOption {
        type = lib.types.submodule Touchpad;
      };
      mouse = mkOption {
        type = lib.types.submodule Mouse;
      };
      trackpoint = mkOption {
        type = lib.types.submodule Trackpoint;
      };
      trackball = mkOption {
        type = lib.types.submodule Trackball;
      };
      tablet = mkOption {
        type = lib.types.submodule Tablet;
      };
      touch = mkOption {
        type = lib.types.submodule Touch;
      };
      disable_power_key_handling = mkOption {
        type = lib.types.bool;
      };
      warp_mouse_to_focus = mkOption {
        type = lib.types.nullOr WarpMouseToFocus;
      };
      focus_follows_mouse = mkOption {
        type = lib.types.nullOr FocusFollowsMouse;
      };
      workspace_auto_back_and_forth = mkOption {
        type = lib.types.bool;
      };
      mod_key = mkOption {
        type = lib.types.nullOr ModKey;
      };
      mod_key_nested = mkOption {
        type = lib.types.nullOr ModKey;
      };
    };
  };
  Transform = mkOption {
    type = lib.types.enum ["normal _90 _180 _270 flipped flipped90 flipped180 flipped270"];
  };
  Position = {
    options = {
      x = mkOption {
        type = lib.types.ints.s32;
      };
      y = mkOption {
        type = lib.types.ints.s32;
      };
    };
  };
  ConfiguredMode = {
    options = {
      width = mkOption {
        type = lib.types.ints.u16;
      };
      height = mkOption {
        type = lib.types.ints.u16;
      };
      refresh = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
    };
  };
  Mode = {
    options = {
      custom = mkOption {
        type = lib.types.bool;
      };
      mode = mkOption {
        type = lib.types.submodule ConfiguredMode;
      };
    };
  };
  Modeline = {
    options = {
      clock = mkOption {
        type = lib.types.float;
      };
      hdisplay = mkOption {
        type = lib.types.ints.u16;
      };
      hsync_start = mkOption {
        type = lib.types.ints.u16;
      };
      hsync_end = mkOption {
        type = lib.types.ints.u16;
      };
      htotal = mkOption {
        type = lib.types.ints.u16;
      };
      vdisplay = mkOption {
        type = lib.types.ints.u16;
      };
      vsync_start = mkOption {
        type = lib.types.ints.u16;
      };
      vsync_end = mkOption {
        type = lib.types.ints.u16;
      };
      vtotal = mkOption {
        type = lib.types.ints.u16;
      };
      hsync_polarity = mkOption {
        type = lib.types.submodule niri_ipc;
      };
      vsync_polarity = mkOption {
        type = lib.types.submodule niri_ipc;
      };
    };
  };
  Vrr = {
    options = {
      on_demand = mkOption {
        type = lib.types.bool;
      };
    };
  };
  Color = {
    options = {
      r = mkOption {
        type = lib.types.float;
      };
      g = mkOption {
        type = lib.types.float;
      };
      b = mkOption {
        type = lib.types.float;
      };
      a = mkOption {
        type = lib.types.float;
      };
    };
  };
  HotCorners = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      top_left = mkOption {
        type = lib.types.bool;
      };
      top_right = mkOption {
        type = lib.types.bool;
      };
      bottom_left = mkOption {
        type = lib.types.bool;
      };
      bottom_right = mkOption {
        type = lib.types.bool;
      };
    };
  };
  GradientRelativeTo = mkOption {
    type = lib.types.enum ["window workspaceview"];
  };
  GradientColorSpace = mkOption {
    type = lib.types.enum ["srgb srgblinear oklab oklch"];
  };
  HueInterpolation = mkOption {
    type = lib.types.enum ["shorter longer increasing decreasing"];
  };
  GradientInterpolation = {
    options = {
      color_space = mkOption {
        type = lib.types.submodule GradientColorSpace;
      };
      hue_interpolation = mkOption {
        type = lib.types.submodule HueInterpolation;
      };
    };
  };
  Gradient = {
    options = {
      from = mkOption {
        type = lib.types.submodule Color;
      };
      to = mkOption {
        type = lib.types.submodule Color;
      };
      angle = mkOption {
        type = lib.types.ints.s16;
      };
      relative_to = mkOption {
        type = lib.types.submodule GradientRelativeTo;
      };
      in_ = mkOption {
        type = lib.types.submodule GradientInterpolation;
      };
    };
  };
  BorderRule = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      on = mkOption {
        type = lib.types.bool;
      };
      width = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      active_color = mkOption {
        type = lib.types.nullOr Color;
      };
      inactive_color = mkOption {
        type = lib.types.nullOr Color;
      };
      urgent_color = mkOption {
        type = lib.types.nullOr Color;
      };
      active_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
    };
  };
  ShadowOffset = {
    options = {
      x = mkOption {
        type = lib.types.float;
      };
      y = mkOption {
        type = lib.types.float;
      };
    };
  };
  ShadowRule = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      on = mkOption {
        type = lib.types.bool;
      };
      offset = mkOption {
        type = lib.types.nullOr ShadowOffset;
      };
      softness = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      spread = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      draw_behind_window = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      color = mkOption {
        type = lib.types.nullOr Color;
      };
      inactive_color = mkOption {
        type = lib.types.nullOr Color;
      };
    };
  };
  Flag = {
    options = {
      Flag = mkOption {
        type = lib.types.bool;
      };
    };
  };
  TabIndicatorLength = {
    options = {
      total_proportion = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
    };
  };
  TabIndicatorPosition = mkOption {
    type = lib.types.enum ["left right top bottom"];
  };
  TabIndicatorPart = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      on = mkOption {
        type = lib.types.bool;
      };
      hide_when_single_tab = mkOption {
        type = lib.types.nullOr Flag;
      };
      place_within_column = mkOption {
        type = lib.types.nullOr Flag;
      };
      gap = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      width = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      length = mkOption {
        type = lib.types.nullOr TabIndicatorLength;
      };
      position = mkOption {
        type = lib.types.nullOr TabIndicatorPosition;
      };
      gaps_between_tabs = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      corner_radius = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      active_color = mkOption {
        type = lib.types.nullOr Color;
      };
      inactive_color = mkOption {
        type = lib.types.nullOr Color;
      };
      urgent_color = mkOption {
        type = lib.types.nullOr Color;
      };
      active_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
    };
  };
  InsertHintPart = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      on = mkOption {
        type = lib.types.bool;
      };
      color = mkOption {
        type = lib.types.nullOr Color;
      };
      gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
    };
  };
  PresetSize = mkOption {
    type = lib.types.enum ["proportion fixed"];
  };
  DefaultPresetSize = {
    options = {
      DefaultPresetSize = mkOption {
        type = lib.types.nullOr PresetSize;
      };
    };
  };
  CenterFocusedColumn = mkOption {
    type = lib.types.enum ["never always onoverflow"];
  };
  ColumnDisplay = mkOption {
    type = lib.types.enum ["normal tabbed"];
  };
  Struts = {
    options = {
      left = mkOption {
        type = lib.types.float;
      };
      right = mkOption {
        type = lib.types.float;
      };
      top = mkOption {
        type = lib.types.float;
      };
      bottom = mkOption {
        type = lib.types.float;
      };
    };
  };
  LayoutPart = {
    options = {
      focus_ring = mkOption {
        type = lib.types.nullOr BorderRule;
      };
      border = mkOption {
        type = lib.types.nullOr BorderRule;
      };
      shadow = mkOption {
        type = lib.types.nullOr ShadowRule;
      };
      tab_indicator = mkOption {
        type = lib.types.nullOr TabIndicatorPart;
      };
      insert_hint = mkOption {
        type = lib.types.nullOr InsertHintPart;
      };
      preset_column_widths = mkOption {
        type = lib.types.nullOr lib.types.listOf PresetSize;
      };
      default_column_width = mkOption {
        type = lib.types.nullOr DefaultPresetSize;
      };
      preset_window_heights = mkOption {
        type = lib.types.nullOr lib.types.listOf PresetSize;
      };
      center_focused_column = mkOption {
        type = lib.types.nullOr CenterFocusedColumn;
      };
      always_center_single_column = mkOption {
        type = lib.types.nullOr Flag;
      };
      empty_workspace_above_first = mkOption {
        type = lib.types.nullOr Flag;
      };
      default_column_display = mkOption {
        type = lib.types.nullOr ColumnDisplay;
      };
      gaps = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      struts = mkOption {
        type = lib.types.nullOr Struts;
      };
      background_color = mkOption {
        type = lib.types.nullOr Color;
      };
    };
  };
  Output = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      name = mkOption {
        type = lib.types.str;
      };
      scale = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      transform = mkOption {
        type = lib.types.submodule Transform;
      };
      position = mkOption {
        type = lib.types.nullOr Position;
      };
      mode = mkOption {
        type = lib.types.nullOr Mode;
      };
      modeline = mkOption {
        type = lib.types.nullOr Modeline;
      };
      variable_refresh_rate = mkOption {
        type = lib.types.nullOr Vrr;
      };
      focus_at_startup = mkOption {
        type = lib.types.bool;
      };
      background_color = mkOption {
        type = lib.types.nullOr Color;
      };
      backdrop_color = mkOption {
        type = lib.types.nullOr Color;
      };
      hot_corners = mkOption {
        type = lib.types.nullOr HotCorners;
      };
      layout = mkOption {
        type = lib.types.nullOr LayoutPart;
      };
    };
  };
  Outputs = {
    options = {
      Outputs = mkOption {
        type = lib.types.listOf Output;
      };
    };
  };
  SpawnAtStartup = {
    options = {
      command = mkOption {
        type = lib.types.listOf lib.types.str;
      };
    };
  };
  SpawnShAtStartup = {
    options = {
      command = mkOption {
        type = lib.types.str;
      };
    };
  };
  FocusRing = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      width = mkOption {
        type = lib.types.float;
      };
      active_color = mkOption {
        type = lib.types.submodule Color;
      };
      inactive_color = mkOption {
        type = lib.types.submodule Color;
      };
      urgent_color = mkOption {
        type = lib.types.submodule Color;
      };
      active_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
    };
  };
  Border = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      width = mkOption {
        type = lib.types.float;
      };
      active_color = mkOption {
        type = lib.types.submodule Color;
      };
      inactive_color = mkOption {
        type = lib.types.submodule Color;
      };
      urgent_color = mkOption {
        type = lib.types.submodule Color;
      };
      active_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
    };
  };
  Shadow = {
    options = {
      on = mkOption {
        type = lib.types.bool;
      };
      offset = mkOption {
        type = lib.types.submodule ShadowOffset;
      };
      softness = mkOption {
        type = lib.types.float;
      };
      spread = mkOption {
        type = lib.types.float;
      };
      draw_behind_window = mkOption {
        type = lib.types.bool;
      };
      color = mkOption {
        type = lib.types.submodule Color;
      };
      inactive_color = mkOption {
        type = lib.types.nullOr Color;
      };
    };
  };
  TabIndicator = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      hide_when_single_tab = mkOption {
        type = lib.types.bool;
      };
      place_within_column = mkOption {
        type = lib.types.bool;
      };
      gap = mkOption {
        type = lib.types.float;
      };
      width = mkOption {
        type = lib.types.float;
      };
      length = mkOption {
        type = lib.types.submodule TabIndicatorLength;
      };
      position = mkOption {
        type = lib.types.submodule TabIndicatorPosition;
      };
      gaps_between_tabs = mkOption {
        type = lib.types.float;
      };
      corner_radius = mkOption {
        type = lib.types.float;
      };
      active_color = mkOption {
        type = lib.types.nullOr Color;
      };
      inactive_color = mkOption {
        type = lib.types.nullOr Color;
      };
      urgent_color = mkOption {
        type = lib.types.nullOr Color;
      };
      active_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
    };
  };
  InsertHint = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      color = mkOption {
        type = lib.types.submodule Color;
      };
      gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
    };
  };
  Layout = {
    options = {
      focus_ring = mkOption {
        type = lib.types.submodule FocusRing;
      };
      border = mkOption {
        type = lib.types.submodule Border;
      };
      shadow = mkOption {
        type = lib.types.submodule Shadow;
      };
      tab_indicator = mkOption {
        type = lib.types.submodule TabIndicator;
      };
      insert_hint = mkOption {
        type = lib.types.submodule InsertHint;
      };
      preset_column_widths = mkOption {
        type = lib.types.listOf PresetSize;
      };
      default_column_width = mkOption {
        type = lib.types.nullOr PresetSize;
      };
      preset_window_heights = mkOption {
        type = lib.types.listOf PresetSize;
      };
      center_focused_column = mkOption {
        type = lib.types.submodule CenterFocusedColumn;
      };
      always_center_single_column = mkOption {
        type = lib.types.bool;
      };
      empty_workspace_above_first = mkOption {
        type = lib.types.bool;
      };
      default_column_display = mkOption {
        type = lib.types.submodule ColumnDisplay;
      };
      gaps = mkOption {
        type = lib.types.float;
      };
      struts = mkOption {
        type = lib.types.submodule Struts;
      };
      background_color = mkOption {
        type = lib.types.submodule Color;
      };
    };
  };
  Cursor = {
    options = {
      xcursor_theme = mkOption {
        type = lib.types.str;
      };
      xcursor_size = mkOption {
        type = lib.types.ints.u8;
      };
      hide_when_typing = mkOption {
        type = lib.types.bool;
      };
      hide_after_inactive_ms = mkOption {
        type = lib.types.nullOr lib.types.ints.u32;
      };
    };
  };
  ScreenshotPath = {
    options = {
      ScreenshotPath = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
    };
  };
  Clipboard = {
    options = {
      disable_primary = mkOption {
        type = lib.types.bool;
      };
    };
  };
  HotkeyOverlay = {
    options = {
      skip_at_startup = mkOption {
        type = lib.types.bool;
      };
      hide_not_bound = mkOption {
        type = lib.types.bool;
      };
    };
  };
  ConfigNotification = {
    options = {
      disable_failed = mkOption {
        type = lib.types.bool;
      };
    };
  };
  Kind = mkOption {
    type = lib.types.enum ["easing spring"];
  };
  Animation = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      kind = mkOption {
        type = lib.types.submodule Kind;
      };
    };
  };
  WorkspaceSwitchAnim = {
    options = {
      WorkspaceSwitchAnim = mkOption {
        type = lib.types.submodule Animation;
      };
    };
  };
  WindowOpenAnim = {
    options = {
      anim = mkOption {
        type = lib.types.submodule Animation;
      };
      custom_shader = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
    };
  };
  WindowCloseAnim = {
    options = {
      anim = mkOption {
        type = lib.types.submodule Animation;
      };
      custom_shader = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
    };
  };
  HorizontalViewMovementAnim = {
    options = {
      HorizontalViewMovementAnim = mkOption {
        type = lib.types.submodule Animation;
      };
    };
  };
  WindowMovementAnim = {
    options = {
      WindowMovementAnim = mkOption {
        type = lib.types.submodule Animation;
      };
    };
  };
  WindowResizeAnim = {
    options = {
      anim = mkOption {
        type = lib.types.submodule Animation;
      };
      custom_shader = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
    };
  };
  ConfigNotificationOpenCloseAnim = {
    options = {
      ConfigNotificationOpenCloseAnim = mkOption {
        type = lib.types.submodule Animation;
      };
    };
  };
  ExitConfirmationOpenCloseAnim = {
    options = {
      ExitConfirmationOpenCloseAnim = mkOption {
        type = lib.types.submodule Animation;
      };
    };
  };
  ScreenshotUiOpenAnim = {
    options = {
      ScreenshotUiOpenAnim = mkOption {
        type = lib.types.submodule Animation;
      };
    };
  };
  OverviewOpenCloseAnim = {
    options = {
      OverviewOpenCloseAnim = mkOption {
        type = lib.types.submodule Animation;
      };
    };
  };
  RecentWindowsCloseAnim = {
    options = {
      RecentWindowsCloseAnim = mkOption {
        type = lib.types.submodule Animation;
      };
    };
  };
  Animations = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      slowdown = mkOption {
        type = lib.types.float;
      };
      workspace_switch = mkOption {
        type = lib.types.submodule WorkspaceSwitchAnim;
      };
      window_open = mkOption {
        type = lib.types.submodule WindowOpenAnim;
      };
      window_close = mkOption {
        type = lib.types.submodule WindowCloseAnim;
      };
      horizontal_view_movement = mkOption {
        type = lib.types.submodule HorizontalViewMovementAnim;
      };
      window_movement = mkOption {
        type = lib.types.submodule WindowMovementAnim;
      };
      window_resize = mkOption {
        type = lib.types.submodule WindowResizeAnim;
      };
      config_notification_open_close = mkOption {
        type = lib.types.submodule ConfigNotificationOpenCloseAnim;
      };
      exit_confirmation_open_close = mkOption {
        type = lib.types.submodule ExitConfirmationOpenCloseAnim;
      };
      screenshot_ui_open = mkOption {
        type = lib.types.submodule ScreenshotUiOpenAnim;
      };
      overview_open_close = mkOption {
        type = lib.types.submodule OverviewOpenCloseAnim;
      };
      recent_windows_close = mkOption {
        type = lib.types.submodule RecentWindowsCloseAnim;
      };
    };
  };
  Blur = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      passes = mkOption {
        type = lib.types.ints.u8;
      };
      offset = mkOption {
        type = lib.types.float;
      };
      noise = mkOption {
        type = lib.types.float;
      };
      saturation = mkOption {
        type = lib.types.float;
      };
    };
  };
  DndEdgeViewScroll = {
    options = {
      trigger_width = mkOption {
        type = lib.types.float;
      };
      delay_ms = mkOption {
        type = lib.types.ints.u16;
      };
      max_speed = mkOption {
        type = lib.types.float;
      };
    };
  };
  DndEdgeWorkspaceSwitch = {
    options = {
      trigger_height = mkOption {
        type = lib.types.float;
      };
      delay_ms = mkOption {
        type = lib.types.ints.u16;
      };
      max_speed = mkOption {
        type = lib.types.float;
      };
    };
  };
  Gestures = {
    options = {
      dnd_edge_view_scroll = mkOption {
        type = lib.types.submodule DndEdgeViewScroll;
      };
      dnd_edge_workspace_switch = mkOption {
        type = lib.types.submodule DndEdgeWorkspaceSwitch;
      };
      hot_corners = mkOption {
        type = lib.types.submodule HotCorners;
      };
    };
  };
  WorkspaceShadow = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      offset = mkOption {
        type = lib.types.submodule ShadowOffset;
      };
      softness = mkOption {
        type = lib.types.float;
      };
      spread = mkOption {
        type = lib.types.float;
      };
      color = mkOption {
        type = lib.types.submodule Color;
      };
    };
  };
  Overview = {
    options = {
      zoom = mkOption {
        type = lib.types.float;
      };
      backdrop_color = mkOption {
        type = lib.types.submodule Color;
      };
      workspace_shadow = mkOption {
        type = lib.types.submodule WorkspaceShadow;
      };
    };
  };
  EnvironmentVariable = {
    options = {
      name = mkOption {
        type = lib.types.str;
      };
      value = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
    };
  };
  Environment = {
    options = {
      Environment = mkOption {
        type = lib.types.listOf EnvironmentVariable;
      };
    };
  };
  XwaylandSatellite = {
    options = {
      off = mkOption {
        type = lib.types.bool;
      };
      path = mkOption {
        type = lib.types.str;
      };
    };
  };
  RegexEq = {
    options = {
      RegexEq = mkOption {
        type = lib.types.str;
      };
    };
  };
  Match = {
    options = {
      app_id = mkOption {
        type = lib.types.nullOr RegexEq;
      };
      title = mkOption {
        type = lib.types.nullOr RegexEq;
      };
      is_active = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      is_focused = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      is_active_in_column = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      is_floating = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      is_window_cast_target = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      is_urgent = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      at_startup = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
    };
  };
  TabIndicatorRule = {
    options = {
      active_color = mkOption {
        type = lib.types.nullOr Color;
      };
      inactive_color = mkOption {
        type = lib.types.nullOr Color;
      };
      urgent_color = mkOption {
        type = lib.types.nullOr Color;
      };
      active_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr Gradient;
      };
    };
  };
  CornerRadius = {
    options = {
      top_left = mkOption {
        type = lib.types.float;
      };
      top_right = mkOption {
        type = lib.types.float;
      };
      bottom_right = mkOption {
        type = lib.types.float;
      };
      bottom_left = mkOption {
        type = lib.types.float;
      };
    };
  };
  BlockOutFrom = mkOption {
    type = lib.types.enum ["screencast screencapture"];
  };
  RelativeTo = mkOption {
    type = lib.types.enum ["topleft topright bottomleft bottomright top bottom left right"];
  };
  FloatingPosition = {
    options = {
      x = mkOption {
        type = lib.types.float;
      };
      y = mkOption {
        type = lib.types.float;
      };
      relative_to = mkOption {
        type = lib.types.submodule RelativeTo;
      };
    };
  };
  BackgroundEffectRule = {
    options = {
      xray = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      blur = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      noise = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      saturation = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
    };
  };
  PopupsRule = {
    options = {
      opacity = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      geometry_corner_radius = mkOption {
        type = lib.types.nullOr CornerRadius;
      };
      background_effect = mkOption {
        type = lib.types.submodule BackgroundEffectRule;
      };
    };
  };
  WindowRule = {
    options = {
      matches = mkOption {
        type = lib.types.listOf Match;
      };
      excludes = mkOption {
        type = lib.types.listOf Match;
      };
      default_column_width = mkOption {
        type = lib.types.nullOr DefaultPresetSize;
      };
      default_window_height = mkOption {
        type = lib.types.nullOr DefaultPresetSize;
      };
      open_on_output = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
      open_on_workspace = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
      open_maximized = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      open_maximized_to_edges = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      open_fullscreen = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      open_floating = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      open_focused = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      min_width = mkOption {
        type = lib.types.nullOr lib.types.ints.u16;
      };
      min_height = mkOption {
        type = lib.types.nullOr lib.types.ints.u16;
      };
      max_width = mkOption {
        type = lib.types.nullOr lib.types.ints.u16;
      };
      max_height = mkOption {
        type = lib.types.nullOr lib.types.ints.u16;
      };
      focus_ring = mkOption {
        type = lib.types.submodule BorderRule;
      };
      border = mkOption {
        type = lib.types.submodule BorderRule;
      };
      shadow = mkOption {
        type = lib.types.submodule ShadowRule;
      };
      tab_indicator = mkOption {
        type = lib.types.submodule TabIndicatorRule;
      };
      draw_border_with_background = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      opacity = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      geometry_corner_radius = mkOption {
        type = lib.types.nullOr CornerRadius;
      };
      clip_to_geometry = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      baba_is_float = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      block_out_from = mkOption {
        type = lib.types.nullOr BlockOutFrom;
      };
      variable_refresh_rate = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      default_column_display = mkOption {
        type = lib.types.nullOr ColumnDisplay;
      };
      default_floating_position = mkOption {
        type = lib.types.nullOr FloatingPosition;
      };
      scroll_factor = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      tiled_state = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      background_effect = mkOption {
        type = lib.types.submodule BackgroundEffectRule;
      };
      popups = mkOption {
        type = lib.types.submodule PopupsRule;
      };
    };
  };
  LayerRule = {
    options = {
      matches = mkOption {
        type = lib.types.listOf Match;
      };
      excludes = mkOption {
        type = lib.types.listOf Match;
      };
      opacity = mkOption {
        type = lib.types.nullOr lib.types.float;
      };
      block_out_from = mkOption {
        type = lib.types.nullOr BlockOutFrom;
      };
      shadow = mkOption {
        type = lib.types.submodule ShadowRule;
      };
      geometry_corner_radius = mkOption {
        type = lib.types.nullOr CornerRadius;
      };
      place_within_backdrop = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      baba_is_float = mkOption {
        type = lib.types.nullOr lib.types.bool;
      };
      background_effect = mkOption {
        type = lib.types.submodule BackgroundEffectRule;
      };
      popups = mkOption {
        type = lib.types.submodule PopupsRule;
      };
    };
  };
  Trigger = mkOption {
    type = lib.types.enum ["keysym mouseleft mouseright mousemiddle mouseback mouseforward wheelscrolldown wheelscrollup wheelscrollleft wheelscrollright touchpadscrolldown touchpadscrollup touchpadscrollleft touchpadscrollright"];
  };
  Key = {
    options = {
      trigger = mkOption {
        type = lib.types.submodule Trigger;
      };
      modifiers = mkOption {
        type = lib.types.submodule Modifiers;
      };
    };
  };
  Action = mkOption {
    type = lib.types.enum ["quit changevt suspend poweroffmonitors poweronmonitors toggledebugtint debugtoggleopaqueregions debugtoggledamage spawn spawnsh doscreentransition confirmscreenshot cancelscreenshot screenshottogglepointer screenshot screenshotscreen screenshotwindow screenshotwindowbyid togglekeyboardshortcutsinhibit closewindow closewindowbyid fullscreenwindow fullscreenwindowbyid togglewindowedfullscreen togglewindowedfullscreenbyid focuswindow focuswindowincolumn focuswindowprevious focuscolumnleft focuscolumnleftundermouse focuscolumnright focuscolumnrightundermouse focuscolumnfirst focuscolumnlast focuscolumnrightorfirst focuscolumnleftorlast focuscolumn focuswindowormonitorup focuswindowormonitordown focuscolumnormonitorleft focuscolumnormonitorright focuswindowdown focuswindowup focuswindowdownorcolumnleft focuswindowdownorcolumnright focuswindowuporcolumnleft focuswindowuporcolumnright focuswindoworworkspacedown focuswindoworworkspaceup focuswindowtop focuswindowbottom focuswindowdownortop focuswindowuporbottom movecolumnleft movecolumnright movecolumntofirst movecolumntolast movecolumnleftortomonitorleft movecolumnrightortomonitorright movecolumntoindex movewindowdown movewindowup movewindowdownortoworkspacedown movewindowuportoworkspaceup consumeorexpelwindowleft consumeorexpelwindowleftbyid consumeorexpelwindowright consumeorexpelwindowrightbyid consumewindowintocolumn expelwindowfromcolumn swapwindowleft swapwindowright togglecolumntabbeddisplay setcolumndisplay centercolumn centerwindow centerwindowbyid centervisiblecolumns focusworkspacedown focusworkspacedownundermouse focusworkspaceup focusworkspaceupundermouse focusworkspace focusworkspaceprevious movewindowtoworkspacedown movewindowtoworkspaceup movewindowtoworkspace movewindowtoworkspacebyid movecolumntoworkspacedown movecolumntoworkspaceup movecolumntoworkspace moveworkspacedown moveworkspaceup moveworkspacetoindex moveworkspacetoindexbyref moveworkspacetomonitorbyref moveworkspacetomonitor setworkspacename setworkspacenamebyref unsetworkspacename unsetworkspacenamebyref focusmonitorleft focusmonitorright focusmonitordown focusmonitorup focusmonitorprevious focusmonitornext focusmonitor movewindowtomonitorleft movewindowtomonitorright movewindowtomonitordown movewindowtomonitorup movewindowtomonitorprevious movewindowtomonitornext movewindowtomonitor movewindowtomonitorbyid movecolumntomonitorleft movecolumntomonitorright movecolumntomonitordown movecolumntomonitorup movecolumntomonitorprevious movecolumntomonitornext movecolumntomonitor setwindowwidth setwindowwidthbyid setwindowheight setwindowheightbyid resetwindowheight resetwindowheightbyid switchpresetcolumnwidth switchpresetcolumnwidthback switchpresetwindowwidth switchpresetwindowwidthback switchpresetwindowwidthbyid switchpresetwindowwidthbackbyid switchpresetwindowheight switchpresetwindowheightback switchpresetwindowheightbyid switchpresetwindowheightbackbyid maximizecolumn maximizewindowtoedges maximizewindowtoedgesbyid setcolumnwidth expandcolumntoavailablewidth switchlayout showhotkeyoverlay moveworkspacetomonitorleft moveworkspacetomonitorright moveworkspacetomonitordown moveworkspacetomonitorup moveworkspacetomonitorprevious moveworkspacetomonitornext togglewindowfloating togglewindowfloatingbyid movewindowtofloating movewindowtofloatingbyid movewindowtotiling movewindowtotilingbyid focusfloating focustiling switchfocusbetweenfloatingandtiling movefloatingwindowbyid togglewindowruleopacity togglewindowruleopacitybyid setdynamiccastwindow setdynamiccastwindowbyid setdynamiccastmonitor cleardynamiccasttarget stopcast toggleoverview openoverview closeoverview togglewindowurgent setwindowurgent unsetwindowurgent loadconfigfile mruadvance mruconfirm mrucancel mruclosecurrentwindow mrufirst mrulast mrusetscope mrucyclescope"];
  };
  Bind = {
    options = {
      key = mkOption {
        type = lib.types.submodule Key;
      };
      action = mkOption {
        type = lib.types.submodule Action;
      };
      repeat = mkOption {
        type = lib.types.bool;
      };
      cooldown = mkOption {
        type = lib.types.nullOr lib.types.ints.u32;
      };
      allow_when_locked = mkOption {
        type = lib.types.bool;
      };
      allow_inhibiting = mkOption {
        type = lib.types.bool;
      };
      hotkey_overlay_title = mkOption {
        type = lib.types.nullOr lib.types.nullOr lib.types.str;
      };
    };
  };
  Binds = {
    options = {
      Binds = mkOption {
        type = lib.types.listOf Bind;
      };
    };
  };
  SwitchAction = {
    options = {
      spawn = mkOption {
        type = lib.types.listOf lib.types.str;
      };
    };
  };
  SwitchBinds = {
    options = {
      lid_open = mkOption {
        type = lib.types.nullOr SwitchAction;
      };
      lid_close = mkOption {
        type = lib.types.nullOr SwitchAction;
      };
      tablet_mode_on = mkOption {
        type = lib.types.nullOr SwitchAction;
      };
      tablet_mode_off = mkOption {
        type = lib.types.nullOr SwitchAction;
      };
    };
  };
  PreviewRender = mkOption {
    type = lib.types.enum ["screencast screencapture"];
  };
  Debug = {
    options = {
      preview_render = mkOption {
        type = lib.types.nullOr PreviewRender;
      };
      dbus_interfaces_in_non_session_instances = mkOption {
        type = lib.types.bool;
      };
      wait_for_frame_completion_before_queueing = mkOption {
        type = lib.types.bool;
      };
      enable_overlay_planes = mkOption {
        type = lib.types.bool;
      };
      disable_cursor_plane = mkOption {
        type = lib.types.bool;
      };
      disable_direct_scanout = mkOption {
        type = lib.types.bool;
      };
      keep_max_bpc_unchanged = mkOption {
        type = lib.types.bool;
      };
      restrict_primary_scanout_to_matching_format = mkOption {
        type = lib.types.bool;
      };
      force_disable_connectors_on_resume = mkOption {
        type = lib.types.bool;
      };
      render_drm_device = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
      ignored_drm_devices = mkOption {
        type = lib.types.listOf lib.types.str;
      };
      force_pipewire_invalid_modifier = mkOption {
        type = lib.types.bool;
      };
      emulate_zero_presentation_time = mkOption {
        type = lib.types.bool;
      };
      disable_resize_throttling = mkOption {
        type = lib.types.bool;
      };
      disable_transactions = mkOption {
        type = lib.types.bool;
      };
      keep_laptop_panel_on_when_lid_is_closed = mkOption {
        type = lib.types.bool;
      };
      disable_monitor_names = mkOption {
        type = lib.types.bool;
      };
      strict_new_window_focus_policy = mkOption {
        type = lib.types.bool;
      };
      honor_xdg_activation_with_invalid_serial = mkOption {
        type = lib.types.bool;
      };
      deactivate_unfocused_windows = mkOption {
        type = lib.types.bool;
      };
      skip_cursor_only_updates_during_vrr = mkOption {
        type = lib.types.bool;
      };
    };
  };
  WorkspaceName = {
    options = {
      WorkspaceName = mkOption {
        type = lib.types.str;
      };
    };
  };
  WorkspaceLayoutPart = {
    options = {
      WorkspaceLayoutPart = mkOption {
        type = lib.types.submodule LayoutPart;
      };
    };
  };
  Workspace = {
    options = {
      name = mkOption {
        type = lib.types.submodule WorkspaceName;
      };
      open_on_output = mkOption {
        type = lib.types.nullOr lib.types.str;
      };
      layout = mkOption {
        type = lib.types.nullOr WorkspaceLayoutPart;
      };
    };
  };
  MruHighlight = {
    options = {
      active_color = mkOption {
        type = lib.types.submodule Color;
      };
      urgent_color = mkOption {
        type = lib.types.submodule Color;
      };
      padding = mkOption {
        type = lib.types.float;
      };
      corner_radius = mkOption {
        type = lib.types.float;
      };
    };
  };
  MruPreviews = {
    options = {
      max_height = mkOption {
        type = lib.types.float;
      };
      max_scale = mkOption {
        type = lib.types.float;
      };
    };
  };
  RecentWindows = {
    options = {
      on = mkOption {
        type = lib.types.bool;
      };
      debounce_ms = mkOption {
        type = lib.types.ints.u16;
      };
      open_delay_ms = mkOption {
        type = lib.types.ints.u16;
      };
      highlight = mkOption {
        type = lib.types.submodule MruHighlight;
      };
      previews = mkOption {
        type = lib.types.submodule MruPreviews;
      };
      binds = mkOption {
        type = lib.types.listOf Bind;
      };
    };
  };
  Config = {
    options = {
      input = mkOption {
        type = lib.types.submodule Input;
      };
      outputs = mkOption {
        type = lib.types.submodule Outputs;
      };
      spawn_at_startup = mkOption {
        type = lib.types.listOf SpawnAtStartup;
      };
      spawn_sh_at_startup = mkOption {
        type = lib.types.listOf SpawnShAtStartup;
      };
      layout = mkOption {
        type = lib.types.submodule Layout;
      };
      prefer_no_csd = mkOption {
        type = lib.types.bool;
      };
      cursor = mkOption {
        type = lib.types.submodule Cursor;
      };
      screenshot_path = mkOption {
        type = lib.types.submodule ScreenshotPath;
      };
      clipboard = mkOption {
        type = lib.types.submodule Clipboard;
      };
      hotkey_overlay = mkOption {
        type = lib.types.submodule HotkeyOverlay;
      };
      config_notification = mkOption {
        type = lib.types.submodule ConfigNotification;
      };
      animations = mkOption {
        type = lib.types.submodule Animations;
      };
      blur = mkOption {
        type = lib.types.submodule Blur;
      };
      gestures = mkOption {
        type = lib.types.submodule Gestures;
      };
      overview = mkOption {
        type = lib.types.submodule Overview;
      };
      environment = mkOption {
        type = lib.types.submodule Environment;
      };
      xwayland_satellite = mkOption {
        type = lib.types.submodule XwaylandSatellite;
      };
      window_rules = mkOption {
        type = lib.types.listOf WindowRule;
      };
      layer_rules = mkOption {
        type = lib.types.listOf LayerRule;
      };
      binds = mkOption {
        type = lib.types.submodule Binds;
      };
      switch_events = mkOption {
        type = lib.types.submodule SwitchBinds;
      };
      debug = mkOption {
        type = lib.types.submodule Debug;
      };
      workspaces = mkOption {
        type = lib.types.listOf Workspace;
      };
      recent_windows = mkOption {
        type = lib.types.submodule RecentWindows;
      };
    };
  };
}
