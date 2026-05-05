{lib, ...}: let
  inherit (lib.options) mkOption;
in
  with lib.types; rec {
    AccelProfile = mkOption {
      type = enum [
        "adaptive"
        "flat"
      ];
    };
    Action = mkOption {
      type = attrsTag {
        CancelScreenshot = mkOption {
          type = bool;
        };
        CenterColumn = mkOption {
          type = bool;
        };
        CenterVisibleColumns = mkOption {
          type = bool;
        };
        CenterWindow = mkOption {
          type = bool;
        };
        CenterWindowById = mkOption {
          type = ints.unsigned;
        };
        ChangeVt = mkOption {
          type = ints.s32;
        };
        ClearDynamicCastTarget = mkOption {
          type = bool;
        };
        CloseOverview = mkOption {
          type = bool;
        };
        CloseWindow = mkOption {
          type = bool;
        };
        CloseWindowById = mkOption {
          type = ints.unsigned;
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
        DebugToggleDamage = mkOption {
          type = bool;
        };
        DebugToggleOpaqueRegions = mkOption {
          type = bool;
        };
        DoScreenTransition = mkOption {
          type = nullOr ints.u16;
        };
        ExpandColumnToAvailableWidth = mkOption {
          type = bool;
        };
        ExpelWindowFromColumn = mkOption {
          type = bool;
        };
        FocusColumn = mkOption {
          type = ints.unsigned;
        };
        FocusColumnFirst = mkOption {
          type = bool;
        };
        FocusColumnLast = mkOption {
          type = bool;
        };
        FocusColumnLeft = mkOption {
          type = bool;
        };
        FocusColumnLeftOrLast = mkOption {
          type = bool;
        };
        FocusColumnLeftUnderMouse = mkOption {
          type = bool;
        };
        FocusColumnOrMonitorLeft = mkOption {
          type = bool;
        };
        FocusColumnOrMonitorRight = mkOption {
          type = bool;
        };
        FocusColumnRight = mkOption {
          type = bool;
        };
        FocusColumnRightOrFirst = mkOption {
          type = bool;
        };
        FocusColumnRightUnderMouse = mkOption {
          type = bool;
        };
        FocusFloating = mkOption {
          type = bool;
        };
        FocusMonitor = mkOption {
          type = str;
        };
        FocusMonitorDown = mkOption {
          type = bool;
        };
        FocusMonitorLeft = mkOption {
          type = bool;
        };
        FocusMonitorNext = mkOption {
          type = bool;
        };
        FocusMonitorPrevious = mkOption {
          type = bool;
        };
        FocusMonitorRight = mkOption {
          type = bool;
        };
        FocusMonitorUp = mkOption {
          type = bool;
        };
        FocusTiling = mkOption {
          type = bool;
        };
        FocusWindow = mkOption {
          type = ints.unsigned;
        };
        FocusWindowBottom = mkOption {
          type = bool;
        };
        FocusWindowDown = mkOption {
          type = bool;
        };
        FocusWindowDownOrColumnLeft = mkOption {
          type = bool;
        };
        FocusWindowDownOrColumnRight = mkOption {
          type = bool;
        };
        FocusWindowDownOrTop = mkOption {
          type = bool;
        };
        FocusWindowInColumn = mkOption {
          type = ints.u8;
        };
        FocusWindowOrMonitorDown = mkOption {
          type = bool;
        };
        FocusWindowOrMonitorUp = mkOption {
          type = bool;
        };
        FocusWindowOrWorkspaceDown = mkOption {
          type = bool;
        };
        FocusWindowOrWorkspaceUp = mkOption {
          type = bool;
        };
        FocusWindowPrevious = mkOption {
          type = bool;
        };
        FocusWindowTop = mkOption {
          type = bool;
        };
        FocusWindowUp = mkOption {
          type = bool;
        };
        FocusWindowUpOrBottom = mkOption {
          type = bool;
        };
        FocusWindowUpOrColumnLeft = mkOption {
          type = bool;
        };
        FocusWindowUpOrColumnRight = mkOption {
          type = bool;
        };
        FocusWorkspace = mkOption {
          type = WorkspaceReference;
          default = {};
        };
        FocusWorkspaceDown = mkOption {
          type = bool;
        };
        FocusWorkspaceDownUnderMouse = mkOption {
          type = bool;
        };
        FocusWorkspacePrevious = mkOption {
          type = bool;
        };
        FocusWorkspaceUp = mkOption {
          type = bool;
        };
        FocusWorkspaceUpUnderMouse = mkOption {
          type = bool;
        };
        FullscreenWindow = mkOption {
          type = bool;
        };
        FullscreenWindowById = mkOption {
          type = ints.unsigned;
        };
        LoadConfigFile = mkOption {
          type = nullOr str;
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
        MoveColumnLeft = mkOption {
          type = bool;
        };
        MoveColumnLeftOrToMonitorLeft = mkOption {
          type = bool;
        };
        MoveColumnRight = mkOption {
          type = bool;
        };
        MoveColumnRightOrToMonitorRight = mkOption {
          type = bool;
        };
        MoveColumnToFirst = mkOption {
          type = bool;
        };
        MoveColumnToIndex = mkOption {
          type = ints.unsigned;
        };
        MoveColumnToLast = mkOption {
          type = bool;
        };
        MoveColumnToMonitor = mkOption {
          type = str;
        };
        MoveColumnToMonitorDown = mkOption {
          type = bool;
        };
        MoveColumnToMonitorLeft = mkOption {
          type = bool;
        };
        MoveColumnToMonitorNext = mkOption {
          type = bool;
        };
        MoveColumnToMonitorPrevious = mkOption {
          type = bool;
        };
        MoveColumnToMonitorRight = mkOption {
          type = bool;
        };
        MoveColumnToMonitorUp = mkOption {
          type = bool;
        };
        MoveColumnToWorkspace = mkOption {
          type = bool;
        };
        MoveColumnToWorkspaceDown = mkOption {
          type = bool;
        };
        MoveColumnToWorkspaceUp = mkOption {
          type = bool;
        };
        MoveWindowDown = mkOption {
          type = bool;
        };
        MoveWindowDownOrToWorkspaceDown = mkOption {
          type = bool;
        };
        MoveWindowToFloating = mkOption {
          type = bool;
        };
        MoveWindowToFloatingById = mkOption {
          type = ints.unsigned;
        };
        MoveWindowToMonitor = mkOption {
          type = str;
        };
        MoveWindowToMonitorDown = mkOption {
          type = bool;
        };
        MoveWindowToMonitorLeft = mkOption {
          type = bool;
        };
        MoveWindowToMonitorNext = mkOption {
          type = bool;
        };
        MoveWindowToMonitorPrevious = mkOption {
          type = bool;
        };
        MoveWindowToMonitorRight = mkOption {
          type = bool;
        };
        MoveWindowToMonitorUp = mkOption {
          type = bool;
        };
        MoveWindowToTiling = mkOption {
          type = bool;
        };
        MoveWindowToTilingById = mkOption {
          type = ints.unsigned;
        };
        MoveWindowToWorkspace = mkOption {
          type = bool;
        };
        MoveWindowToWorkspaceDown = mkOption {
          type = bool;
        };
        MoveWindowToWorkspaceUp = mkOption {
          type = bool;
        };
        MoveWindowUp = mkOption {
          type = bool;
        };
        MoveWindowUpOrToWorkspaceUp = mkOption {
          type = bool;
        };
        MoveWorkspaceDown = mkOption {
          type = bool;
        };
        MoveWorkspaceToIndex = mkOption {
          type = ints.unsigned;
        };
        MoveWorkspaceToMonitor = mkOption {
          type = str;
        };
        MoveWorkspaceToMonitorDown = mkOption {
          type = bool;
        };
        MoveWorkspaceToMonitorLeft = mkOption {
          type = bool;
        };
        MoveWorkspaceToMonitorNext = mkOption {
          type = bool;
        };
        MoveWorkspaceToMonitorPrevious = mkOption {
          type = bool;
        };
        MoveWorkspaceToMonitorRight = mkOption {
          type = bool;
        };
        MoveWorkspaceToMonitorUp = mkOption {
          type = bool;
        };
        MoveWorkspaceUp = mkOption {
          type = bool;
        };
        MruCancel = mkOption {
          type = bool;
        };
        MruCloseCurrentWindow = mkOption {
          type = bool;
        };
        MruConfirm = mkOption {
          type = bool;
        };
        MruCycleScope = mkOption {
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
          default = {};
        };
        OpenOverview = mkOption {
          type = bool;
        };
        PowerOffMonitors = mkOption {
          type = bool;
        };
        PowerOnMonitors = mkOption {
          type = bool;
        };
        Quit = mkOption {
          type = bool;
        };
        ResetWindowHeight = mkOption {
          type = bool;
        };
        ResetWindowHeightById = mkOption {
          type = ints.unsigned;
        };
        Screenshot = mkOption {
          type = nullOr str;
        };
        ScreenshotScreen = mkOption {
          type = nullOr str;
        };
        ScreenshotTogglePointer = mkOption {
          type = bool;
        };
        ScreenshotWindow = mkOption {
          type = nullOr str;
        };
        SetColumnDisplay = mkOption {
          type = ColumnDisplay;
          default = {};
        };
        SetColumnWidth = mkOption {
          type = SizeChange;
          default = {};
        };
        SetDynamicCastMonitor = mkOption {
          type = nullOr str;
        };
        SetDynamicCastWindow = mkOption {
          type = bool;
        };
        SetDynamicCastWindowById = mkOption {
          type = ints.unsigned;
        };
        SetWindowHeight = mkOption {
          type = SizeChange;
          default = {};
        };
        SetWindowUrgent = mkOption {
          type = ints.unsigned;
        };
        SetWindowWidth = mkOption {
          type = SizeChange;
          default = {};
        };
        SetWorkspaceName = mkOption {
          type = str;
        };
        ShowHotkeyOverlay = mkOption {
          type = bool;
        };
        Spawn = mkOption {
          type = listOf str;
          default = [];
        };
        SpawnSh = mkOption {
          type = str;
        };
        StopCast = mkOption {
          type = ints.unsigned;
        };
        Suspend = mkOption {
          type = bool;
        };
        SwapWindowLeft = mkOption {
          type = bool;
        };
        SwapWindowRight = mkOption {
          type = bool;
        };
        SwitchFocusBetweenFloatingAndTiling = mkOption {
          type = bool;
        };
        SwitchLayout = mkOption {
          type = LayoutSwitchTarget;
          default = {};
        };
        SwitchPresetColumnWidth = mkOption {
          type = bool;
        };
        SwitchPresetColumnWidthBack = mkOption {
          type = bool;
        };
        SwitchPresetWindowHeight = mkOption {
          type = bool;
        };
        SwitchPresetWindowHeightBack = mkOption {
          type = bool;
        };
        SwitchPresetWindowHeightBackById = mkOption {
          type = ints.unsigned;
        };
        SwitchPresetWindowHeightById = mkOption {
          type = ints.unsigned;
        };
        SwitchPresetWindowWidth = mkOption {
          type = bool;
        };
        SwitchPresetWindowWidthBack = mkOption {
          type = bool;
        };
        SwitchPresetWindowWidthBackById = mkOption {
          type = ints.unsigned;
        };
        SwitchPresetWindowWidthById = mkOption {
          type = ints.unsigned;
        };
        ToggleColumnTabbedDisplay = mkOption {
          type = bool;
        };
        ToggleDebugTint = mkOption {
          type = bool;
        };
        ToggleKeyboardShortcutsInhibit = mkOption {
          type = bool;
        };
        ToggleOverview = mkOption {
          type = bool;
        };
        ToggleWindowFloating = mkOption {
          type = bool;
        };
        ToggleWindowFloatingById = mkOption {
          type = ints.unsigned;
        };
        ToggleWindowRuleOpacity = mkOption {
          type = bool;
        };
        ToggleWindowRuleOpacityById = mkOption {
          type = ints.unsigned;
        };
        ToggleWindowUrgent = mkOption {
          type = ints.unsigned;
        };
        ToggleWindowedFullscreen = mkOption {
          type = bool;
        };
        ToggleWindowedFullscreenById = mkOption {
          type = ints.unsigned;
        };
        UnsetWindowUrgent = mkOption {
          type = ints.unsigned;
        };
        UnsetWorkSpaceNameByRef = mkOption {
          type = WorkspaceReference;
          default = {};
        };
        UnsetWorkspaceName = mkOption {
          type = bool;
        };
        change = mkOption {
          type = SizeChange;
          default = {};
        };
        direction = mkOption {
          type = MruDirection;
          default = {};
        };
        filter = mkOption {
          type = nullOr MruFilter;
        };
        focus = mkOption {
          type = bool;
        };
        id = mkOption {
          type = nullOr ints.unsigned;
        };
        name = mkOption {
          type = str;
        };
        new_idx = mkOption {
          type = ints.unsigned;
        };
        output = mkOption {
          type = str;
        };
        output_name = mkOption {
          type = str;
        };
        path = mkOption {
          type = nullOr str;
        };
        reference = mkOption {
          type = WorkspaceReference;
          default = {};
        };
        scope = mkOption {
          type = nullOr MruScope;
        };
        show_pointer = mkOption {
          type = bool;
        };
        window_id = mkOption {
          type = ints.unsigned;
        };
        write_to_disk = mkOption {
          type = bool;
        };
        x = mkOption {
          type = PositionChange;
          default = {};
        };
        y = mkOption {
          type = PositionChange;
          default = {};
        };
      };
    };
    Animation = submodule {
      options = {
        kind = Kind;
        off = mkOption {
          type = bool;
        };
      };
    };
    Animations = submodule {
      options = {
        config_notification_open_close = ConfigNotificationOpenCloseAnim;
        exit_confirmation_open_close = ExitConfirmationOpenCloseAnim;
        horizontal_view_movement = HorizontalViewMovementAnim;
        off = mkOption {
          type = bool;
        };
        overview_open_close = OverviewOpenCloseAnim;
        recent_windows_close = RecentWindowsCloseAnim;
        screenshot_ui_open = ScreenshotUiOpenAnim;
        slowdown = mkOption {
          type = float;
        };
        window_close = mkOption {
          type = WindowCloseAnim;
          default = {};
        };
        window_movement = WindowMovementAnim;
        window_open = mkOption {
          type = WindowOpenAnim;
          default = {};
        };
        window_resize = mkOption {
          type = WindowResizeAnim;
          default = {};
        };
        workspace_switch = WorkspaceSwitchAnim;
      };
    };
    BackgroundEffectRule = submodule {
      options = {
        blur = mkOption {
          type = nullOr bool;
        };
        noise = mkOption {
          type = nullOr float;
        };
        saturation = mkOption {
          type = nullOr float;
        };
        xray = mkOption {
          type = nullOr bool;
        };
      };
    };
    Bind = submodule {
      options = {
        action = Action;
        allow_inhibiting = mkOption {
          type = bool;
        };
        allow_when_locked = mkOption {
          type = bool;
        };
        cooldown = mkOption {
          type = nullOr ints.u32;
        };
        hotkey_overlay_title = mkOption {
          type = nullOr nullOr str;
        };
        key = mkOption {
          type = str;
        };
        repeat = mkOption {
          type = bool;
        };
      };
    };
    Binds = mkOption {
      type = listOf Bind;
      default = [];
    };
    BlockOutFrom = mkOption {
      type = enum [
        "screencast"
        "screencapture"
      ];
    };
    Blur = submodule {
      options = {
        noise = mkOption {
          type = float;
        };
        off = mkOption {
          type = bool;
        };
        offset = mkOption {
          type = float;
        };
        passes = mkOption {
          type = ints.u8;
        };
        saturation = mkOption {
          type = float;
        };
      };
    };
    Border = submodule {
      options = {
        active_color = mkOption {
          type = Color;
          default = {};
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_color = mkOption {
          type = Color;
          default = {};
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        off = mkOption {
          type = bool;
        };
        urgent_color = mkOption {
          type = Color;
          default = {};
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
        width = mkOption {
          type = float;
        };
      };
    };
    BorderRule = submodule {
      options = {
        active_color = mkOption {
          type = nullOr Color;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_color = mkOption {
          type = nullOr Color;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        off = mkOption {
          type = bool;
        };
        on = mkOption {
          type = bool;
        };
        urgent_color = mkOption {
          type = nullOr Color;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
        width = mkOption {
          type = nullOr float;
        };
      };
    };
    CenterFocusedColumn = mkOption {
      type = enum [
        "never"
        "always"
        "onoverflow"
      ];
    };
    ClickMethod = mkOption {
      type = enum [
        "clickfinger"
        "buttonareas"
      ];
    };
    Clipboard = submodule {
      options = {
        disable_primary = mkOption {
          type = bool;
        };
      };
    };
    Color = submodule {
      options = {
        a = mkOption {
          type = float;
        };
        b = mkOption {
          type = float;
        };
        g = mkOption {
          type = float;
        };
        r = mkOption {
          type = float;
        };
      };
    };
    ColumnDisplay = mkOption {
      type = enum [
        "normal"
        "tabbed"
      ];
    };
    Config = submodule {
      options = {
        animations = mkOption {
          type = Animations;
          default = {};
        };
        binds = Binds;
        blur = mkOption {
          type = Blur;
          default = {};
        };
        clipboard = mkOption {
          type = Clipboard;
          default = {};
        };
        config_notification = mkOption {
          type = ConfigNotification;
          default = {};
        };
        cursor = mkOption {
          type = Cursor;
          default = {};
        };
        debug = mkOption {
          type = Debug;
          default = {};
        };
        environment = Environment;
        gestures = mkOption {
          type = Gestures;
          default = {};
        };
        hotkey_overlay = mkOption {
          type = HotkeyOverlay;
          default = {};
        };
        input = mkOption {
          type = Input;
          default = {};
        };
        layer_rules = mkOption {
          type = listOf LayerRule;
          default = [];
        };
        layout = mkOption {
          type = Layout;
          default = {};
        };
        outputs = Outputs;
        overview = mkOption {
          type = Overview;
          default = {};
        };
        prefer_no_csd = mkOption {
          type = bool;
        };
        recent_windows = mkOption {
          type = RecentWindows;
          default = {};
        };
        screenshot_path = ScreenshotPath;
        spawn_at_startup = mkOption {
          type = listOf SpawnAtStartup;
          default = [];
        };
        spawn_sh_at_startup = mkOption {
          type = listOf SpawnShAtStartup;
          default = [];
        };
        switch_events = mkOption {
          type = SwitchBinds;
          default = {};
        };
        window_rules = mkOption {
          type = listOf WindowRule;
          default = [];
        };
        workspaces = mkOption {
          type = listOf Workspace;
          default = [];
        };
        xwayland_satellite = mkOption {
          type = XwaylandSatellite;
          default = {};
        };
      };
    };
    ConfigNotification = submodule {
      options = {
        disable_failed = mkOption {
          type = bool;
        };
      };
    };
    ConfigNotificationOpenCloseAnim = mkOption {
      type = Animation;
      default = {};
    };
    ConfiguredMode = submodule {
      options = {
        height = mkOption {
          type = ints.u16;
        };
        refresh = mkOption {
          type = nullOr float;
        };
        width = mkOption {
          type = ints.u16;
        };
      };
    };
    CornerRadius = submodule {
      options = {
        bottom_left = mkOption {
          type = float;
        };
        bottom_right = mkOption {
          type = float;
        };
        top_left = mkOption {
          type = float;
        };
        top_right = mkOption {
          type = float;
        };
      };
    };
    Cursor = submodule {
      options = {
        hide_after_inactive_ms = mkOption {
          type = nullOr ints.u32;
        };
        hide_when_typing = mkOption {
          type = bool;
        };
        xcursor_size = mkOption {
          type = ints.u8;
        };
        xcursor_theme = mkOption {
          type = str;
        };
      };
    };
    Curve = mkOption {
      type = attrsTag {
        CubicBezier = mkOption {
          type = float;
        };
        EaseOutCubic = mkOption {
          type = bool;
        };
        EaseOutExpo = mkOption {
          type = bool;
        };
        EaseOutQuad = mkOption {
          type = bool;
        };
        Linear = mkOption {
          type = bool;
        };
      };
    };
    Debug = submodule {
      options = {
        dbus_interfaces_in_non_session_instances = mkOption {
          type = bool;
        };
        deactivate_unfocused_windows = mkOption {
          type = bool;
        };
        disable_cursor_plane = mkOption {
          type = bool;
        };
        disable_direct_scanout = mkOption {
          type = bool;
        };
        disable_monitor_names = mkOption {
          type = bool;
        };
        disable_resize_throttling = mkOption {
          type = bool;
        };
        disable_transactions = mkOption {
          type = bool;
        };
        emulate_zero_presentation_time = mkOption {
          type = bool;
        };
        enable_overlay_planes = mkOption {
          type = bool;
        };
        force_disable_connectors_on_resume = mkOption {
          type = bool;
        };
        force_pipewire_invalid_modifier = mkOption {
          type = bool;
        };
        honor_xdg_activation_with_invalid_serial = mkOption {
          type = bool;
        };
        ignored_drm_devices = mkOption {
          type = listOf str;
          default = [];
        };
        keep_laptop_panel_on_when_lid_is_closed = mkOption {
          type = bool;
        };
        keep_max_bpc_unchanged = mkOption {
          type = bool;
        };
        preview_render = mkOption {
          type = nullOr PreviewRender;
        };
        render_drm_device = mkOption {
          type = nullOr str;
        };
        restrict_primary_scanout_to_matching_format = mkOption {
          type = bool;
        };
        skip_cursor_only_updates_during_vrr = mkOption {
          type = bool;
        };
        strict_new_window_focus_policy = mkOption {
          type = bool;
        };
        wait_for_frame_completion_before_queueing = mkOption {
          type = bool;
        };
      };
    };
    DefaultPresetSize = mkOption {
      type = nullOr PresetSize;
    };
    DndEdgeViewScroll = submodule {
      options = {
        delay_ms = mkOption {
          type = ints.u16;
        };
        max_speed = mkOption {
          type = float;
        };
        trigger_width = mkOption {
          type = float;
        };
      };
    };
    DndEdgeWorkspaceSwitch = submodule {
      options = {
        delay_ms = mkOption {
          type = ints.u16;
        };
        max_speed = mkOption {
          type = float;
        };
        trigger_height = mkOption {
          type = float;
        };
      };
    };
    EasingParams = submodule {
      options = {
        curve = Curve;
        duration_ms = mkOption {
          type = ints.u32;
        };
      };
    };
    Environment = mkOption {
      type = listOf EnvironmentVariable;
      default = [];
    };
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
    ExitConfirmationOpenCloseAnim = mkOption {
      type = Animation;
      default = {};
    };
    Flag = mkOption {
      type = bool;
    };
    FloatingPosition = submodule {
      options = {
        relative_to = RelativeTo;
        x = mkOption {
          type = float;
        };
        y = mkOption {
          type = float;
        };
      };
    };
    FocusFollowsMouse = submodule {
      options = {
        max_scroll_amount = mkOption {
          type = nullOr Percent;
        };
      };
    };
    FocusRing = submodule {
      options = {
        active_color = mkOption {
          type = Color;
          default = {};
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_color = mkOption {
          type = Color;
          default = {};
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        off = mkOption {
          type = bool;
        };
        urgent_color = mkOption {
          type = Color;
          default = {};
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
        width = mkOption {
          type = float;
        };
      };
    };
    Gestures = submodule {
      options = {
        dnd_edge_view_scroll = mkOption {
          type = DndEdgeViewScroll;
          default = {};
        };
        dnd_edge_workspace_switch = mkOption {
          type = DndEdgeWorkspaceSwitch;
          default = {};
        };
        hot_corners = mkOption {
          type = HotCorners;
          default = {};
        };
      };
    };
    Gradient = submodule {
      options = {
        angle = mkOption {
          type = ints.s16;
        };
        from = mkOption {
          type = Color;
          default = {};
        };
        in_ = mkOption {
          type = GradientInterpolation;
          default = {};
        };
        relative_to = GradientRelativeTo;
        to = mkOption {
          type = Color;
          default = {};
        };
      };
    };
    GradientColorSpace = mkOption {
      type = enum [
        "srgb"
        "srgblinear"
        "oklab"
        "oklch"
      ];
    };
    GradientInterpolation = submodule {
      options = {
        color_space = GradientColorSpace;
        hue_interpolation = HueInterpolation;
      };
    };
    GradientRelativeTo = mkOption {
      type = enum [
        "window"
        "workspaceview"
      ];
    };
    HSyncPolarity = mkOption {
      type = enum [
        "phsync"
        "nhsync"
      ];
    };
    HorizontalViewMovementAnim = mkOption {
      type = Animation;
      default = {};
    };
    HotCorners = submodule {
      options = {
        bottom_left = mkOption {
          type = bool;
        };
        bottom_right = mkOption {
          type = bool;
        };
        off = mkOption {
          type = bool;
        };
        top_left = mkOption {
          type = bool;
        };
        top_right = mkOption {
          type = bool;
        };
      };
    };
    HotkeyOverlay = submodule {
      options = {
        hide_not_bound = mkOption {
          type = bool;
        };
        skip_at_startup = mkOption {
          type = bool;
        };
      };
    };
    HueInterpolation = mkOption {
      type = enum [
        "shorter"
        "longer"
        "increasing"
        "decreasing"
      ];
    };
    Input = submodule {
      options = {
        disable_power_key_handling = mkOption {
          type = bool;
        };
        focus_follows_mouse = mkOption {
          type = nullOr FocusFollowsMouse;
        };
        keyboard = mkOption {
          type = Keyboard;
          default = {};
        };
        mod_key = mkOption {
          type = nullOr ModKey;
        };
        mod_key_nested = mkOption {
          type = nullOr ModKey;
        };
        mouse = mkOption {
          type = Mouse;
          default = {};
        };
        tablet = mkOption {
          type = Tablet;
          default = {};
        };
        touch = mkOption {
          type = Touch;
          default = {};
        };
        touchpad = mkOption {
          type = Touchpad;
          default = {};
        };
        trackball = mkOption {
          type = Trackball;
          default = {};
        };
        trackpoint = mkOption {
          type = Trackpoint;
          default = {};
        };
        warp_mouse_to_focus = mkOption {
          type = nullOr WarpMouseToFocus;
        };
        workspace_auto_back_and_forth = mkOption {
          type = bool;
        };
      };
    };
    InsertHint = submodule {
      options = {
        color = mkOption {
          type = Color;
          default = {};
        };
        gradient = mkOption {
          type = nullOr Gradient;
        };
        off = mkOption {
          type = bool;
        };
      };
    };
    InsertHintPart = submodule {
      options = {
        color = mkOption {
          type = nullOr Color;
        };
        gradient = mkOption {
          type = nullOr Gradient;
        };
        off = mkOption {
          type = bool;
        };
        on = mkOption {
          type = bool;
        };
      };
    };
    Keyboard = submodule {
      options = {
        numlock = mkOption {
          type = bool;
        };
        repeat_delay = mkOption {
          type = ints.u16;
        };
        repeat_rate = mkOption {
          type = ints.u8;
        };
        track_layout = TrackLayout;
        xkb = mkOption {
          type = Xkb;
          default = {};
        };
      };
    };
    Kind = mkOption {
      type = attrsTag {
        Easing = mkOption {
          type = EasingParams;
          default = {};
        };
        Spring = mkOption {
          type = SpringParams;
          default = {};
        };
      };
    };
    LayerRule = submodule {
      options = {
        baba_is_float = mkOption {
          type = nullOr bool;
        };
        background_effect = mkOption {
          type = BackgroundEffectRule;
          default = {};
        };
        block_out_from = mkOption {
          type = nullOr BlockOutFrom;
        };
        excludes = mkOption {
          type = listOf Match;
          default = [];
        };
        geometry_corner_radius = mkOption {
          type = nullOr CornerRadius;
        };
        matches = mkOption {
          type = listOf Match;
          default = [];
        };
        opacity = mkOption {
          type = nullOr float;
        };
        place_within_backdrop = mkOption {
          type = nullOr bool;
        };
        popups = mkOption {
          type = PopupsRule;
          default = {};
        };
        shadow = mkOption {
          type = ShadowRule;
          default = {};
        };
      };
    };
    Layout = submodule {
      options = {
        always_center_single_column = mkOption {
          type = bool;
        };
        background_color = mkOption {
          type = Color;
          default = {};
        };
        border = mkOption {
          type = Border;
          default = {};
        };
        center_focused_column = CenterFocusedColumn;
        default_column_display = ColumnDisplay;
        default_column_width = mkOption {
          type = nullOr PresetSize;
        };
        empty_workspace_above_first = mkOption {
          type = bool;
        };
        focus_ring = mkOption {
          type = FocusRing;
          default = {};
        };
        gaps = mkOption {
          type = float;
        };
        insert_hint = mkOption {
          type = InsertHint;
          default = {};
        };
        preset_column_widths = mkOption {
          type = listOf PresetSize;
          default = [];
        };
        preset_window_heights = mkOption {
          type = listOf PresetSize;
          default = [];
        };
        shadow = mkOption {
          type = Shadow;
          default = {};
        };
        struts = mkOption {
          type = Struts;
          default = {};
        };
        tab_indicator = mkOption {
          type = TabIndicator;
          default = {};
        };
      };
    };
    LayoutPart = submodule {
      options = {
        always_center_single_column = mkOption {
          type = nullOr Flag;
        };
        background_color = mkOption {
          type = nullOr Color;
        };
        border = mkOption {
          type = nullOr BorderRule;
        };
        center_focused_column = mkOption {
          type = nullOr CenterFocusedColumn;
        };
        default_column_display = mkOption {
          type = nullOr ColumnDisplay;
        };
        default_column_width = mkOption {
          type = nullOr DefaultPresetSize;
        };
        empty_workspace_above_first = mkOption {
          type = nullOr Flag;
        };
        focus_ring = mkOption {
          type = nullOr BorderRule;
        };
        gaps = mkOption {
          type = nullOr float;
        };
        insert_hint = mkOption {
          type = nullOr InsertHintPart;
        };
        preset_column_widths = mkOption {
          type = nullOr listOf PresetSize;
        };
        preset_window_heights = mkOption {
          type = nullOr listOf PresetSize;
        };
        shadow = mkOption {
          type = nullOr ShadowRule;
        };
        struts = mkOption {
          type = nullOr Struts;
        };
        tab_indicator = mkOption {
          type = nullOr TabIndicatorPart;
        };
      };
    };
    LayoutSwitchTarget = mkOption {
      type = attrsTag {
        Index = mkOption {
          type = ints.u8;
        };
        Next = mkOption {
          type = bool;
        };
        Prev = mkOption {
          type = bool;
        };
      };
    };
    Match = submodule {
      options = {
        app_id = mkOption {
          type = nullOr RegexEq;
        };
        at_startup = mkOption {
          type = nullOr bool;
        };
        is_active = mkOption {
          type = nullOr bool;
        };
        is_active_in_column = mkOption {
          type = nullOr bool;
        };
        is_floating = mkOption {
          type = nullOr bool;
        };
        is_focused = mkOption {
          type = nullOr bool;
        };
        is_urgent = mkOption {
          type = nullOr bool;
        };
        is_window_cast_target = mkOption {
          type = nullOr bool;
        };
        title = mkOption {
          type = nullOr RegexEq;
        };
      };
    };
    ModKey = mkOption {
      type = enum [
        "ctrl"
        "shift"
        "alt"
        "super"
        "isolevel3shift"
        "isolevel5shift"
      ];
    };
    Mode = submodule {
      options = {
        custom = mkOption {
          type = bool;
        };
        mode = mkOption {
          type = ConfiguredMode;
          default = {};
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
        hsync_end = mkOption {
          type = ints.u16;
        };
        hsync_polarity = HSyncPolarity;
        hsync_start = mkOption {
          type = ints.u16;
        };
        htotal = mkOption {
          type = ints.u16;
        };
        vdisplay = mkOption {
          type = ints.u16;
        };
        vsync_end = mkOption {
          type = ints.u16;
        };
        vsync_polarity = VSyncPolarity;
        vsync_start = mkOption {
          type = ints.u16;
        };
        vtotal = mkOption {
          type = ints.u16;
        };
      };
    };
    Mouse = submodule {
      options = {
        accel_profile = mkOption {
          type = nullOr AccelProfile;
        };
        accel_speed = mkOption {
          type = float;
        };
        left_handed = mkOption {
          type = bool;
        };
        middle_emulation = mkOption {
          type = bool;
        };
        natural_scroll = mkOption {
          type = bool;
        };
        off = mkOption {
          type = bool;
        };
        scroll_button = mkOption {
          type = nullOr ints.u32;
        };
        scroll_button_lock = mkOption {
          type = bool;
        };
        scroll_factor = mkOption {
          type = nullOr ScrollFactor;
        };
        scroll_method = mkOption {
          type = nullOr ScrollMethod;
        };
      };
    };
    MruDirection = mkOption {
      type = enum [
        "forward"
        "backward"
      ];
    };
    MruFilter = mkOption {
      type = enum [
        "all"
        "appid"
      ];
    };
    MruHighlight = submodule {
      options = {
        active_color = mkOption {
          type = Color;
          default = {};
        };
        corner_radius = mkOption {
          type = float;
        };
        padding = mkOption {
          type = float;
        };
        urgent_color = mkOption {
          type = Color;
          default = {};
        };
      };
    };
    MruPreviews = submodule {
      options = {
        max_height = mkOption {
          type = float;
        };
        max_scale = mkOption {
          type = float;
        };
      };
    };
    MruScope = mkOption {
      type = enum [
        "all"
        "output"
        "workspace"
      ];
    };
    Output = submodule {
      options = {
        backdrop_color = mkOption {
          type = nullOr Color;
        };
        background_color = mkOption {
          type = nullOr Color;
        };
        focus_at_startup = mkOption {
          type = bool;
        };
        hot_corners = mkOption {
          type = nullOr HotCorners;
        };
        layout = mkOption {
          type = nullOr LayoutPart;
        };
        mode = mkOption {
          type = nullOr Mode;
        };
        modeline = mkOption {
          type = nullOr Modeline;
        };
        name = mkOption {
          type = str;
        };
        off = mkOption {
          type = bool;
        };
        position = mkOption {
          type = nullOr Position;
        };
        scale = mkOption {
          type = nullOr float;
        };
        transform = Transform;
        variable_refresh_rate = mkOption {
          type = nullOr Vrr;
        };
      };
    };
    Outputs = mkOption {
      type = listOf Output;
      default = [];
    };
    Overview = submodule {
      options = {
        backdrop_color = mkOption {
          type = Color;
          default = {};
        };
        workspace_shadow = mkOption {
          type = WorkspaceShadow;
          default = {};
        };
        zoom = mkOption {
          type = float;
        };
      };
    };
    OverviewOpenCloseAnim = mkOption {
      type = Animation;
      default = {};
    };
    Percent = mkOption {
      type = float;
    };
    PopupsRule = submodule {
      options = {
        background_effect = mkOption {
          type = BackgroundEffectRule;
          default = {};
        };
        geometry_corner_radius = mkOption {
          type = nullOr CornerRadius;
        };
        opacity = mkOption {
          type = nullOr float;
        };
      };
    };
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
    PositionChange = mkOption {
      type = attrsTag {
        AdjustFixed = mkOption {
          type = float;
        };
        AdjustProportion = mkOption {
          type = float;
        };
        SetFixed = mkOption {
          type = float;
        };
        SetProportion = mkOption {
          type = float;
        };
      };
    };
    PresetSize = mkOption {
      type = attrsTag {
        Fixed = mkOption {
          type = ints.s32;
        };
        Proportion = mkOption {
          type = float;
        };
      };
    };
    PreviewRender = mkOption {
      type = enum [
        "screencast"
        "screencapture"
      ];
    };
    RecentWindows = submodule {
      options = {
        binds = mkOption {
          type = listOf Bind;
          default = [];
        };
        debounce_ms = mkOption {
          type = ints.u16;
        };
        highlight = mkOption {
          type = MruHighlight;
          default = {};
        };
        on = mkOption {
          type = bool;
        };
        open_delay_ms = mkOption {
          type = ints.u16;
        };
        previews = mkOption {
          type = MruPreviews;
          default = {};
        };
      };
    };
    RecentWindowsCloseAnim = mkOption {
      type = Animation;
      default = {};
    };
    RegexEq = mkOption {
      type = str;
    };
    RelativeTo = mkOption {
      type = enum [
        "topleft"
        "topright"
        "bottomleft"
        "bottomright"
        "top"
        "bottom"
        "left"
        "right"
      ];
    };
    ScreenshotPath = mkOption {
      type = nullOr str;
    };
    ScreenshotUiOpenAnim = mkOption {
      type = Animation;
      default = {};
    };
    ScrollFactor = submodule {
      options = {
        base = mkOption {
          type = nullOr float;
        };
        horizontal = mkOption {
          type = nullOr float;
        };
        vertical = mkOption {
          type = nullOr float;
        };
      };
    };
    ScrollMethod = mkOption {
      type = enum [
        "noscroll"
        "twofinger"
        "edge"
        "onbuttondown"
      ];
    };
    Shadow = submodule {
      options = {
        color = mkOption {
          type = Color;
          default = {};
        };
        draw_behind_window = mkOption {
          type = bool;
        };
        inactive_color = mkOption {
          type = nullOr Color;
        };
        offset = mkOption {
          type = ShadowOffset;
          default = {};
        };
        on = mkOption {
          type = bool;
        };
        softness = mkOption {
          type = float;
        };
        spread = mkOption {
          type = float;
        };
      };
    };
    ShadowOffset = submodule {
      options = {
        x = mkOption {
          type = float;
        };
        y = mkOption {
          type = float;
        };
      };
    };
    ShadowRule = submodule {
      options = {
        color = mkOption {
          type = nullOr Color;
        };
        draw_behind_window = mkOption {
          type = nullOr bool;
        };
        inactive_color = mkOption {
          type = nullOr Color;
        };
        off = mkOption {
          type = bool;
        };
        offset = mkOption {
          type = nullOr ShadowOffset;
        };
        on = mkOption {
          type = bool;
        };
        softness = mkOption {
          type = nullOr float;
        };
        spread = mkOption {
          type = nullOr float;
        };
      };
    };
    SizeChange = mkOption {
      type = attrsTag {
        AdjustFixed = mkOption {
          type = ints.s32;
        };
        AdjustProportion = mkOption {
          type = float;
        };
        SetFixed = mkOption {
          type = ints.s32;
        };
        SetProportion = mkOption {
          type = float;
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
    SpringParams = submodule {
      options = {
        damping_ratio = mkOption {
          type = float;
        };
        epsilon = mkOption {
          type = float;
        };
        stiffness = mkOption {
          type = ints.u32;
        };
      };
    };
    Struts = submodule {
      options = {
        bottom = mkOption {
          type = float;
        };
        left = mkOption {
          type = float;
        };
        right = mkOption {
          type = float;
        };
        top = mkOption {
          type = float;
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
    SwitchBinds = submodule {
      options = {
        lid_close = mkOption {
          type = nullOr SwitchAction;
        };
        lid_open = mkOption {
          type = nullOr SwitchAction;
        };
        tablet_mode_off = mkOption {
          type = nullOr SwitchAction;
        };
        tablet_mode_on = mkOption {
          type = nullOr SwitchAction;
        };
      };
    };
    TabIndicator = submodule {
      options = {
        active_color = mkOption {
          type = nullOr Color;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        corner_radius = mkOption {
          type = float;
        };
        gap = mkOption {
          type = float;
        };
        gaps_between_tabs = mkOption {
          type = float;
        };
        hide_when_single_tab = mkOption {
          type = bool;
        };
        inactive_color = mkOption {
          type = nullOr Color;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        length = mkOption {
          type = TabIndicatorLength;
          default = {};
        };
        off = mkOption {
          type = bool;
        };
        place_within_column = mkOption {
          type = bool;
        };
        position = TabIndicatorPosition;
        urgent_color = mkOption {
          type = nullOr Color;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
        width = mkOption {
          type = float;
        };
      };
    };
    TabIndicatorLength = submodule {
      options = {
        total_proportion = mkOption {
          type = nullOr float;
        };
      };
    };
    TabIndicatorPart = submodule {
      options = {
        active_color = mkOption {
          type = nullOr Color;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        corner_radius = mkOption {
          type = nullOr float;
        };
        gap = mkOption {
          type = nullOr float;
        };
        gaps_between_tabs = mkOption {
          type = nullOr float;
        };
        hide_when_single_tab = mkOption {
          type = nullOr Flag;
        };
        inactive_color = mkOption {
          type = nullOr Color;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        length = mkOption {
          type = nullOr TabIndicatorLength;
        };
        off = mkOption {
          type = bool;
        };
        on = mkOption {
          type = bool;
        };
        place_within_column = mkOption {
          type = nullOr Flag;
        };
        position = mkOption {
          type = nullOr TabIndicatorPosition;
        };
        urgent_color = mkOption {
          type = nullOr Color;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
        width = mkOption {
          type = nullOr float;
        };
      };
    };
    TabIndicatorPosition = mkOption {
      type = enum [
        "left"
        "right"
        "top"
        "bottom"
      ];
    };
    TabIndicatorRule = submodule {
      options = {
        active_color = mkOption {
          type = nullOr Color;
        };
        active_gradient = mkOption {
          type = nullOr Gradient;
        };
        inactive_color = mkOption {
          type = nullOr Color;
        };
        inactive_gradient = mkOption {
          type = nullOr Gradient;
        };
        urgent_color = mkOption {
          type = nullOr Color;
        };
        urgent_gradient = mkOption {
          type = nullOr Gradient;
        };
      };
    };
    Tablet = submodule {
      options = {
        calibration_matrix = mkOption {
          type = nullOr listOf float;
        };
        left_handed = mkOption {
          type = bool;
        };
        map_to_focused_output = mkOption {
          type = bool;
        };
        map_to_focused_window = mkOption {
          type = bool;
        };
        map_to_output = mkOption {
          type = nullOr str;
        };
        off = mkOption {
          type = bool;
        };
      };
    };
    TapButtonMap = mkOption {
      type = enum [
        "leftrightmiddle"
        "leftmiddleright"
      ];
    };
    Touch = submodule {
      options = {
        calibration_matrix = mkOption {
          type = nullOr listOf float;
        };
        map_to_output = mkOption {
          type = nullOr str;
        };
        off = mkOption {
          type = bool;
        };
      };
    };
    Touchpad = submodule {
      options = {
        accel_profile = mkOption {
          type = nullOr AccelProfile;
        };
        accel_speed = mkOption {
          type = float;
        };
        click_method = mkOption {
          type = nullOr ClickMethod;
        };
        disabled_on_external_mouse = mkOption {
          type = bool;
        };
        drag = mkOption {
          type = nullOr bool;
        };
        drag_lock = mkOption {
          type = bool;
        };
        dwt = mkOption {
          type = bool;
        };
        dwtp = mkOption {
          type = bool;
        };
        left_handed = mkOption {
          type = bool;
        };
        middle_emulation = mkOption {
          type = bool;
        };
        natural_scroll = mkOption {
          type = bool;
        };
        off = mkOption {
          type = bool;
        };
        scroll_button = mkOption {
          type = nullOr ints.u32;
        };
        scroll_button_lock = mkOption {
          type = bool;
        };
        scroll_factor = mkOption {
          type = nullOr ScrollFactor;
        };
        scroll_method = mkOption {
          type = nullOr ScrollMethod;
        };
        tap = mkOption {
          type = bool;
        };
        tap_button_map = mkOption {
          type = nullOr TapButtonMap;
        };
      };
    };
    TrackLayout = mkOption {
      type = enum [
        "global"
        "window"
      ];
    };
    Trackball = submodule {
      options = {
        accel_profile = mkOption {
          type = nullOr AccelProfile;
        };
        accel_speed = mkOption {
          type = float;
        };
        left_handed = mkOption {
          type = bool;
        };
        middle_emulation = mkOption {
          type = bool;
        };
        natural_scroll = mkOption {
          type = bool;
        };
        off = mkOption {
          type = bool;
        };
        scroll_button = mkOption {
          type = nullOr ints.u32;
        };
        scroll_button_lock = mkOption {
          type = bool;
        };
        scroll_method = mkOption {
          type = nullOr ScrollMethod;
        };
      };
    };
    Trackpoint = submodule {
      options = {
        accel_profile = mkOption {
          type = nullOr AccelProfile;
        };
        accel_speed = mkOption {
          type = float;
        };
        left_handed = mkOption {
          type = bool;
        };
        middle_emulation = mkOption {
          type = bool;
        };
        natural_scroll = mkOption {
          type = bool;
        };
        off = mkOption {
          type = bool;
        };
        scroll_button = mkOption {
          type = nullOr ints.u32;
        };
        scroll_button_lock = mkOption {
          type = bool;
        };
        scroll_method = mkOption {
          type = nullOr ScrollMethod;
        };
      };
    };
    Transform = mkOption {
      type = enum [
        "normal"
        "_90"
        "_180"
        "_270"
        "flipped"
        "flipped90"
        "flipped180"
        "flipped270"
      ];
    };
    VSyncPolarity = mkOption {
      type = enum [
        "pvsync"
        "nvsync"
      ];
    };
    Vrr = submodule {
      options = {
        on_demand = mkOption {
          type = bool;
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
    WarpMouseToFocusMode = mkOption {
      type = enum [
        "centerxy"
        "centerxyalways"
      ];
    };
    WindowCloseAnim = submodule {
      options = {
        anim = mkOption {
          type = Animation;
          default = {};
        };
        custom_shader = mkOption {
          type = nullOr str;
        };
      };
    };
    WindowMovementAnim = mkOption {
      type = Animation;
      default = {};
    };
    WindowOpenAnim = submodule {
      options = {
        anim = mkOption {
          type = Animation;
          default = {};
        };
        custom_shader = mkOption {
          type = nullOr str;
        };
      };
    };
    WindowResizeAnim = submodule {
      options = {
        anim = mkOption {
          type = Animation;
          default = {};
        };
        custom_shader = mkOption {
          type = nullOr str;
        };
      };
    };
    WindowRule = submodule {
      options = {
        baba_is_float = mkOption {
          type = nullOr bool;
        };
        background_effect = mkOption {
          type = BackgroundEffectRule;
          default = {};
        };
        block_out_from = mkOption {
          type = nullOr BlockOutFrom;
        };
        border = mkOption {
          type = BorderRule;
          default = {};
        };
        clip_to_geometry = mkOption {
          type = nullOr bool;
        };
        default_column_display = mkOption {
          type = nullOr ColumnDisplay;
        };
        default_column_width = mkOption {
          type = nullOr DefaultPresetSize;
        };
        default_floating_position = mkOption {
          type = nullOr FloatingPosition;
        };
        default_window_height = mkOption {
          type = nullOr DefaultPresetSize;
        };
        draw_border_with_background = mkOption {
          type = nullOr bool;
        };
        excludes = mkOption {
          type = listOf Match;
          default = [];
        };
        focus_ring = mkOption {
          type = BorderRule;
          default = {};
        };
        geometry_corner_radius = mkOption {
          type = nullOr CornerRadius;
        };
        matches = mkOption {
          type = listOf Match;
          default = [];
        };
        max_height = mkOption {
          type = nullOr ints.u16;
        };
        max_width = mkOption {
          type = nullOr ints.u16;
        };
        min_height = mkOption {
          type = nullOr ints.u16;
        };
        min_width = mkOption {
          type = nullOr ints.u16;
        };
        opacity = mkOption {
          type = nullOr float;
        };
        open_floating = mkOption {
          type = nullOr bool;
        };
        open_focused = mkOption {
          type = nullOr bool;
        };
        open_fullscreen = mkOption {
          type = nullOr bool;
        };
        open_maximized = mkOption {
          type = nullOr bool;
        };
        open_maximized_to_edges = mkOption {
          type = nullOr bool;
        };
        open_on_output = mkOption {
          type = nullOr str;
        };
        open_on_workspace = mkOption {
          type = nullOr str;
        };
        popups = mkOption {
          type = PopupsRule;
          default = {};
        };
        scroll_factor = mkOption {
          type = nullOr float;
        };
        shadow = mkOption {
          type = ShadowRule;
          default = {};
        };
        tab_indicator = mkOption {
          type = TabIndicatorRule;
          default = {};
        };
        tiled_state = mkOption {
          type = nullOr bool;
        };
        variable_refresh_rate = mkOption {
          type = nullOr bool;
        };
      };
    };
    Workspace = submodule {
      options = {
        layout = mkOption {
          type = nullOr WorkspaceLayoutPart;
        };
        name = WorkspaceName;
        open_on_output = mkOption {
          type = nullOr str;
        };
      };
    };
    WorkspaceLayoutPart = mkOption {
      type = LayoutPart;
      default = {};
    };
    WorkspaceName = mkOption {
      type = str;
    };
    WorkspaceReference = mkOption {
      type = attrsTag {
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
    };
    WorkspaceShadow = submodule {
      options = {
        color = mkOption {
          type = Color;
          default = {};
        };
        off = mkOption {
          type = bool;
        };
        offset = mkOption {
          type = ShadowOffset;
          default = {};
        };
        softness = mkOption {
          type = float;
        };
        spread = mkOption {
          type = float;
        };
      };
    };
    WorkspaceSwitchAnim = mkOption {
      type = Animation;
      default = {};
    };
    Xkb = submodule {
      options = {
        file = mkOption {
          type = nullOr str;
        };
        layout = mkOption {
          type = str;
        };
        model = mkOption {
          type = str;
        };
        options = mkOption {
          type = nullOr str;
        };
        rules = mkOption {
          type = str;
        };
        variant = mkOption {
          type = str;
        };
      };
    };
    XwaylandSatellite = submodule {
      options = {
        off = mkOption {
          type = bool;
        };
        path = mkOption {
          type = str;
        };
      };
    };
  }
