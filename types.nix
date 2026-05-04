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
        type = lib.types.nullOr;
      };
      file = mkOption {
        type = lib.types.nullOr;
      };
    };
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
        type = lib.types.nullOr;
      };
      drag_lock = mkOption {
        type = lib.types.bool;
      };
      natural_scroll = mkOption {
        type = lib.types.bool;
      };
      click_method = mkOption {
        type = lib.types.nullOr;
      };
      accel_speed = mkOption {
        type = lib.types.float;
      };
      accel_profile = mkOption {
        type = lib.types.nullOr;
      };
      scroll_method = mkOption {
        type = lib.types.nullOr;
      };
      scroll_button = mkOption {
        type = lib.types.nullOr;
      };
      scroll_button_lock = mkOption {
        type = lib.types.bool;
      };
      tap_button_map = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
      scroll_method = mkOption {
        type = lib.types.nullOr;
      };
      scroll_button = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
      scroll_method = mkOption {
        type = lib.types.nullOr;
      };
      scroll_button = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
      scroll_method = mkOption {
        type = lib.types.nullOr;
      };
      scroll_button = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
      map_to_output = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
      map_to_output = mkOption {
        type = lib.types.nullOr;
      };
    };
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
        type = lib.types.nullOr;
      };
      focus_follows_mouse = mkOption {
        type = lib.types.nullOr;
      };
      workspace_auto_back_and_forth = mkOption {
        type = lib.types.bool;
      };
      mod_key = mkOption {
        type = lib.types.nullOr;
      };
      mod_key_nested = mkOption {
        type = lib.types.nullOr;
      };
    };
  };
  Outputs = {
    options = {
      Outputs = mkOption {
        type = lib.types.listOf;
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
        type = lib.types.nullOr;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
    };
  };
  TabIndicatorLength = {
    options = {
      total_proportion = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
      inactive_color = mkOption {
        type = lib.types.nullOr;
      };
      urgent_color = mkOption {
        type = lib.types.nullOr;
      };
      active_gradient = mkOption {
        type = lib.types.nullOr;
      };
      inactive_gradient = mkOption {
        type = lib.types.nullOr;
      };
      urgent_gradient = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
    };
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
        type = lib.types.listOf;
      };
      default_column_width = mkOption {
        type = lib.types.nullOr;
      };
      preset_window_heights = mkOption {
        type = lib.types.listOf;
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
        type = lib.types.nullOr;
      };
    };
  };
  ScreenshotPath = {
    options = {
      ScreenshotPath = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
    };
  };
  WindowCloseAnim = {
    options = {
      anim = mkOption {
        type = lib.types.submodule Animation;
      };
      custom_shader = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
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
  Overview = {
    options = {
      is_open = mkOption {
        type = lib.types.bool;
      };
    };
  };
  Environment = {
    options = {
      Environment = mkOption {
        type = lib.types.listOf;
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
  Binds = {
    options = {
      Binds = mkOption {
        type = lib.types.listOf;
      };
    };
  };
  SwitchBinds = {
    options = {
      lid_open = mkOption {
        type = lib.types.nullOr;
      };
      lid_close = mkOption {
        type = lib.types.nullOr;
      };
      tablet_mode_on = mkOption {
        type = lib.types.nullOr;
      };
      tablet_mode_off = mkOption {
        type = lib.types.nullOr;
      };
    };
  };
  Debug = {
    options = {
      preview_render = mkOption {
        type = lib.types.nullOr;
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
        type = lib.types.nullOr;
      };
      ignored_drm_devices = mkOption {
        type = lib.types.listOf;
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
        type = lib.types.listOf;
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
        type = lib.types.listOf;
      };
      spawn_sh_at_startup = mkOption {
        type = lib.types.listOf;
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
        type = lib.types.listOf;
      };
      layer_rules = mkOption {
        type = lib.types.listOf;
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
        type = lib.types.listOf;
      };
      recent_windows = mkOption {
        type = lib.types.submodule RecentWindows;
      };
    };
  };
}
