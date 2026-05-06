{lib, ...}: let
  inherit (lib.options) mkOption;
in
  with lib.types; rec {
    Config = submodule {
      options = {
        input = mkOption {
          type = nullOr Input;
        };
        outputs = mkOption {
          type = nullOr Outputs;
        };
        spawn_at_startup = mkOption {
          type = listOf SpawnAtStartup;
          default = [];
        };
        spawn_sh_at_startup = mkOption {
          type = listOf SpawnShAtStartup;
          default = [];
        };
        layout = mkOption {
          type = nullOr Layout;
        };
        prefer_no_csd = mkOption {
          type = nullOr bool;
        };
        cursor = mkOption {
          type = nullOr Cursor;
        };
        screenshot_path = mkOption {
          type = nullOr ScreenshotPath;
        };
        clipboard = mkOption {
          type = nullOr Clipboard;
        };
        hotkey_overlay = mkOption {
          type = nullOr HotkeyOverlay;
        };
        config_notification = mkOption {
          type = nullOr ConfigNotification;
        };
        animations = mkOption {
          type = nullOr Animations;
        };
        blur = mkOption {
          type = nullOr Blur;
        };
        gestures = mkOption {
          type = nullOr Gestures;
        };
        overview = mkOption {
          type = nullOr Overview;
        };
        environment = mkOption {
          type = nullOr Environment;
        };
        xwayland_satellite = mkOption {
          type = nullOr XwaylandSatellite;
        };
        window_rules = mkOption {
          type = listOf WindowRule;
          default = [];
        };
        layer_rules = mkOption {
          type = listOf LayerRule;
          default = [];
        };
        binds = mkOption {
          type = nullOr Binds;
        };
        switch_events = mkOption {
          type = nullOr SwitchBinds;
        };
        debug = mkOption {
          type = nullOr Debug;
        };
        workspaces = mkOption {
          type = listOf Workspace;
          default = [];
        };
        recent_windows = mkOption {
          type = nullOr RecentWindows;
        };
      };
    };
    Input = submodule {
      options = {
        keyboard = mkOption {
          type = nullOr Keyboard;
        };
        touchpad = mkOption {
          type = nullOr Touchpad;
        };
        mouse = mkOption {
          type = nullOr Mouse;
        };
        trackpoint = mkOption {
          type = nullOr Trackpoint;
        };
        trackball = mkOption {
          type = nullOr Trackball;
        };
        tablet = mkOption {
          type = nullOr Tablet;
        };
        touch = mkOption {
          type = nullOr Touch;
        };
        disable_power_key_handling = mkOption {
          type = nullOr bool;
        };
        warp_mouse_to_focus = mkOption {
          type = nullOr WarpMouseToFocus;
        };
        focus_follows_mouse = mkOption {
          type = nullOr FocusFollowsMouse;
        };
        workspace_auto_back_and_forth = mkOption {
          type = nullOr bool;
        };
        mod_key = mkOption {
          type = nullOr ModKey;
        };
        mod_key_nested = mkOption {
          type = nullOr ModKey;
        };
      };
    };
    Keyboard = submodule {
      options = {
        xkb = mkOption {
          type = nullOr Xkb;
        };
        repeat_delay = mkOption {
          type = nullOr (ints.u16);
        };
        repeat_rate = mkOption {
          type = nullOr (ints.u8);
        };
        track_layout = mkOption {
          type = nullOr TrackLayout;
        };
        numlock = mkOption {
          type = nullOr bool;
        };
      };
    };
    Xkb = submodule {
      options = {
        rules = mkOption {
          type = nullOr str;
        };
        model = mkOption {
          type = nullOr str;
        };
        layout = mkOption {
          type = nullOr str;
        };
        variant = mkOption {
          type = nullOr str;
        };
        options = mkOption {
          type = nullOr str;
        };
        file = mkOption {
          type = nullOr str;
        };
      };
    };
    TrackLayout = enum [
      "global"
      "window"
    ];
    Touchpad = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        tap = mkOption {
          type = nullOr bool;
        };
        dwt = mkOption {
          type = nullOr bool;
        };
        dwtp = mkOption {
          type = nullOr bool;
        };
        drag = mkOption {
          type = nullOr bool;
        };
        drag_lock = mkOption {
          type = nullOr bool;
        };
        natural_scroll = mkOption {
          type = nullOr bool;
        };
        click_method = mkOption {
          type = nullOr ClickMethod;
        };
        accel_speed = mkOption {
          type = nullOr (either float int);
        };
        accel_profile = mkOption {
          type = nullOr AccelProfile;
        };
        scroll_method = mkOption {
          type = nullOr ScrollMethod;
        };
        scroll_button = mkOption {
          type = nullOr (ints.u32);
        };
        scroll_button_lock = mkOption {
          type = nullOr bool;
        };
        tap_button_map = mkOption {
          type = nullOr TapButtonMap;
        };
        left_handed = mkOption {
          type = nullOr bool;
        };
        disabled_on_external_mouse = mkOption {
          type = nullOr bool;
        };
        middle_emulation = mkOption {
          type = nullOr bool;
        };
        scroll_factor = mkOption {
          type = nullOr ScrollFactor;
        };
      };
    };
    ClickMethod = enum [
      "clickfinger"
      "buttonareas"
    ];
    AccelProfile = enum [
      "adaptive"
      "flat"
    ];
    ScrollMethod = enum [
      "noscroll"
      "twofinger"
      "edge"
      "onbuttondown"
    ];
    TapButtonMap = enum [
      "leftrightmiddle"
      "leftmiddleright"
    ];
    ScrollFactor = submodule {
      options = {
        base = mkOption {
          type = nullOr (either float int);
        };
        horizontal = mkOption {
          type = nullOr (either float int);
        };
        vertical = mkOption {
          type = nullOr (either float int);
        };
      };
    };
    Mouse = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        natural_scroll = mkOption {
          type = nullOr bool;
        };
        accel_speed = mkOption {
          type = nullOr (either float int);
        };
        accel_profile = mkOption {
          type = nullOr AccelProfile;
        };
        scroll_method = mkOption {
          type = nullOr ScrollMethod;
        };
        scroll_button = mkOption {
          type = nullOr (ints.u32);
        };
        scroll_button_lock = mkOption {
          type = nullOr bool;
        };
        left_handed = mkOption {
          type = nullOr bool;
        };
        middle_emulation = mkOption {
          type = nullOr bool;
        };
        scroll_factor = mkOption {
          type = nullOr ScrollFactor;
        };
      };
    };
    Trackpoint = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        natural_scroll = mkOption {
          type = nullOr bool;
        };
        accel_speed = mkOption {
          type = nullOr (either float int);
        };
        accel_profile = mkOption {
          type = nullOr AccelProfile;
        };
        scroll_method = mkOption {
          type = nullOr ScrollMethod;
        };
        scroll_button = mkOption {
          type = nullOr (ints.u32);
        };
        scroll_button_lock = mkOption {
          type = nullOr bool;
        };
        left_handed = mkOption {
          type = nullOr bool;
        };
        middle_emulation = mkOption {
          type = nullOr bool;
        };
      };
    };
    Trackball = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        natural_scroll = mkOption {
          type = nullOr bool;
        };
        accel_speed = mkOption {
          type = nullOr (either float int);
        };
        accel_profile = mkOption {
          type = nullOr AccelProfile;
        };
        scroll_method = mkOption {
          type = nullOr ScrollMethod;
        };
        scroll_button = mkOption {
          type = nullOr (ints.u32);
        };
        scroll_button_lock = mkOption {
          type = nullOr bool;
        };
        left_handed = mkOption {
          type = nullOr bool;
        };
        middle_emulation = mkOption {
          type = nullOr bool;
        };
      };
    };
    Tablet = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        calibration_matrix = mkOption {
          type = nullOr (listOf float);
        };
        map_to_output = mkOption {
          type = nullOr str;
        };
        map_to_focused_output = mkOption {
          type = nullOr bool;
        };
        map_to_focused_window = mkOption {
          type = nullOr bool;
        };
        left_handed = mkOption {
          type = nullOr bool;
        };
      };
    };
    Touch = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        calibration_matrix = mkOption {
          type = nullOr (listOf float);
        };
        map_to_output = mkOption {
          type = nullOr str;
        };
      };
    };
    WarpMouseToFocus = submodule {
      options = {
        mode = mkOption {
          type = nullOr WarpMouseToFocusMode;
        };
      };
    };
    WarpMouseToFocusMode = enum [
      "centerxy"
      "centerxyalways"
    ];
    FocusFollowsMouse = submodule {
      options = {
        max_scroll_amount = mkOption {
          type = nullOr Percent;
        };
      };
    };
    Percent = float;
    ModKey = enum [
      "ctrl"
      "shift"
      "alt"
      "super"
      "isolevel3shift"
      "isolevel5shift"
    ];
    Outputs = listOf Output;
    Output = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        name = mkOption {
          type = nullOr str;
        };
        scale = mkOption {
          type = nullOr (either float int);
        };
        transform = mkOption {
          type = nullOr Transform;
        };
        position = mkOption {
          type = nullOr Position;
        };
        mode = mkOption {
          type = nullOr Mode;
        };
        modeline = mkOption {
          type = nullOr Modeline;
        };
        variable_refresh_rate = mkOption {
          type = nullOr Vrr;
        };
        focus_at_startup = mkOption {
          type = nullOr bool;
        };
        background_color = mkOption {
          type = nullOr str;
        };
        backdrop_color = mkOption {
          type = nullOr str;
        };
        hot_corners = mkOption {
          type = nullOr HotCorners;
        };
        layout = mkOption {
          type = nullOr LayoutPart;
        };
      };
    };
    Transform = enum [
      "normal"
      "_90"
      "_180"
      "_270"
      "flipped"
      "flipped90"
      "flipped180"
      "flipped270"
    ];
    Position = submodule {
      options = {
        x = mkOption {
          type = ints.s32;
        };
        y = mkOption {
          type = ints.s32;
        };
      };
    };
    Mode = submodule {
      options = {
        custom = mkOption {
          type = bool;
        };
        mode = mkOption {
          type = ConfiguredMode;
        };
      };
    };
    ConfiguredMode = submodule {
      options = {
        width = mkOption {
          type = ints.u16;
        };
        height = mkOption {
          type = ints.u16;
        };
        refresh = mkOption {
          type = nullOr float;
        };
      };
    };
    Modeline = submodule {
      options = {
        clock = mkOption {
          type = float;
        };
        hdisplay = mkOption {
          type = ints.u16;
        };
        hsync_start = mkOption {
          type = ints.u16;
        };
        hsync_end = mkOption {
          type = ints.u16;
        };
        htotal = mkOption {
          type = ints.u16;
        };
        vdisplay = mkOption {
          type = ints.u16;
        };
        vsync_start = mkOption {
          type = ints.u16;
        };
        vsync_end = mkOption {
          type = ints.u16;
        };
        vtotal = mkOption {
          type = ints.u16;
        };
        hsync_polarity = mkOption {
          type = HSyncPolarity;
        };
        vsync_polarity = mkOption {
          type = VSyncPolarity;
        };
      };
    };
    HSyncPolarity = enum [
      "phsync"
      "nhsync"
    ];
    VSyncPolarity = enum [
      "pvsync"
      "nvsync"
    ];
    Vrr = submodule {
      options = {
        on_demand = mkOption {
          type = nullOr bool;
        };
      };
    };
    HotCorners = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        top_left = mkOption {
          type = nullOr bool;
        };
        top_right = mkOption {
          type = nullOr bool;
        };
        bottom_left = mkOption {
          type = nullOr bool;
        };
        bottom_right = mkOption {
          type = nullOr bool;
        };
      };
    };
    LayoutPart = submodule {
      options = {
        focus_ring = mkOption {
          type = nullOr BorderRule;
        };
        border = mkOption {
          type = nullOr BorderRule;
        };
        shadow = mkOption {
          type = nullOr ShadowRule;
        };
        tab_indicator = mkOption {
          type = nullOr TabIndicatorPart;
        };
        insert_hint = mkOption {
          type = nullOr InsertHintPart;
        };
        preset_column_widths = mkOption {
          type = nullOr (listOf PresetSize);
        };
        default_column_width = mkOption {
          type = nullOr DefaultPresetSize;
        };
        preset_window_heights = mkOption {
          type = nullOr (listOf PresetSize);
        };
        center_focused_column = mkOption {
          type = nullOr CenterFocusedColumn;
        };
        always_center_single_column = mkOption {
          type = nullOr Flag;
        };
        empty_workspace_above_first = mkOption {
          type = nullOr Flag;
        };
        default_column_display = mkOption {
          type = nullOr ColumnDisplay;
        };
        gaps = mkOption {
          type = nullOr (either float int);
        };
        struts = mkOption {
          type = nullOr Struts;
        };
        background_color = mkOption {
          type = nullOr str;
        };
      };
    };
    BorderRule = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        on = mkOption {
          type = nullOr bool;
        };
        width = mkOption {
          type = nullOr (either float int);
        };
        active_color = mkOption {
          type = nullOr str;
        };
        inactive_color = mkOption {
          type = nullOr str;
        };
        urgent_color = mkOption {
          type = nullOr str;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    Gradient = submodule {
      options = {
        from = mkOption {
          type = str;
        };
        to = mkOption {
          type = str;
        };
        angle = mkOption {
          type = ints.s16;
        };
        relative_to = mkOption {
          type = GradientRelativeTo;
        };
        in_ = mkOption {
          type = GradientInterpolation;
        };
      };
    };
    GradientRelativeTo = enum [
      "window"
      "workspaceview"
    ];
    GradientInterpolation = submodule {
      options = {
        color_space = mkOption {
          type = nullOr GradientColorSpace;
        };
        hue_interpolation = mkOption {
          type = nullOr HueInterpolation;
        };
      };
    };
    GradientColorSpace = enum [
      "srgb"
      "srgblinear"
      "oklab"
      "oklch"
    ];
    HueInterpolation = enum [
      "shorter"
      "longer"
      "increasing"
      "decreasing"
    ];
    ShadowRule = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        on = mkOption {
          type = nullOr bool;
        };
        offset = mkOption {
          type = nullOr ShadowOffset;
        };
        softness = mkOption {
          type = nullOr (either float int);
        };
        spread = mkOption {
          type = nullOr (either float int);
        };
        draw_behind_window = mkOption {
          type = nullOr bool;
        };
        color = mkOption {
          type = nullOr str;
        };
        inactive_color = mkOption {
          type = nullOr str;
        };
      };
    };
    ShadowOffset = submodule {
      options = {
        x = mkOption {
          type = either float int;
        };
        y = mkOption {
          type = either float int;
        };
      };
    };
    TabIndicatorPart = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        on = mkOption {
          type = nullOr bool;
        };
        hide_when_single_tab = mkOption {
          type = nullOr Flag;
        };
        place_within_column = mkOption {
          type = nullOr Flag;
        };
        gap = mkOption {
          type = nullOr (either float int);
        };
        width = mkOption {
          type = nullOr (either float int);
        };
        length = mkOption {
          type = nullOr TabIndicatorLength;
        };
        position = mkOption {
          type = nullOr TabIndicatorPosition;
        };
        gaps_between_tabs = mkOption {
          type = nullOr (either float int);
        };
        corner_radius = mkOption {
          type = nullOr (either float int);
        };
        active_color = mkOption {
          type = nullOr str;
        };
        inactive_color = mkOption {
          type = nullOr str;
        };
        urgent_color = mkOption {
          type = nullOr str;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    Flag = bool;
    TabIndicatorLength = submodule {
      options = {
        total_proportion = mkOption {
          type = nullOr float;
        };
      };
    };
    TabIndicatorPosition = enum [
      "left"
      "right"
      "top"
      "bottom"
    ];
    InsertHintPart = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        on = mkOption {
          type = nullOr bool;
        };
        color = mkOption {
          type = nullOr str;
        };
        gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    PresetSize = attrTag {
      Proportion = mkOption {
        type = float;
      };
      Fixed = mkOption {
        type = ints.s32;
      };
    };
    DefaultPresetSize = nullOr PresetSize;
    CenterFocusedColumn = enum [
      "never"
      "always"
      "onoverflow"
    ];
    ColumnDisplay = enum [
      "normal"
      "tabbed"
    ];
    Struts = submodule {
      options = {
        left = mkOption {
          type = nullOr (either float int);
        };
        right = mkOption {
          type = nullOr (either float int);
        };
        top = mkOption {
          type = nullOr (either float int);
        };
        bottom = mkOption {
          type = nullOr (either float int);
        };
      };
    };
    SpawnAtStartup = submodule {
      options = {
        command = mkOption {
          type = listOf str;
          default = [];
        };
      };
    };
    SpawnShAtStartup = submodule {
      options = {
        command = mkOption {
          type = str;
        };
      };
    };
    Layout = submodule {
      options = {
        focus_ring = mkOption {
          type = nullOr FocusRing;
        };
        border = mkOption {
          type = nullOr Border;
        };
        shadow = mkOption {
          type = nullOr Shadow;
        };
        tab_indicator = mkOption {
          type = nullOr TabIndicator;
        };
        insert_hint = mkOption {
          type = nullOr InsertHint;
        };
        preset_column_widths = mkOption {
          type = listOf PresetSize;
          default = [];
        };
        default_column_width = mkOption {
          type = nullOr PresetSize;
        };
        preset_window_heights = mkOption {
          type = listOf PresetSize;
          default = [];
        };
        center_focused_column = mkOption {
          type = nullOr CenterFocusedColumn;
        };
        always_center_single_column = mkOption {
          type = nullOr bool;
        };
        empty_workspace_above_first = mkOption {
          type = nullOr bool;
        };
        default_column_display = mkOption {
          type = nullOr ColumnDisplay;
        };
        gaps = mkOption {
          type = nullOr float;
        };
        struts = mkOption {
          type = nullOr Struts;
        };
        background_color = mkOption {
          type = nullOr str;
        };
      };
    };
    FocusRing = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        width = mkOption {
          type = nullOr float;
        };
        active_color = mkOption {
          type = nullOr str;
        };
        inactive_color = mkOption {
          type = nullOr str;
        };
        urgent_color = mkOption {
          type = nullOr str;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    Border = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        width = mkOption {
          type = nullOr float;
        };
        active_color = mkOption {
          type = nullOr str;
        };
        inactive_color = mkOption {
          type = nullOr str;
        };
        urgent_color = mkOption {
          type = nullOr str;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    Shadow = submodule {
      options = {
        on = mkOption {
          type = nullOr bool;
        };
        offset = mkOption {
          type = nullOr ShadowOffset;
        };
        softness = mkOption {
          type = nullOr float;
        };
        spread = mkOption {
          type = nullOr float;
        };
        draw_behind_window = mkOption {
          type = nullOr bool;
        };
        color = mkOption {
          type = nullOr str;
        };
        inactive_color = mkOption {
          type = nullOr str;
        };
      };
    };
    TabIndicator = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        hide_when_single_tab = mkOption {
          type = nullOr bool;
        };
        place_within_column = mkOption {
          type = nullOr bool;
        };
        gap = mkOption {
          type = nullOr float;
        };
        width = mkOption {
          type = nullOr float;
        };
        length = mkOption {
          type = nullOr TabIndicatorLength;
        };
        position = mkOption {
          type = nullOr TabIndicatorPosition;
        };
        gaps_between_tabs = mkOption {
          type = nullOr float;
        };
        corner_radius = mkOption {
          type = nullOr float;
        };
        active_color = mkOption {
          type = nullOr str;
        };
        inactive_color = mkOption {
          type = nullOr str;
        };
        urgent_color = mkOption {
          type = nullOr str;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    InsertHint = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        color = mkOption {
          type = nullOr str;
        };
        gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    Cursor = submodule {
      options = {
        xcursor_theme = mkOption {
          type = nullOr str;
        };
        xcursor_size = mkOption {
          type = nullOr (ints.u8);
        };
        hide_when_typing = mkOption {
          type = nullOr bool;
        };
        hide_after_inactive_ms = mkOption {
          type = nullOr (ints.u32);
        };
      };
    };
    ScreenshotPath = nullOr str;
    Clipboard = submodule {
      options = {
        disable_primary = mkOption {
          type = nullOr bool;
        };
      };
    };
    HotkeyOverlay = submodule {
      options = {
        skip_at_startup = mkOption {
          type = nullOr bool;
        };
        hide_not_bound = mkOption {
          type = nullOr bool;
        };
      };
    };
    ConfigNotification = submodule {
      options = {
        disable_failed = mkOption {
          type = nullOr bool;
        };
      };
    };
    Animations = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        slowdown = mkOption {
          type = nullOr float;
        };
        workspace_switch = mkOption {
          type = nullOr WorkspaceSwitchAnim;
        };
        window_open = mkOption {
          type = nullOr WindowOpenAnim;
        };
        window_close = mkOption {
          type = nullOr WindowCloseAnim;
        };
        horizontal_view_movement = mkOption {
          type = nullOr HorizontalViewMovementAnim;
        };
        window_movement = mkOption {
          type = nullOr WindowMovementAnim;
        };
        window_resize = mkOption {
          type = nullOr WindowResizeAnim;
        };
        config_notification_open_close = mkOption {
          type = nullOr ConfigNotificationOpenCloseAnim;
        };
        exit_confirmation_open_close = mkOption {
          type = nullOr ExitConfirmationOpenCloseAnim;
        };
        screenshot_ui_open = mkOption {
          type = nullOr ScreenshotUiOpenAnim;
        };
        overview_open_close = mkOption {
          type = nullOr OverviewOpenCloseAnim;
        };
        recent_windows_close = mkOption {
          type = nullOr RecentWindowsCloseAnim;
        };
      };
    };
    WorkspaceSwitchAnim = Animation;
    Animation = submodule {
      options = {
        off = mkOption {
          type = bool;
        };
        kind = mkOption {
          type = Kind;
        };
      };
    };
    Kind = attrTag {
      Easing = mkOption {
        type = EasingParams;
      };
      Spring = mkOption {
        type = SpringParams;
      };
    };
    EasingParams = submodule {
      options = {
        duration_ms = mkOption {
          type = ints.u32;
        };
        curve = mkOption {
          type = Curve;
        };
      };
    };
    Curve = attrTag {
      Linear = mkOption {
        type = bool;
      };
      EaseOutQuad = mkOption {
        type = bool;
      };
      EaseOutCubic = mkOption {
        type = bool;
      };
      EaseOutExpo = mkOption {
        type = bool;
      };
      CubicBezier = mkOption {
        type = float;
      };
    };
    SpringParams = submodule {
      options = {
        damping_ratio = mkOption {
          type = float;
        };
        stiffness = mkOption {
          type = ints.u32;
        };
        epsilon = mkOption {
          type = float;
        };
      };
    };
    WindowOpenAnim = submodule {
      options = {
        anim = mkOption {
          type = nullOr Animation;
        };
        custom_shader = mkOption {
          type = nullOr str;
        };
      };
    };
    WindowCloseAnim = submodule {
      options = {
        anim = mkOption {
          type = nullOr Animation;
        };
        custom_shader = mkOption {
          type = nullOr str;
        };
      };
    };
    HorizontalViewMovementAnim = Animation;
    WindowMovementAnim = Animation;
    WindowResizeAnim = submodule {
      options = {
        anim = mkOption {
          type = nullOr Animation;
        };
        custom_shader = mkOption {
          type = nullOr str;
        };
      };
    };
    ConfigNotificationOpenCloseAnim = Animation;
    ExitConfirmationOpenCloseAnim = Animation;
    ScreenshotUiOpenAnim = Animation;
    OverviewOpenCloseAnim = Animation;
    RecentWindowsCloseAnim = Animation;
    Blur = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        passes = mkOption {
          type = nullOr (ints.u8);
        };
        offset = mkOption {
          type = nullOr float;
        };
        noise = mkOption {
          type = nullOr float;
        };
        saturation = mkOption {
          type = nullOr float;
        };
      };
    };
    Gestures = submodule {
      options = {
        dnd_edge_view_scroll = mkOption {
          type = nullOr DndEdgeViewScroll;
        };
        dnd_edge_workspace_switch = mkOption {
          type = nullOr DndEdgeWorkspaceSwitch;
        };
        hot_corners = mkOption {
          type = nullOr HotCorners;
        };
      };
    };
    DndEdgeViewScroll = submodule {
      options = {
        trigger_width = mkOption {
          type = nullOr float;
        };
        delay_ms = mkOption {
          type = nullOr (ints.u16);
        };
        max_speed = mkOption {
          type = nullOr float;
        };
      };
    };
    DndEdgeWorkspaceSwitch = submodule {
      options = {
        trigger_height = mkOption {
          type = nullOr float;
        };
        delay_ms = mkOption {
          type = nullOr (ints.u16);
        };
        max_speed = mkOption {
          type = nullOr float;
        };
      };
    };
    Overview = submodule {
      options = {
        zoom = mkOption {
          type = nullOr float;
        };
        backdrop_color = mkOption {
          type = nullOr str;
        };
        workspace_shadow = mkOption {
          type = nullOr WorkspaceShadow;
        };
      };
    };
    WorkspaceShadow = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        offset = mkOption {
          type = nullOr ShadowOffset;
        };
        softness = mkOption {
          type = nullOr float;
        };
        spread = mkOption {
          type = nullOr float;
        };
        color = mkOption {
          type = nullOr str;
        };
      };
    };
    Environment = listOf EnvironmentVariable;
    EnvironmentVariable = submodule {
      options = {
        name = mkOption {
          type = str;
        };
        value = mkOption {
          type = nullOr str;
        };
      };
    };
    XwaylandSatellite = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        path = mkOption {
          type = nullOr str;
        };
      };
    };
    WindowRule = submodule {
      options = {
        matches = mkOption {
          type = listOf Match;
          default = [];
        };
        excludes = mkOption {
          type = listOf Match;
          default = [];
        };
        default_column_width = mkOption {
          type = nullOr DefaultPresetSize;
        };
        default_window_height = mkOption {
          type = nullOr DefaultPresetSize;
        };
        open_on_output = mkOption {
          type = nullOr str;
        };
        open_on_workspace = mkOption {
          type = nullOr str;
        };
        open_maximized = mkOption {
          type = nullOr bool;
        };
        open_maximized_to_edges = mkOption {
          type = nullOr bool;
        };
        open_fullscreen = mkOption {
          type = nullOr bool;
        };
        open_floating = mkOption {
          type = nullOr bool;
        };
        open_focused = mkOption {
          type = nullOr bool;
        };
        min_width = mkOption {
          type = nullOr (ints.u16);
        };
        min_height = mkOption {
          type = nullOr (ints.u16);
        };
        max_width = mkOption {
          type = nullOr (ints.u16);
        };
        max_height = mkOption {
          type = nullOr (ints.u16);
        };
        focus_ring = mkOption {
          type = nullOr BorderRule;
        };
        border = mkOption {
          type = nullOr BorderRule;
        };
        shadow = mkOption {
          type = nullOr ShadowRule;
        };
        tab_indicator = mkOption {
          type = nullOr TabIndicatorRule;
        };
        draw_border_with_background = mkOption {
          type = nullOr bool;
        };
        opacity = mkOption {
          type = nullOr float;
        };
        geometry_corner_radius = mkOption {
          type = nullOr CornerRadius;
        };
        clip_to_geometry = mkOption {
          type = nullOr bool;
        };
        baba_is_float = mkOption {
          type = nullOr bool;
        };
        block_out_from = mkOption {
          type = nullOr BlockOutFrom;
        };
        variable_refresh_rate = mkOption {
          type = nullOr bool;
        };
        default_column_display = mkOption {
          type = nullOr ColumnDisplay;
        };
        default_floating_position = mkOption {
          type = nullOr FloatingPosition;
        };
        scroll_factor = mkOption {
          type = nullOr (either float int);
        };
        tiled_state = mkOption {
          type = nullOr bool;
        };
        background_effect = mkOption {
          type = nullOr BackgroundEffectRule;
        };
        popups = mkOption {
          type = nullOr PopupsRule;
        };
      };
    };
    Match = submodule {
      options = {
        app_id = mkOption {
          type = nullOr RegexEq;
        };
        title = mkOption {
          type = nullOr RegexEq;
        };
        is_active = mkOption {
          type = nullOr bool;
        };
        is_focused = mkOption {
          type = nullOr bool;
        };
        is_active_in_column = mkOption {
          type = nullOr bool;
        };
        is_floating = mkOption {
          type = nullOr bool;
        };
        is_window_cast_target = mkOption {
          type = nullOr bool;
        };
        is_urgent = mkOption {
          type = nullOr bool;
        };
        at_startup = mkOption {
          type = nullOr bool;
        };
      };
    };
    RegexEq = str;
    TabIndicatorRule = submodule {
      options = {
        active_color = mkOption {
          type = nullOr str;
        };
        inactive_color = mkOption {
          type = nullOr str;
        };
        urgent_color = mkOption {
          type = nullOr str;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    CornerRadius = submodule {
      options = {
        top_left = mkOption {
          type = nullOr float;
        };
        top_right = mkOption {
          type = nullOr float;
        };
        bottom_right = mkOption {
          type = nullOr float;
        };
        bottom_left = mkOption {
          type = nullOr float;
        };
      };
    };
    BlockOutFrom = enum [
      "screencast"
      "screencapture"
    ];
    FloatingPosition = submodule {
      options = {
        x = mkOption {
          type = either float int;
        };
        y = mkOption {
          type = either float int;
        };
        relative_to = mkOption {
          type = RelativeTo;
        };
      };
    };
    RelativeTo = enum [
      "topleft"
      "topright"
      "bottomleft"
      "bottomright"
      "top"
      "bottom"
      "left"
      "right"
    ];
    BackgroundEffectRule = submodule {
      options = {
        xray = mkOption {
          type = nullOr bool;
        };
        blur = mkOption {
          type = nullOr bool;
        };
        noise = mkOption {
          type = nullOr (either float int);
        };
        saturation = mkOption {
          type = nullOr (either float int);
        };
      };
    };
    PopupsRule = submodule {
      options = {
        opacity = mkOption {
          type = nullOr float;
        };
        geometry_corner_radius = mkOption {
          type = nullOr CornerRadius;
        };
        background_effect = mkOption {
          type = nullOr BackgroundEffectRule;
        };
      };
    };
    LayerRule = submodule {
      options = {
        matches = mkOption {
          type = listOf Match;
          default = [];
        };
        excludes = mkOption {
          type = listOf Match;
          default = [];
        };
        opacity = mkOption {
          type = nullOr float;
        };
        block_out_from = mkOption {
          type = nullOr BlockOutFrom;
        };
        shadow = mkOption {
          type = nullOr ShadowRule;
        };
        geometry_corner_radius = mkOption {
          type = nullOr CornerRadius;
        };
        place_within_backdrop = mkOption {
          type = nullOr bool;
        };
        baba_is_float = mkOption {
          type = nullOr bool;
        };
        background_effect = mkOption {
          type = nullOr BackgroundEffectRule;
        };
        popups = mkOption {
          type = nullOr PopupsRule;
        };
      };
    };
    Binds = listOf Bind;
    Bind = submodule {
      options = {
        key = mkOption {
          type = str;
        };
        action = mkOption {
          type = Action;
        };
        repeat = mkOption {
          type = nullOr bool;
        };
        cooldown = mkOption {
          type = nullOr (ints.u32);
        };
        allow_when_locked = mkOption {
          type = nullOr bool;
        };
        allow_inhibiting = mkOption {
          type = nullOr bool;
        };
        hotkey_overlay_title = mkOption {
          type = nullOr (nullOr str);
        };
      };
    };
    Action = attrTag {
      Quit = mkOption {
        type = bool;
      };
      ChangeVt = mkOption {
        type = ints.s32;
      };
      Suspend = mkOption {
        type = bool;
      };
      PowerOffMonitors = mkOption {
        type = bool;
      };
      PowerOnMonitors = mkOption {
        type = bool;
      };
      ToggleDebugTint = mkOption {
        type = bool;
      };
      DebugToggleOpaqueRegions = mkOption {
        type = bool;
      };
      DebugToggleDamage = mkOption {
        type = bool;
      };
      Spawn = mkOption {
        type = listOf str;
        default = [];
      };
      SpawnSh = mkOption {
        type = str;
      };
      DoScreenTransition = mkOption {
        type = nullOr (ints.u16);
      };
      write_to_disk = mkOption {
        type = bool;
      };
      CancelScreenshot = mkOption {
        type = bool;
      };
      ScreenshotTogglePointer = mkOption {
        type = bool;
      };
      Screenshot = mkOption {
        type = nullOr str;
      };
      ScreenshotScreen = mkOption {
        type = nullOr str;
      };
      ScreenshotWindow = mkOption {
        type = nullOr str;
      };
      id = mkOption {
        type = nullOr (ints.unsigned);
      };
      show_pointer = mkOption {
        type = bool;
      };
      path = mkOption {
        type = nullOr str;
      };
      ToggleKeyboardShortcutsInhibit = mkOption {
        type = bool;
      };
      CloseWindow = mkOption {
        type = bool;
      };
      CloseWindowById = mkOption {
        type = ints.unsigned;
      };
      FullscreenWindow = mkOption {
        type = bool;
      };
      FullscreenWindowById = mkOption {
        type = ints.unsigned;
      };
      ToggleWindowedFullscreen = mkOption {
        type = bool;
      };
      ToggleWindowedFullscreenById = mkOption {
        type = ints.unsigned;
      };
      FocusWindow = mkOption {
        type = ints.unsigned;
      };
      FocusWindowInColumn = mkOption {
        type = ints.u8;
      };
      FocusWindowPrevious = mkOption {
        type = bool;
      };
      FocusColumnLeft = mkOption {
        type = bool;
      };
      FocusColumnLeftUnderMouse = mkOption {
        type = bool;
      };
      FocusColumnRight = mkOption {
        type = bool;
      };
      FocusColumnRightUnderMouse = mkOption {
        type = bool;
      };
      FocusColumnFirst = mkOption {
        type = bool;
      };
      FocusColumnLast = mkOption {
        type = bool;
      };
      FocusColumnRightOrFirst = mkOption {
        type = bool;
      };
      FocusColumnLeftOrLast = mkOption {
        type = bool;
      };
      FocusColumn = mkOption {
        type = ints.unsigned;
      };
      FocusWindowOrMonitorUp = mkOption {
        type = bool;
      };
      FocusWindowOrMonitorDown = mkOption {
        type = bool;
      };
      FocusColumnOrMonitorLeft = mkOption {
        type = bool;
      };
      FocusColumnOrMonitorRight = mkOption {
        type = bool;
      };
      FocusWindowDown = mkOption {
        type = bool;
      };
      FocusWindowUp = mkOption {
        type = bool;
      };
      FocusWindowDownOrColumnLeft = mkOption {
        type = bool;
      };
      FocusWindowDownOrColumnRight = mkOption {
        type = bool;
      };
      FocusWindowUpOrColumnLeft = mkOption {
        type = bool;
      };
      FocusWindowUpOrColumnRight = mkOption {
        type = bool;
      };
      FocusWindowOrWorkspaceDown = mkOption {
        type = bool;
      };
      FocusWindowOrWorkspaceUp = mkOption {
        type = bool;
      };
      FocusWindowTop = mkOption {
        type = bool;
      };
      FocusWindowBottom = mkOption {
        type = bool;
      };
      FocusWindowDownOrTop = mkOption {
        type = bool;
      };
      FocusWindowUpOrBottom = mkOption {
        type = bool;
      };
      MoveColumnLeft = mkOption {
        type = bool;
      };
      MoveColumnRight = mkOption {
        type = bool;
      };
      MoveColumnToFirst = mkOption {
        type = bool;
      };
      MoveColumnToLast = mkOption {
        type = bool;
      };
      MoveColumnLeftOrToMonitorLeft = mkOption {
        type = bool;
      };
      MoveColumnRightOrToMonitorRight = mkOption {
        type = bool;
      };
      MoveColumnToIndex = mkOption {
        type = ints.unsigned;
      };
      MoveWindowDown = mkOption {
        type = bool;
      };
      MoveWindowUp = mkOption {
        type = bool;
      };
      MoveWindowDownOrToWorkspaceDown = mkOption {
        type = bool;
      };
      MoveWindowUpOrToWorkspaceUp = mkOption {
        type = bool;
      };
      ConsumeOrExpelWindowLeft = mkOption {
        type = bool;
      };
      ConsumeOrExpelWindowLeftById = mkOption {
        type = ints.unsigned;
      };
      ConsumeOrExpelWindowRight = mkOption {
        type = bool;
      };
      ConsumeOrExpelWindowRightById = mkOption {
        type = ints.unsigned;
      };
      ConsumeWindowIntoColumn = mkOption {
        type = bool;
      };
      ExpelWindowFromColumn = mkOption {
        type = bool;
      };
      SwapWindowLeft = mkOption {
        type = bool;
      };
      SwapWindowRight = mkOption {
        type = bool;
      };
      ToggleColumnTabbedDisplay = mkOption {
        type = bool;
      };
      SetColumnDisplay = mkOption {
        type = ColumnDisplay;
      };
      CenterColumn = mkOption {
        type = bool;
      };
      CenterWindow = mkOption {
        type = bool;
      };
      CenterWindowById = mkOption {
        type = ints.unsigned;
      };
      CenterVisibleColumns = mkOption {
        type = bool;
      };
      FocusWorkspaceDown = mkOption {
        type = bool;
      };
      FocusWorkspaceDownUnderMouse = mkOption {
        type = bool;
      };
      FocusWorkspaceUp = mkOption {
        type = bool;
      };
      FocusWorkspaceUpUnderMouse = mkOption {
        type = bool;
      };
      FocusWorkspace = mkOption {
        type = WorkspaceReference;
      };
      FocusWorkspacePrevious = mkOption {
        type = bool;
      };
      MoveWindowToWorkspaceDown = mkOption {
        type = bool;
      };
      MoveWindowToWorkspaceUp = mkOption {
        type = bool;
      };
      MoveWindowToWorkspace = mkOption {
        type = bool;
      };
      window_id = mkOption {
        type = ints.unsigned;
      };
      reference = mkOption {
        type = WorkspaceReference;
      };
      focus = mkOption {
        type = bool;
      };
      MoveColumnToWorkspaceDown = mkOption {
        type = bool;
      };
      MoveColumnToWorkspaceUp = mkOption {
        type = bool;
      };
      MoveColumnToWorkspace = mkOption {
        type = bool;
      };
      MoveWorkspaceDown = mkOption {
        type = bool;
      };
      MoveWorkspaceUp = mkOption {
        type = bool;
      };
      MoveWorkspaceToIndex = mkOption {
        type = ints.unsigned;
      };
      new_idx = mkOption {
        type = ints.unsigned;
      };
      output_name = mkOption {
        type = str;
      };
      MoveWorkspaceToMonitor = mkOption {
        type = str;
      };
      SetWorkspaceName = mkOption {
        type = str;
      };
      name = mkOption {
        type = str;
      };
      UnsetWorkspaceName = mkOption {
        type = bool;
      };
      UnsetWorkSpaceNameByRef = mkOption {
        type = WorkspaceReference;
      };
      FocusMonitorLeft = mkOption {
        type = bool;
      };
      FocusMonitorRight = mkOption {
        type = bool;
      };
      FocusMonitorDown = mkOption {
        type = bool;
      };
      FocusMonitorUp = mkOption {
        type = bool;
      };
      FocusMonitorPrevious = mkOption {
        type = bool;
      };
      FocusMonitorNext = mkOption {
        type = bool;
      };
      FocusMonitor = mkOption {
        type = str;
      };
      MoveWindowToMonitorLeft = mkOption {
        type = bool;
      };
      MoveWindowToMonitorRight = mkOption {
        type = bool;
      };
      MoveWindowToMonitorDown = mkOption {
        type = bool;
      };
      MoveWindowToMonitorUp = mkOption {
        type = bool;
      };
      MoveWindowToMonitorPrevious = mkOption {
        type = bool;
      };
      MoveWindowToMonitorNext = mkOption {
        type = bool;
      };
      MoveWindowToMonitor = mkOption {
        type = str;
      };
      output = mkOption {
        type = str;
      };
      MoveColumnToMonitorLeft = mkOption {
        type = bool;
      };
      MoveColumnToMonitorRight = mkOption {
        type = bool;
      };
      MoveColumnToMonitorDown = mkOption {
        type = bool;
      };
      MoveColumnToMonitorUp = mkOption {
        type = bool;
      };
      MoveColumnToMonitorPrevious = mkOption {
        type = bool;
      };
      MoveColumnToMonitorNext = mkOption {
        type = bool;
      };
      MoveColumnToMonitor = mkOption {
        type = str;
      };
      SetWindowWidth = mkOption {
        type = SizeChange;
      };
      change = mkOption {
        type = SizeChange;
      };
      SetWindowHeight = mkOption {
        type = SizeChange;
      };
      ResetWindowHeight = mkOption {
        type = bool;
      };
      ResetWindowHeightById = mkOption {
        type = ints.unsigned;
      };
      SwitchPresetColumnWidth = mkOption {
        type = bool;
      };
      SwitchPresetColumnWidthBack = mkOption {
        type = bool;
      };
      SwitchPresetWindowWidth = mkOption {
        type = bool;
      };
      SwitchPresetWindowWidthBack = mkOption {
        type = bool;
      };
      SwitchPresetWindowWidthById = mkOption {
        type = ints.unsigned;
      };
      SwitchPresetWindowWidthBackById = mkOption {
        type = ints.unsigned;
      };
      SwitchPresetWindowHeight = mkOption {
        type = bool;
      };
      SwitchPresetWindowHeightBack = mkOption {
        type = bool;
      };
      SwitchPresetWindowHeightById = mkOption {
        type = ints.unsigned;
      };
      SwitchPresetWindowHeightBackById = mkOption {
        type = ints.unsigned;
      };
      MaximizeColumn = mkOption {
        type = bool;
      };
      MaximizeWindowToEdges = mkOption {
        type = bool;
      };
      MaximizeWindowToEdgesById = mkOption {
        type = ints.unsigned;
      };
      SetColumnWidth = mkOption {
        type = SizeChange;
      };
      ExpandColumnToAvailableWidth = mkOption {
        type = bool;
      };
      SwitchLayout = mkOption {
        type = LayoutSwitchTarget;
      };
      ShowHotkeyOverlay = mkOption {
        type = bool;
      };
      MoveWorkspaceToMonitorLeft = mkOption {
        type = bool;
      };
      MoveWorkspaceToMonitorRight = mkOption {
        type = bool;
      };
      MoveWorkspaceToMonitorDown = mkOption {
        type = bool;
      };
      MoveWorkspaceToMonitorUp = mkOption {
        type = bool;
      };
      MoveWorkspaceToMonitorPrevious = mkOption {
        type = bool;
      };
      MoveWorkspaceToMonitorNext = mkOption {
        type = bool;
      };
      ToggleWindowFloating = mkOption {
        type = bool;
      };
      ToggleWindowFloatingById = mkOption {
        type = ints.unsigned;
      };
      MoveWindowToFloating = mkOption {
        type = bool;
      };
      MoveWindowToFloatingById = mkOption {
        type = ints.unsigned;
      };
      MoveWindowToTiling = mkOption {
        type = bool;
      };
      MoveWindowToTilingById = mkOption {
        type = ints.unsigned;
      };
      FocusFloating = mkOption {
        type = bool;
      };
      FocusTiling = mkOption {
        type = bool;
      };
      SwitchFocusBetweenFloatingAndTiling = mkOption {
        type = bool;
      };
      x = mkOption {
        type = PositionChange;
      };
      y = mkOption {
        type = PositionChange;
      };
      ToggleWindowRuleOpacity = mkOption {
        type = bool;
      };
      ToggleWindowRuleOpacityById = mkOption {
        type = ints.unsigned;
      };
      SetDynamicCastWindow = mkOption {
        type = bool;
      };
      SetDynamicCastWindowById = mkOption {
        type = ints.unsigned;
      };
      SetDynamicCastMonitor = mkOption {
        type = nullOr str;
      };
      ClearDynamicCastTarget = mkOption {
        type = bool;
      };
      StopCast = mkOption {
        type = ints.unsigned;
      };
      ToggleOverview = mkOption {
        type = bool;
      };
      OpenOverview = mkOption {
        type = bool;
      };
      CloseOverview = mkOption {
        type = bool;
      };
      ToggleWindowUrgent = mkOption {
        type = ints.unsigned;
      };
      SetWindowUrgent = mkOption {
        type = ints.unsigned;
      };
      UnsetWindowUrgent = mkOption {
        type = ints.unsigned;
      };
      LoadConfigFile = mkOption {
        type = nullOr str;
      };
      direction = mkOption {
        type = MruDirection;
      };
      scope = mkOption {
        type = nullOr MruScope;
      };
      filter = mkOption {
        type = nullOr MruFilter;
      };
      MruConfirm = mkOption {
        type = bool;
      };
      MruCancel = mkOption {
        type = bool;
      };
      MruCloseCurrentWindow = mkOption {
        type = bool;
      };
      MruFirst = mkOption {
        type = bool;
      };
      MruLast = mkOption {
        type = bool;
      };
      MruSetScope = mkOption {
        type = MruScope;
      };
      MruCycleScope = mkOption {
        type = bool;
      };
    };
    WorkspaceReference = attrTag {
      Id = mkOption {
        type = ints.unsigned;
      };
      Index = mkOption {
        type = ints.u8;
      };
      Name = mkOption {
        type = str;
      };
    };
    SizeChange = attrTag {
      SetFixed = mkOption {
        type = ints.s32;
      };
      SetProportion = mkOption {
        type = float;
      };
      AdjustFixed = mkOption {
        type = ints.s32;
      };
      AdjustProportion = mkOption {
        type = float;
      };
    };
    LayoutSwitchTarget = attrTag {
      Next = mkOption {
        type = bool;
      };
      Prev = mkOption {
        type = bool;
      };
      Index = mkOption {
        type = ints.u8;
      };
    };
    PositionChange = attrTag {
      SetFixed = mkOption {
        type = float;
      };
      SetProportion = mkOption {
        type = float;
      };
      AdjustFixed = mkOption {
        type = float;
      };
      AdjustProportion = mkOption {
        type = float;
      };
    };
    MruDirection = enum [
      "forward"
      "backward"
    ];
    MruScope = enum [
      "all"
      "output"
      "workspace"
    ];
    MruFilter = enum [
      "all"
      "appid"
    ];
    SwitchBinds = submodule {
      options = {
        lid_open = mkOption {
          type = nullOr SwitchAction;
        };
        lid_close = mkOption {
          type = nullOr SwitchAction;
        };
        tablet_mode_on = mkOption {
          type = nullOr SwitchAction;
        };
        tablet_mode_off = mkOption {
          type = nullOr SwitchAction;
        };
      };
    };
    SwitchAction = submodule {
      options = {
        spawn = mkOption {
          type = listOf str;
          default = [];
        };
      };
    };
    Debug = submodule {
      options = {
        preview_render = mkOption {
          type = nullOr PreviewRender;
        };
        dbus_interfaces_in_non_session_instances = mkOption {
          type = nullOr bool;
        };
        wait_for_frame_completion_before_queueing = mkOption {
          type = nullOr bool;
        };
        enable_overlay_planes = mkOption {
          type = nullOr bool;
        };
        disable_cursor_plane = mkOption {
          type = nullOr bool;
        };
        disable_direct_scanout = mkOption {
          type = nullOr bool;
        };
        keep_max_bpc_unchanged = mkOption {
          type = nullOr bool;
        };
        restrict_primary_scanout_to_matching_format = mkOption {
          type = nullOr bool;
        };
        force_disable_connectors_on_resume = mkOption {
          type = nullOr bool;
        };
        render_drm_device = mkOption {
          type = nullOr str;
        };
        ignored_drm_devices = mkOption {
          type = listOf str;
          default = [];
        };
        force_pipewire_invalid_modifier = mkOption {
          type = nullOr bool;
        };
        emulate_zero_presentation_time = mkOption {
          type = nullOr bool;
        };
        disable_resize_throttling = mkOption {
          type = nullOr bool;
        };
        disable_transactions = mkOption {
          type = nullOr bool;
        };
        keep_laptop_panel_on_when_lid_is_closed = mkOption {
          type = nullOr bool;
        };
        disable_monitor_names = mkOption {
          type = nullOr bool;
        };
        strict_new_window_focus_policy = mkOption {
          type = nullOr bool;
        };
        honor_xdg_activation_with_invalid_serial = mkOption {
          type = nullOr bool;
        };
        deactivate_unfocused_windows = mkOption {
          type = nullOr bool;
        };
        skip_cursor_only_updates_during_vrr = mkOption {
          type = nullOr bool;
        };
      };
    };
    PreviewRender = enum [
      "screencast"
      "screencapture"
    ];
    Workspace = submodule {
      options = {
        name = mkOption {
          type = WorkspaceName;
        };
        open_on_output = mkOption {
          type = nullOr str;
        };
        layout = mkOption {
          type = nullOr WorkspaceLayoutPart;
        };
      };
    };
    WorkspaceName = str;
    WorkspaceLayoutPart = LayoutPart;
    RecentWindows = submodule {
      options = {
        on = mkOption {
          type = nullOr bool;
        };
        debounce_ms = mkOption {
          type = nullOr (ints.u16);
        };
        open_delay_ms = mkOption {
          type = nullOr (ints.u16);
        };
        highlight = mkOption {
          type = nullOr MruHighlight;
        };
        previews = mkOption {
          type = nullOr MruPreviews;
        };
        binds = mkOption {
          type = listOf Bind;
          default = [];
        };
      };
    };
    MruHighlight = submodule {
      options = {
        active_color = mkOption {
          type = nullOr str;
        };
        urgent_color = mkOption {
          type = nullOr str;
        };
        padding = mkOption {
          type = nullOr float;
        };
        corner_radius = mkOption {
          type = nullOr float;
        };
      };
    };
    MruPreviews = submodule {
      options = {
        max_height = mkOption {
          type = nullOr float;
        };
        max_scale = mkOption {
          type = nullOr float;
        };
      };
    };
  }
