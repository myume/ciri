{lib, ...}: let
  inherit (lib.options) mkOption;
in
  with lib.types; rec {
    Xkb = submodule {
      options = {
        rules = mkOption {type = str;};
        model = mkOption {type = str;};
        layout = mkOption {type = str;};
        variant = mkOption {type = str;};
        options = mkOption {type = nullOr str;};
        file = mkOption {type = nullOr str;};
      };
    };
    TrackLayout = mkOption {type = enum ["global window"];};
    Keyboard = submodule {
      options = {
        xkb = mkOption {type = Xkb;};
        repeat_delay = mkOption {type = ints.u16;};
        repeat_rate = mkOption {type = ints.u8;};
        track_layout = TrackLayout;
        numlock = mkOption {type = bool;};
      };
    };
    ClickMethod = mkOption {type = enum ["clickfinger buttonareas"];};
    AccelProfile = mkOption {type = enum ["adaptive flat"];};
    ScrollMethod = mkOption {type = enum ["noscroll twofinger edge onbuttondown"];};
    TapButtonMap = mkOption {type = enum ["leftrightmiddle leftmiddleright"];};
    ScrollFactor = submodule {
      options = {
        base = mkOption {type = nullOr float;};
        horizontal = mkOption {type = nullOr float;};
        vertical = mkOption {type = nullOr float;};
      };
    };
    Touchpad = submodule {
      options = {
        off = mkOption {type = bool;};
        tap = mkOption {type = bool;};
        dwt = mkOption {type = bool;};
        dwtp = mkOption {type = bool;};
        drag = mkOption {type = nullOr bool;};
        drag_lock = mkOption {type = bool;};
        natural_scroll = mkOption {type = bool;};
        click_method = mkOption {type = nullOr ClickMethod;};
        accel_speed = mkOption {type = float;};
        accel_profile = mkOption {type = nullOr AccelProfile;};
        scroll_method = mkOption {type = nullOr ScrollMethod;};
        scroll_button = mkOption {type = nullOr ints.u32;};
        scroll_button_lock = mkOption {type = bool;};
        tap_button_map = mkOption {type = nullOr TapButtonMap;};
        left_handed = mkOption {type = bool;};
        disabled_on_external_mouse = mkOption {type = bool;};
        middle_emulation = mkOption {type = bool;};
        scroll_factor = mkOption {type = nullOr ScrollFactor;};
      };
    };
    Mouse = submodule {
      options = {
        off = mkOption {type = bool;};
        natural_scroll = mkOption {type = bool;};
        accel_speed = mkOption {type = float;};
        accel_profile = mkOption {type = nullOr AccelProfile;};
        scroll_method = mkOption {type = nullOr ScrollMethod;};
        scroll_button = mkOption {type = nullOr ints.u32;};
        scroll_button_lock = mkOption {type = bool;};
        left_handed = mkOption {type = bool;};
        middle_emulation = mkOption {type = bool;};
        scroll_factor = mkOption {type = nullOr ScrollFactor;};
      };
    };
    Trackpoint = submodule {
      options = {
        off = mkOption {type = bool;};
        natural_scroll = mkOption {type = bool;};
        accel_speed = mkOption {type = float;};
        accel_profile = mkOption {type = nullOr AccelProfile;};
        scroll_method = mkOption {type = nullOr ScrollMethod;};
        scroll_button = mkOption {type = nullOr ints.u32;};
        scroll_button_lock = mkOption {type = bool;};
        left_handed = mkOption {type = bool;};
        middle_emulation = mkOption {type = bool;};
      };
    };
    Trackball = submodule {
      options = {
        off = mkOption {type = bool;};
        natural_scroll = mkOption {type = bool;};
        accel_speed = mkOption {type = float;};
        accel_profile = mkOption {type = nullOr AccelProfile;};
        scroll_method = mkOption {type = nullOr ScrollMethod;};
        scroll_button = mkOption {type = nullOr ints.u32;};
        scroll_button_lock = mkOption {type = bool;};
        left_handed = mkOption {type = bool;};
        middle_emulation = mkOption {type = bool;};
      };
    };
    Tablet = submodule {
      options = {
        off = mkOption {type = bool;};
        calibration_matrix = mkOption {type = nullOr listOf float;};
        map_to_output = mkOption {type = nullOr str;};
        map_to_focused_output = mkOption {type = bool;};
        map_to_focused_window = mkOption {type = bool;};
        left_handed = mkOption {type = bool;};
      };
    };
    Touch = submodule {
      options = {
        off = mkOption {type = bool;};
        calibration_matrix = mkOption {type = nullOr listOf float;};
        map_to_output = mkOption {type = nullOr str;};
      };
    };
    WarpMouseToFocusMode = mkOption {type = enum ["centerxy centerxyalways"];};
    WarpMouseToFocus = submodule {options = {mode = mkOption {type = nullOr WarpMouseToFocusMode;};};};
    Percent = submodule {options = {Percent = mkOption {type = float;};};};
    FocusFollowsMouse = submodule {options = {max_scroll_amount = mkOption {type = nullOr Percent;};};};
    ModKey = mkOption {type = enum ["ctrl shift alt super isolevel3shift isolevel5shift"];};
    Input = submodule {
      options = {
        keyboard = mkOption {type = Keyboard;};
        touchpad = mkOption {type = Touchpad;};
        mouse = mkOption {type = Mouse;};
        trackpoint = mkOption {type = Trackpoint;};
        trackball = mkOption {type = Trackball;};
        tablet = mkOption {type = Tablet;};
        touch = mkOption {type = Touch;};
        disable_power_key_handling = mkOption {type = bool;};
        warp_mouse_to_focus = mkOption {type = nullOr WarpMouseToFocus;};
        focus_follows_mouse = mkOption {type = nullOr FocusFollowsMouse;};
        workspace_auto_back_and_forth = mkOption {type = bool;};
        mod_key = mkOption {type = nullOr ModKey;};
        mod_key_nested = mkOption {type = nullOr ModKey;};
      };
    };
    Transform = mkOption {type = enum ["normal _90 _180 _270 flipped flipped90 flipped180 flipped270"];};
    Position = submodule {
      options = {
        x = mkOption {type = ints.s32;};
        y = mkOption {type = ints.s32;};
      };
    };
    ConfiguredMode = submodule {
      options = {
        width = mkOption {type = ints.u16;};
        height = mkOption {type = ints.u16;};
        refresh = mkOption {type = nullOr float;};
      };
    };
    Mode = submodule {
      options = {
        custom = mkOption {type = bool;};
        mode = mkOption {type = ConfiguredMode;};
      };
    };
    Modeline = submodule {
      options = {
        clock = mkOption {type = float;};
        hdisplay = mkOption {type = ints.u16;};
        hsync_start = mkOption {type = ints.u16;};
        hsync_end = mkOption {type = ints.u16;};
        htotal = mkOption {type = ints.u16;};
        vdisplay = mkOption {type = ints.u16;};
        vsync_start = mkOption {type = ints.u16;};
        vsync_end = mkOption {type = ints.u16;};
        vtotal = mkOption {type = ints.u16;};
        hsync_polarity = mkOption {type = niri_ipc;};
        vsync_polarity = mkOption {type = niri_ipc;};
      };
    };
    Vrr = submodule {options = {on_demand = mkOption {type = bool;};};};
    Color = submodule {
      options = {
        r = mkOption {type = float;};
        g = mkOption {type = float;};
        b = mkOption {type = float;};
        a = mkOption {type = float;};
      };
    };
    HotCorners = submodule {
      options = {
        off = mkOption {type = bool;};
        top_left = mkOption {type = bool;};
        top_right = mkOption {type = bool;};
        bottom_left = mkOption {type = bool;};
        bottom_right = mkOption {type = bool;};
      };
    };
    GradientRelativeTo = mkOption {type = enum ["window workspaceview"];};
    GradientColorSpace = mkOption {type = enum ["srgb srgblinear oklab oklch"];};
    HueInterpolation = mkOption {type = enum ["shorter longer increasing decreasing"];};
    GradientInterpolation = submodule {
      options = {
        color_space = GradientColorSpace;
        hue_interpolation = HueInterpolation;
      };
    };
    Gradient = submodule {
      options = {
        from = mkOption {type = Color;};
        to = mkOption {type = Color;};
        angle = mkOption {type = ints.s16;};
        relative_to = GradientRelativeTo;
        in_ = mkOption {type = GradientInterpolation;};
      };
    };
    BorderRule = submodule {
      options = {
        off = mkOption {type = bool;};
        on = mkOption {type = bool;};
        width = mkOption {type = nullOr float;};
        active_color = mkOption {type = nullOr Color;};
        inactive_color = mkOption {type = nullOr Color;};
        urgent_color = mkOption {type = nullOr Color;};
        active_gradient = mkOption {type = nullOr Gradient;};
        inactive_gradient = mkOption {type = nullOr Gradient;};
        urgent_gradient = mkOption {type = nullOr Gradient;};
      };
    };
    ShadowOffset = submodule {
      options = {
        x = mkOption {type = float;};
        y = mkOption {type = float;};
      };
    };
    ShadowRule = submodule {
      options = {
        off = mkOption {type = bool;};
        on = mkOption {type = bool;};
        offset = mkOption {type = nullOr ShadowOffset;};
        softness = mkOption {type = nullOr float;};
        spread = mkOption {type = nullOr float;};
        draw_behind_window = mkOption {type = nullOr bool;};
        color = mkOption {type = nullOr Color;};
        inactive_color = mkOption {type = nullOr Color;};
      };
    };
    Flag = submodule {options = {Flag = mkOption {type = bool;};};};
    TabIndicatorLength = submodule {options = {total_proportion = mkOption {type = nullOr float;};};};
    TabIndicatorPosition = mkOption {type = enum ["left right top bottom"];};
    TabIndicatorPart = submodule {
      options = {
        off = mkOption {type = bool;};
        on = mkOption {type = bool;};
        hide_when_single_tab = mkOption {type = nullOr Flag;};
        place_within_column = mkOption {type = nullOr Flag;};
        gap = mkOption {type = nullOr float;};
        width = mkOption {type = nullOr float;};
        length = mkOption {type = nullOr TabIndicatorLength;};
        position = mkOption {type = nullOr TabIndicatorPosition;};
        gaps_between_tabs = mkOption {type = nullOr float;};
        corner_radius = mkOption {type = nullOr float;};
        active_color = mkOption {type = nullOr Color;};
        inactive_color = mkOption {type = nullOr Color;};
        urgent_color = mkOption {type = nullOr Color;};
        active_gradient = mkOption {type = nullOr Gradient;};
        inactive_gradient = mkOption {type = nullOr Gradient;};
        urgent_gradient = mkOption {type = nullOr Gradient;};
      };
    };
    InsertHintPart = submodule {
      options = {
        off = mkOption {type = bool;};
        on = mkOption {type = bool;};
        color = mkOption {type = nullOr Color;};
        gradient = mkOption {type = nullOr Gradient;};
      };
    };
    PresetSize = mkOption {type = enum ["proportion fixed"];};
    DefaultPresetSize = submodule {options = {DefaultPresetSize = mkOption {type = nullOr PresetSize;};};};
    CenterFocusedColumn = mkOption {type = enum ["never always onoverflow"];};
    ColumnDisplay = mkOption {type = enum ["normal tabbed"];};
    Struts = submodule {
      options = {
        left = mkOption {type = float;};
        right = mkOption {type = float;};
        top = mkOption {type = float;};
        bottom = mkOption {type = float;};
      };
    };
    LayoutPart = submodule {
      options = {
        focus_ring = mkOption {type = nullOr BorderRule;};
        border = mkOption {type = nullOr BorderRule;};
        shadow = mkOption {type = nullOr ShadowRule;};
        tab_indicator = mkOption {type = nullOr TabIndicatorPart;};
        insert_hint = mkOption {type = nullOr InsertHintPart;};
        preset_column_widths = mkOption {type = nullOr listOf PresetSize;};
        default_column_width = mkOption {type = nullOr DefaultPresetSize;};
        preset_window_heights = mkOption {type = nullOr listOf PresetSize;};
        center_focused_column = mkOption {type = nullOr CenterFocusedColumn;};
        always_center_single_column = mkOption {type = nullOr Flag;};
        empty_workspace_above_first = mkOption {type = nullOr Flag;};
        default_column_display = mkOption {type = nullOr ColumnDisplay;};
        gaps = mkOption {type = nullOr float;};
        struts = mkOption {type = nullOr Struts;};
        background_color = mkOption {type = nullOr Color;};
      };
    };
    Output = submodule {
      options = {
        off = mkOption {type = bool;};
        name = mkOption {type = str;};
        scale = mkOption {type = nullOr float;};
        transform = Transform;
        position = mkOption {type = nullOr Position;};
        mode = mkOption {type = nullOr Mode;};
        modeline = mkOption {type = nullOr Modeline;};
        variable_refresh_rate = mkOption {type = nullOr Vrr;};
        focus_at_startup = mkOption {type = bool;};
        background_color = mkOption {type = nullOr Color;};
        backdrop_color = mkOption {type = nullOr Color;};
        hot_corners = mkOption {type = nullOr HotCorners;};
        layout = mkOption {type = nullOr LayoutPart;};
      };
    };
    Outputs = submodule {options = {Outputs = mkOption {type = listOf Output;};};};
    SpawnAtStartup = submodule {options = {command = mkOption {type = listOf str;};};};
    SpawnShAtStartup = submodule {options = {command = mkOption {type = str;};};};
    FocusRing = submodule {
      options = {
        off = mkOption {type = bool;};
        width = mkOption {type = float;};
        active_color = mkOption {type = Color;};
        inactive_color = mkOption {type = Color;};
        urgent_color = mkOption {type = Color;};
        active_gradient = mkOption {type = nullOr Gradient;};
        inactive_gradient = mkOption {type = nullOr Gradient;};
        urgent_gradient = mkOption {type = nullOr Gradient;};
      };
    };
    Border = submodule {
      options = {
        off = mkOption {type = bool;};
        width = mkOption {type = float;};
        active_color = mkOption {type = Color;};
        inactive_color = mkOption {type = Color;};
        urgent_color = mkOption {type = Color;};
        active_gradient = mkOption {type = nullOr Gradient;};
        inactive_gradient = mkOption {type = nullOr Gradient;};
        urgent_gradient = mkOption {type = nullOr Gradient;};
      };
    };
    Shadow = submodule {
      options = {
        on = mkOption {type = bool;};
        offset = mkOption {type = ShadowOffset;};
        softness = mkOption {type = float;};
        spread = mkOption {type = float;};
        draw_behind_window = mkOption {type = bool;};
        color = mkOption {type = Color;};
        inactive_color = mkOption {type = nullOr Color;};
      };
    };
    TabIndicator = submodule {
      options = {
        off = mkOption {type = bool;};
        hide_when_single_tab = mkOption {type = bool;};
        place_within_column = mkOption {type = bool;};
        gap = mkOption {type = float;};
        width = mkOption {type = float;};
        length = mkOption {type = TabIndicatorLength;};
        position = TabIndicatorPosition;
        gaps_between_tabs = mkOption {type = float;};
        corner_radius = mkOption {type = float;};
        active_color = mkOption {type = nullOr Color;};
        inactive_color = mkOption {type = nullOr Color;};
        urgent_color = mkOption {type = nullOr Color;};
        active_gradient = mkOption {type = nullOr Gradient;};
        inactive_gradient = mkOption {type = nullOr Gradient;};
        urgent_gradient = mkOption {type = nullOr Gradient;};
      };
    };
    InsertHint = submodule {
      options = {
        off = mkOption {type = bool;};
        color = mkOption {type = Color;};
        gradient = mkOption {type = nullOr Gradient;};
      };
    };
    Layout = submodule {
      options = {
        focus_ring = mkOption {type = FocusRing;};
        border = mkOption {type = Border;};
        shadow = mkOption {type = Shadow;};
        tab_indicator = mkOption {type = TabIndicator;};
        insert_hint = mkOption {type = InsertHint;};
        preset_column_widths = mkOption {type = listOf PresetSize;};
        default_column_width = mkOption {type = nullOr PresetSize;};
        preset_window_heights = mkOption {type = listOf PresetSize;};
        center_focused_column = CenterFocusedColumn;
        always_center_single_column = mkOption {type = bool;};
        empty_workspace_above_first = mkOption {type = bool;};
        default_column_display = ColumnDisplay;
        gaps = mkOption {type = float;};
        struts = mkOption {type = Struts;};
        background_color = mkOption {type = Color;};
      };
    };
    Cursor = submodule {
      options = {
        xcursor_theme = mkOption {type = str;};
        xcursor_size = mkOption {type = ints.u8;};
        hide_when_typing = mkOption {type = bool;};
        hide_after_inactive_ms = mkOption {type = nullOr ints.u32;};
      };
    };
    ScreenshotPath = submodule {options = {ScreenshotPath = mkOption {type = nullOr str;};};};
    Clipboard = submodule {options = {disable_primary = mkOption {type = bool;};};};
    HotkeyOverlay = submodule {
      options = {
        skip_at_startup = mkOption {type = bool;};
        hide_not_bound = mkOption {type = bool;};
      };
    };
    ConfigNotification = submodule {options = {disable_failed = mkOption {type = bool;};};};
    Kind = mkOption {type = enum ["easing spring"];};
    Animation = submodule {
      options = {
        off = mkOption {type = bool;};
        kind = Kind;
      };
    };
    WorkspaceSwitchAnim = submodule {options = {WorkspaceSwitchAnim = mkOption {type = Animation;};};};
    WindowOpenAnim = submodule {
      options = {
        anim = mkOption {type = Animation;};
        custom_shader = mkOption {type = nullOr str;};
      };
    };
    WindowCloseAnim = submodule {
      options = {
        anim = mkOption {type = Animation;};
        custom_shader = mkOption {type = nullOr str;};
      };
    };
    HorizontalViewMovementAnim = submodule {options = {HorizontalViewMovementAnim = mkOption {type = Animation;};};};
    WindowMovementAnim = submodule {options = {WindowMovementAnim = mkOption {type = Animation;};};};
    WindowResizeAnim = submodule {
      options = {
        anim = mkOption {type = Animation;};
        custom_shader = mkOption {type = nullOr str;};
      };
    };
    ConfigNotificationOpenCloseAnim = submodule {options = {ConfigNotificationOpenCloseAnim = mkOption {type = Animation;};};};
    ExitConfirmationOpenCloseAnim = submodule {options = {ExitConfirmationOpenCloseAnim = mkOption {type = Animation;};};};
    ScreenshotUiOpenAnim = submodule {options = {ScreenshotUiOpenAnim = mkOption {type = Animation;};};};
    OverviewOpenCloseAnim = submodule {options = {OverviewOpenCloseAnim = mkOption {type = Animation;};};};
    RecentWindowsCloseAnim = submodule {options = {RecentWindowsCloseAnim = mkOption {type = Animation;};};};
    Animations = submodule {
      options = {
        off = mkOption {type = bool;};
        slowdown = mkOption {type = float;};
        workspace_switch = mkOption {type = WorkspaceSwitchAnim;};
        window_open = mkOption {type = WindowOpenAnim;};
        window_close = mkOption {type = WindowCloseAnim;};
        horizontal_view_movement = mkOption {type = HorizontalViewMovementAnim;};
        window_movement = mkOption {type = WindowMovementAnim;};
        window_resize = mkOption {type = WindowResizeAnim;};
        config_notification_open_close = mkOption {type = ConfigNotificationOpenCloseAnim;};
        exit_confirmation_open_close = mkOption {type = ExitConfirmationOpenCloseAnim;};
        screenshot_ui_open = mkOption {type = ScreenshotUiOpenAnim;};
        overview_open_close = mkOption {type = OverviewOpenCloseAnim;};
        recent_windows_close = mkOption {type = RecentWindowsCloseAnim;};
      };
    };
    Blur = submodule {
      options = {
        off = mkOption {type = bool;};
        passes = mkOption {type = ints.u8;};
        offset = mkOption {type = float;};
        noise = mkOption {type = float;};
        saturation = mkOption {type = float;};
      };
    };
    DndEdgeViewScroll = submodule {
      options = {
        trigger_width = mkOption {type = float;};
        delay_ms = mkOption {type = ints.u16;};
        max_speed = mkOption {type = float;};
      };
    };
    DndEdgeWorkspaceSwitch = submodule {
      options = {
        trigger_height = mkOption {type = float;};
        delay_ms = mkOption {type = ints.u16;};
        max_speed = mkOption {type = float;};
      };
    };
    Gestures = submodule {
      options = {
        dnd_edge_view_scroll = mkOption {type = DndEdgeViewScroll;};
        dnd_edge_workspace_switch = mkOption {type = DndEdgeWorkspaceSwitch;};
        hot_corners = mkOption {type = HotCorners;};
      };
    };
    WorkspaceShadow = submodule {
      options = {
        off = mkOption {type = bool;};
        offset = mkOption {type = ShadowOffset;};
        softness = mkOption {type = float;};
        spread = mkOption {type = float;};
        color = mkOption {type = Color;};
      };
    };
    Overview = submodule {
      options = {
        zoom = mkOption {type = float;};
        backdrop_color = mkOption {type = Color;};
        workspace_shadow = mkOption {type = WorkspaceShadow;};
      };
    };
    EnvironmentVariable = submodule {
      options = {
        name = mkOption {type = str;};
        value = mkOption {type = nullOr str;};
      };
    };
    Environment = submodule {options = {Environment = mkOption {type = listOf EnvironmentVariable;};};};
    XwaylandSatellite = submodule {
      options = {
        off = mkOption {type = bool;};
        path = mkOption {type = str;};
      };
    };
    RegexEq = submodule {options = {RegexEq = mkOption {type = str;};};};
    Match = submodule {
      options = {
        app_id = mkOption {type = nullOr RegexEq;};
        title = mkOption {type = nullOr RegexEq;};
        is_active = mkOption {type = nullOr bool;};
        is_focused = mkOption {type = nullOr bool;};
        is_active_in_column = mkOption {type = nullOr bool;};
        is_floating = mkOption {type = nullOr bool;};
        is_window_cast_target = mkOption {type = nullOr bool;};
        is_urgent = mkOption {type = nullOr bool;};
        at_startup = mkOption {type = nullOr bool;};
      };
    };
    TabIndicatorRule = submodule {
      options = {
        active_color = mkOption {type = nullOr Color;};
        inactive_color = mkOption {type = nullOr Color;};
        urgent_color = mkOption {type = nullOr Color;};
        active_gradient = mkOption {type = nullOr Gradient;};
        inactive_gradient = mkOption {type = nullOr Gradient;};
        urgent_gradient = mkOption {type = nullOr Gradient;};
      };
    };
    CornerRadius = submodule {
      options = {
        top_left = mkOption {type = float;};
        top_right = mkOption {type = float;};
        bottom_right = mkOption {type = float;};
        bottom_left = mkOption {type = float;};
      };
    };
    BlockOutFrom = mkOption {type = enum ["screencast screencapture"];};
    RelativeTo = mkOption {type = enum ["topleft topright bottomleft bottomright top bottom left right"];};
    FloatingPosition = submodule {
      options = {
        x = mkOption {type = float;};
        y = mkOption {type = float;};
        relative_to = RelativeTo;
      };
    };
    BackgroundEffectRule = submodule {
      options = {
        xray = mkOption {type = nullOr bool;};
        blur = mkOption {type = nullOr bool;};
        noise = mkOption {type = nullOr float;};
        saturation = mkOption {type = nullOr float;};
      };
    };
    PopupsRule = submodule {
      options = {
        opacity = mkOption {type = nullOr float;};
        geometry_corner_radius = mkOption {type = nullOr CornerRadius;};
        background_effect = mkOption {type = BackgroundEffectRule;};
      };
    };
    WindowRule = submodule {
      options = {
        matches = mkOption {type = listOf Match;};
        excludes = mkOption {type = listOf Match;};
        default_column_width = mkOption {type = nullOr DefaultPresetSize;};
        default_window_height = mkOption {type = nullOr DefaultPresetSize;};
        open_on_output = mkOption {type = nullOr str;};
        open_on_workspace = mkOption {type = nullOr str;};
        open_maximized = mkOption {type = nullOr bool;};
        open_maximized_to_edges = mkOption {type = nullOr bool;};
        open_fullscreen = mkOption {type = nullOr bool;};
        open_floating = mkOption {type = nullOr bool;};
        open_focused = mkOption {type = nullOr bool;};
        min_width = mkOption {type = nullOr ints.u16;};
        min_height = mkOption {type = nullOr ints.u16;};
        max_width = mkOption {type = nullOr ints.u16;};
        max_height = mkOption {type = nullOr ints.u16;};
        focus_ring = mkOption {type = BorderRule;};
        border = mkOption {type = BorderRule;};
        shadow = mkOption {type = ShadowRule;};
        tab_indicator = mkOption {type = TabIndicatorRule;};
        draw_border_with_background = mkOption {type = nullOr bool;};
        opacity = mkOption {type = nullOr float;};
        geometry_corner_radius = mkOption {type = nullOr CornerRadius;};
        clip_to_geometry = mkOption {type = nullOr bool;};
        baba_is_float = mkOption {type = nullOr bool;};
        block_out_from = mkOption {type = nullOr BlockOutFrom;};
        variable_refresh_rate = mkOption {type = nullOr bool;};
        default_column_display = mkOption {type = nullOr ColumnDisplay;};
        default_floating_position = mkOption {type = nullOr FloatingPosition;};
        scroll_factor = mkOption {type = nullOr float;};
        tiled_state = mkOption {type = nullOr bool;};
        background_effect = mkOption {type = BackgroundEffectRule;};
        popups = mkOption {type = PopupsRule;};
      };
    };
    LayerRule = submodule {
      options = {
        matches = mkOption {type = listOf Match;};
        excludes = mkOption {type = listOf Match;};
        opacity = mkOption {type = nullOr float;};
        block_out_from = mkOption {type = nullOr BlockOutFrom;};
        shadow = mkOption {type = ShadowRule;};
        geometry_corner_radius = mkOption {type = nullOr CornerRadius;};
        place_within_backdrop = mkOption {type = nullOr bool;};
        baba_is_float = mkOption {type = nullOr bool;};
        background_effect = mkOption {type = BackgroundEffectRule;};
        popups = mkOption {type = PopupsRule;};
      };
    };
    Trigger = mkOption {type = enum ["keysym mouseleft mouseright mousemiddle mouseback mouseforward wheelscrolldown wheelscrollup wheelscrollleft wheelscrollright touchpadscrolldown touchpadscrollup touchpadscrollleft touchpadscrollright"];};
    Key = submodule {
      options = {
        trigger = Trigger;
        modifiers = mkOption {type = Modifiers;};
      };
    };
    Action = mkOption {type = enum ["quit changevt suspend poweroffmonitors poweronmonitors toggledebugtint debugtoggleopaqueregions debugtoggledamage spawn spawnsh doscreentransition confirmscreenshot cancelscreenshot screenshottogglepointer screenshot screenshotscreen screenshotwindow screenshotwindowbyid togglekeyboardshortcutsinhibit closewindow closewindowbyid fullscreenwindow fullscreenwindowbyid togglewindowedfullscreen togglewindowedfullscreenbyid focuswindow focuswindowincolumn focuswindowprevious focuscolumnleft focuscolumnleftundermouse focuscolumnright focuscolumnrightundermouse focuscolumnfirst focuscolumnlast focuscolumnrightorfirst focuscolumnleftorlast focuscolumn focuswindowormonitorup focuswindowormonitordown focuscolumnormonitorleft focuscolumnormonitorright focuswindowdown focuswindowup focuswindowdownorcolumnleft focuswindowdownorcolumnright focuswindowuporcolumnleft focuswindowuporcolumnright focuswindoworworkspacedown focuswindoworworkspaceup focuswindowtop focuswindowbottom focuswindowdownortop focuswindowuporbottom movecolumnleft movecolumnright movecolumntofirst movecolumntolast movecolumnleftortomonitorleft movecolumnrightortomonitorright movecolumntoindex movewindowdown movewindowup movewindowdownortoworkspacedown movewindowuportoworkspaceup consumeorexpelwindowleft consumeorexpelwindowleftbyid consumeorexpelwindowright consumeorexpelwindowrightbyid consumewindowintocolumn expelwindowfromcolumn swapwindowleft swapwindowright togglecolumntabbeddisplay setcolumndisplay centercolumn centerwindow centerwindowbyid centervisiblecolumns focusworkspacedown focusworkspacedownundermouse focusworkspaceup focusworkspaceupundermouse focusworkspace focusworkspaceprevious movewindowtoworkspacedown movewindowtoworkspaceup movewindowtoworkspace movewindowtoworkspacebyid movecolumntoworkspacedown movecolumntoworkspaceup movecolumntoworkspace moveworkspacedown moveworkspaceup moveworkspacetoindex moveworkspacetoindexbyref moveworkspacetomonitorbyref moveworkspacetomonitor setworkspacename setworkspacenamebyref unsetworkspacename unsetworkspacenamebyref focusmonitorleft focusmonitorright focusmonitordown focusmonitorup focusmonitorprevious focusmonitornext focusmonitor movewindowtomonitorleft movewindowtomonitorright movewindowtomonitordown movewindowtomonitorup movewindowtomonitorprevious movewindowtomonitornext movewindowtomonitor movewindowtomonitorbyid movecolumntomonitorleft movecolumntomonitorright movecolumntomonitordown movecolumntomonitorup movecolumntomonitorprevious movecolumntomonitornext movecolumntomonitor setwindowwidth setwindowwidthbyid setwindowheight setwindowheightbyid resetwindowheight resetwindowheightbyid switchpresetcolumnwidth switchpresetcolumnwidthback switchpresetwindowwidth switchpresetwindowwidthback switchpresetwindowwidthbyid switchpresetwindowwidthbackbyid switchpresetwindowheight switchpresetwindowheightback switchpresetwindowheightbyid switchpresetwindowheightbackbyid maximizecolumn maximizewindowtoedges maximizewindowtoedgesbyid setcolumnwidth expandcolumntoavailablewidth switchlayout showhotkeyoverlay moveworkspacetomonitorleft moveworkspacetomonitorright moveworkspacetomonitordown moveworkspacetomonitorup moveworkspacetomonitorprevious moveworkspacetomonitornext togglewindowfloating togglewindowfloatingbyid movewindowtofloating movewindowtofloatingbyid movewindowtotiling movewindowtotilingbyid focusfloating focustiling switchfocusbetweenfloatingandtiling movefloatingwindowbyid togglewindowruleopacity togglewindowruleopacitybyid setdynamiccastwindow setdynamiccastwindowbyid setdynamiccastmonitor cleardynamiccasttarget stopcast toggleoverview openoverview closeoverview togglewindowurgent setwindowurgent unsetwindowurgent loadconfigfile mruadvance mruconfirm mrucancel mruclosecurrentwindow mrufirst mrulast mrusetscope mrucyclescope"];};
    Bind = submodule {
      options = {
        key = mkOption {type = Key;};
        action = Action;
        repeat = mkOption {type = bool;};
        cooldown = mkOption {type = nullOr ints.u32;};
        allow_when_locked = mkOption {type = bool;};
        allow_inhibiting = mkOption {type = bool;};
        hotkey_overlay_title = mkOption {type = nullOr nullOr str;};
      };
    };
    Binds = submodule {options = {Binds = mkOption {type = listOf Bind;};};};
    SwitchAction = submodule {options = {spawn = mkOption {type = listOf str;};};};
    SwitchBinds = submodule {
      options = {
        lid_open = mkOption {type = nullOr SwitchAction;};
        lid_close = mkOption {type = nullOr SwitchAction;};
        tablet_mode_on = mkOption {type = nullOr SwitchAction;};
        tablet_mode_off = mkOption {type = nullOr SwitchAction;};
      };
    };
    PreviewRender = mkOption {type = enum ["screencast screencapture"];};
    Debug = submodule {
      options = {
        preview_render = mkOption {type = nullOr PreviewRender;};
        dbus_interfaces_in_non_session_instances = mkOption {type = bool;};
        wait_for_frame_completion_before_queueing = mkOption {type = bool;};
        enable_overlay_planes = mkOption {type = bool;};
        disable_cursor_plane = mkOption {type = bool;};
        disable_direct_scanout = mkOption {type = bool;};
        keep_max_bpc_unchanged = mkOption {type = bool;};
        restrict_primary_scanout_to_matching_format = mkOption {type = bool;};
        force_disable_connectors_on_resume = mkOption {type = bool;};
        render_drm_device = mkOption {type = nullOr str;};
        ignored_drm_devices = mkOption {type = listOf str;};
        force_pipewire_invalid_modifier = mkOption {type = bool;};
        emulate_zero_presentation_time = mkOption {type = bool;};
        disable_resize_throttling = mkOption {type = bool;};
        disable_transactions = mkOption {type = bool;};
        keep_laptop_panel_on_when_lid_is_closed = mkOption {type = bool;};
        disable_monitor_names = mkOption {type = bool;};
        strict_new_window_focus_policy = mkOption {type = bool;};
        honor_xdg_activation_with_invalid_serial = mkOption {type = bool;};
        deactivate_unfocused_windows = mkOption {type = bool;};
        skip_cursor_only_updates_during_vrr = mkOption {type = bool;};
      };
    };
    WorkspaceName = submodule {options = {WorkspaceName = mkOption {type = str;};};};
    WorkspaceLayoutPart = submodule {options = {WorkspaceLayoutPart = mkOption {type = LayoutPart;};};};
    Workspace = submodule {
      options = {
        name = mkOption {type = WorkspaceName;};
        open_on_output = mkOption {type = nullOr str;};
        layout = mkOption {type = nullOr WorkspaceLayoutPart;};
      };
    };
    MruHighlight = submodule {
      options = {
        active_color = mkOption {type = Color;};
        urgent_color = mkOption {type = Color;};
        padding = mkOption {type = float;};
        corner_radius = mkOption {type = float;};
      };
    };
    MruPreviews = submodule {
      options = {
        max_height = mkOption {type = float;};
        max_scale = mkOption {type = float;};
      };
    };
    RecentWindows = submodule {
      options = {
        on = mkOption {type = bool;};
        debounce_ms = mkOption {type = ints.u16;};
        open_delay_ms = mkOption {type = ints.u16;};
        highlight = mkOption {type = MruHighlight;};
        previews = mkOption {type = MruPreviews;};
        binds = mkOption {type = listOf Bind;};
      };
    };
    Config = submodule {
      options = {
        input = mkOption {type = Input;};
        outputs = mkOption {type = Outputs;};
        spawn_at_startup = mkOption {type = listOf SpawnAtStartup;};
        spawn_sh_at_startup = mkOption {type = listOf SpawnShAtStartup;};
        layout = mkOption {type = Layout;};
        prefer_no_csd = mkOption {type = bool;};
        cursor = mkOption {type = Cursor;};
        screenshot_path = mkOption {type = ScreenshotPath;};
        clipboard = mkOption {type = Clipboard;};
        hotkey_overlay = mkOption {type = HotkeyOverlay;};
        config_notification = mkOption {type = ConfigNotification;};
        animations = mkOption {type = Animations;};
        blur = mkOption {type = Blur;};
        gestures = mkOption {type = Gestures;};
        overview = mkOption {type = Overview;};
        environment = mkOption {type = Environment;};
        xwayland_satellite = mkOption {type = XwaylandSatellite;};
        window_rules = mkOption {type = listOf WindowRule;};
        layer_rules = mkOption {type = listOf LayerRule;};
        binds = mkOption {type = Binds;};
        switch_events = mkOption {type = SwitchBinds;};
        debug = mkOption {type = Debug;};
        workspaces = mkOption {type = listOf Workspace;};
        recent_windows = mkOption {type = RecentWindows;};
      };
    };
  }
