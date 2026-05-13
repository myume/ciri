{lib, ...}: let
  inherit (lib.options) mkOption;
in
  with lib.types; rec {
    config = submodule {
      options = {
        input = mkOption {
          type = nullOr input;
        };
        outputs = mkOption {
          type = nullOr outputs;
        };
        spawn-at-startup = mkOption {
          type = listOf spawn-at-startup;
          default = [];
        };
        spawn-sh-at-startup = mkOption {
          type = listOf spawn-sh-at-startup;
          default = [];
        };
        layout = mkOption {
          type = nullOr layout;
        };
        prefer-no-csd = mkOption {
          type = nullOr bool;
        };
        cursor = mkOption {
          type = nullOr cursor;
        };
        screenshot-path = mkOption {
          type = nullOr screenshot-path;
        };
        clipboard = mkOption {
          type = nullOr clipboard;
        };
        hotkey-overlay = mkOption {
          type = nullOr hotkey-overlay;
        };
        config-notification = mkOption {
          type = nullOr config-notification;
        };
        animations = mkOption {
          type = nullOr animations;
        };
        blur = mkOption {
          type = nullOr blur;
        };
        gestures = mkOption {
          type = nullOr gestures;
        };
        overview = mkOption {
          type = nullOr overview;
        };
        environment = mkOption {
          type = nullOr environment;
        };
        xwayland-satellite = mkOption {
          type = nullOr xwayland-satellite;
        };
        window-rules = mkOption {
          type = listOf window-rule;
          default = [];
        };
        layer-rules = mkOption {
          type = listOf layer-rule;
          default = [];
        };
        binds = mkOption {
          type = nullOr binds;
        };
        switch-events = mkOption {
          type = nullOr switch-binds;
        };
        debug = mkOption {
          type = nullOr debug;
        };
        workspaces = mkOption {
          type = listOf workspace;
          default = [];
        };
        recent-windows = mkOption {
          type = nullOr recent-windows;
        };
      };
    };
    input = submodule {
      options = {
        keyboard = mkOption {
          type = nullOr keyboard;
        };
        touchpad = mkOption {
          type = nullOr touchpad;
        };
        mouse = mkOption {
          type = nullOr mouse;
        };
        trackpoint = mkOption {
          type = nullOr trackpoint;
        };
        trackball = mkOption {
          type = nullOr trackball;
        };
        tablet = mkOption {
          type = nullOr tablet;
        };
        touch = mkOption {
          type = nullOr touch;
        };
        disable-power-key-handling = mkOption {
          type = nullOr bool;
        };
        warp-mouse-to-focus = mkOption {
          type = nullOr warp-mouse-to-focus;
        };
        focus-follows-mouse = mkOption {
          type = nullOr focus-follows-mouse;
        };
        workspace-auto-back-and-forth = mkOption {
          type = nullOr bool;
        };
        mod-key = mkOption {
          type = nullOr mod-key;
        };
        mod-key-nested = mkOption {
          type = nullOr mod-key;
        };
      };
    };
    keyboard = submodule {
      options = {
        xkb = mkOption {
          type = nullOr xkb;
        };
        repeat-delay = mkOption {
          type = nullOr (ints.u16);
        };
        repeat-rate = mkOption {
          type = nullOr (ints.u8);
        };
        track-layout = mkOption {
          type = nullOr track-layout;
        };
        numlock = mkOption {
          type = nullOr bool;
        };
      };
    };
    xkb = submodule {
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
    track-layout = enum [
      "global"
      "window"
    ];
    touchpad = submodule {
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
        drag-lock = mkOption {
          type = nullOr bool;
        };
        natural-scroll = mkOption {
          type = nullOr bool;
        };
        click-method = mkOption {
          type = nullOr click-method;
        };
        accel-speed = mkOption {
          type = nullOr (either float int);
        };
        accel-profile = mkOption {
          type = nullOr accel-profile;
        };
        scroll-method = mkOption {
          type = nullOr scroll-method;
        };
        scroll-button = mkOption {
          type = nullOr (ints.u32);
        };
        scroll-button-lock = mkOption {
          type = nullOr bool;
        };
        tap-button-map = mkOption {
          type = nullOr tap-button-map;
        };
        left-handed = mkOption {
          type = nullOr bool;
        };
        disabled-on-external-mouse = mkOption {
          type = nullOr bool;
        };
        middle-emulation = mkOption {
          type = nullOr bool;
        };
        scroll-factor = mkOption {
          type = nullOr scroll-factor;
        };
      };
    };
    click-method = enum [
      "clickfinger"
      "button-areas"
    ];
    accel-profile = enum [
      "adaptive"
      "flat"
    ];
    scroll-method = enum [
      "no-scroll"
      "two-finger"
      "edge"
      "on-button-down"
    ];
    tap-button-map = enum [
      "left-right-middle"
      "left-middle-right"
    ];
    scroll-factor = submodule {
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
    mouse = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        natural-scroll = mkOption {
          type = nullOr bool;
        };
        accel-speed = mkOption {
          type = nullOr (either float int);
        };
        accel-profile = mkOption {
          type = nullOr accel-profile;
        };
        scroll-method = mkOption {
          type = nullOr scroll-method;
        };
        scroll-button = mkOption {
          type = nullOr (ints.u32);
        };
        scroll-button-lock = mkOption {
          type = nullOr bool;
        };
        left-handed = mkOption {
          type = nullOr bool;
        };
        middle-emulation = mkOption {
          type = nullOr bool;
        };
        scroll-factor = mkOption {
          type = nullOr scroll-factor;
        };
      };
    };
    trackpoint = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        natural-scroll = mkOption {
          type = nullOr bool;
        };
        accel-speed = mkOption {
          type = nullOr (either float int);
        };
        accel-profile = mkOption {
          type = nullOr accel-profile;
        };
        scroll-method = mkOption {
          type = nullOr scroll-method;
        };
        scroll-button = mkOption {
          type = nullOr (ints.u32);
        };
        scroll-button-lock = mkOption {
          type = nullOr bool;
        };
        left-handed = mkOption {
          type = nullOr bool;
        };
        middle-emulation = mkOption {
          type = nullOr bool;
        };
      };
    };
    trackball = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        natural-scroll = mkOption {
          type = nullOr bool;
        };
        accel-speed = mkOption {
          type = nullOr (either float int);
        };
        accel-profile = mkOption {
          type = nullOr accel-profile;
        };
        scroll-method = mkOption {
          type = nullOr scroll-method;
        };
        scroll-button = mkOption {
          type = nullOr (ints.u32);
        };
        scroll-button-lock = mkOption {
          type = nullOr bool;
        };
        left-handed = mkOption {
          type = nullOr bool;
        };
        middle-emulation = mkOption {
          type = nullOr bool;
        };
      };
    };
    tablet = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        calibration-matrix = mkOption {
          type = nullOr (listOf float);
        };
        map-to-output = mkOption {
          type = nullOr str;
        };
        map-to-focused-output = mkOption {
          type = nullOr bool;
        };
        map-to-focused-window = mkOption {
          type = nullOr bool;
        };
        left-handed = mkOption {
          type = nullOr bool;
        };
      };
    };
    touch = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        calibration-matrix = mkOption {
          type = nullOr (listOf float);
        };
        map-to-output = mkOption {
          type = nullOr str;
        };
      };
    };
    warp-mouse-to-focus = submodule {
      options = {
        mode = mkOption {
          type = nullOr warp-mouse-to-focus-mode;
        };
      };
    };
    warp-mouse-to-focus-mode = enum [
      "center-xy"
      "center-xy-always"
    ];
    focus-follows-mouse = submodule {
      options = {
        max-scroll-amount = mkOption {
          type = nullOr str;
          example = "10%";
        };
      };
    };
    mod-key = enum [
      "ctrl"
      "shift"
      "alt"
      "super"
      "iso-level3-shift"
      "iso-level5-shift"
    ];
    outputs = listOf output;
    output = submodule {
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
          type = nullOr transform;
        };
        position = mkOption {
          type = nullOr position;
        };
        mode = mkOption {
          type = nullOr mode;
        };
        modeline = mkOption {
          type = nullOr modeline;
        };
        variable-refresh-rate = mkOption {
          type = nullOr vrr;
        };
        focus-at-startup = mkOption {
          type = nullOr bool;
        };
        background-color = mkOption {
          type = nullOr str;
        };
        backdrop-color = mkOption {
          type = nullOr str;
        };
        hot-corners = mkOption {
          type = nullOr hot-corners;
        };
        layout = mkOption {
          type = nullOr layout-part;
        };
      };
    };
    transform = enum [
      "normal"
      "-90"
      "-180"
      "-270"
      "flipped"
      "flipped90"
      "flipped180"
      "flipped270"
    ];
    position = submodule {
      options = {
        x = mkOption {
          type = ints.s32;
        };
        y = mkOption {
          type = ints.s32;
        };
      };
    };
    mode = submodule {
      options = {
        custom = mkOption {
          type = bool;
        };
        mode = mkOption {
          type = str;
        };
      };
    };
    modeline = submodule {
      options = {
        clock = mkOption {
          type = float;
        };
        hdisplay = mkOption {
          type = ints.u16;
        };
        hsync-start = mkOption {
          type = ints.u16;
        };
        hsync-end = mkOption {
          type = ints.u16;
        };
        htotal = mkOption {
          type = ints.u16;
        };
        vdisplay = mkOption {
          type = ints.u16;
        };
        vsync-start = mkOption {
          type = ints.u16;
        };
        vsync-end = mkOption {
          type = ints.u16;
        };
        vtotal = mkOption {
          type = ints.u16;
        };
        hsync-polarity = mkOption {
          type = h-sync-polarity;
        };
        vsync-polarity = mkOption {
          type = v-sync-polarity;
        };
      };
    };
    h-sync-polarity = enum [
      "p-h-sync"
      "n-h-sync"
    ];
    v-sync-polarity = enum [
      "p-v-sync"
      "n-v-sync"
    ];
    vrr = submodule {
      options = {
        on-demand = mkOption {
          type = nullOr bool;
        };
      };
    };
    hot-corners = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        top-left = mkOption {
          type = nullOr bool;
        };
        top-right = mkOption {
          type = nullOr bool;
        };
        bottom-left = mkOption {
          type = nullOr bool;
        };
        bottom-right = mkOption {
          type = nullOr bool;
        };
      };
    };
    layout-part = submodule {
      options = {
        focus-ring = mkOption {
          type = nullOr border-rule;
        };
        border = mkOption {
          type = nullOr border-rule;
        };
        shadow = mkOption {
          type = nullOr shadow-rule;
        };
        tab-indicator = mkOption {
          type = nullOr tab-indicator-part;
        };
        insert-hint = mkOption {
          type = nullOr insert-hint-part;
        };
        preset-column-widths = mkOption {
          type = nullOr (listOf preset-size);
        };
        default-column-width = mkOption {
          type = nullOr default-preset-size;
        };
        preset-window-heights = mkOption {
          type = nullOr (listOf preset-size);
        };
        center-focused-column = mkOption {
          type = nullOr center-focused-column;
        };
        always-center-single-column = mkOption {
          type = nullOr flag;
        };
        empty-workspace-above-first = mkOption {
          type = nullOr flag;
        };
        default-column-display = mkOption {
          type = nullOr column-display;
        };
        gaps = mkOption {
          type = nullOr (either float int);
        };
        struts = mkOption {
          type = nullOr struts;
        };
        background-color = mkOption {
          type = nullOr str;
        };
      };
    };
    border-rule = submodule {
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
        active-color = mkOption {
          type = nullOr str;
        };
        inactive-color = mkOption {
          type = nullOr str;
        };
        urgent-color = mkOption {
          type = nullOr str;
        };
        active-gradient = mkOption {
          type = nullOr gradient;
        };
        inactive-gradient = mkOption {
          type = nullOr gradient;
        };
        urgent-gradient = mkOption {
          type = nullOr gradient;
        };
      };
    };
    gradient = submodule {
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
        relative-to = mkOption {
          type = gradient-relative-to;
        };
        in_ = mkOption {
          type = str;
        };
      };
    };
    gradient-relative-to = enum [
      "window"
      "workspace-view"
    ];
    shadow-rule = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        on = mkOption {
          type = nullOr bool;
        };
        offset = mkOption {
          type = nullOr shadow-offset;
        };
        softness = mkOption {
          type = nullOr (either float int);
        };
        spread = mkOption {
          type = nullOr (either float int);
        };
        draw-behind-window = mkOption {
          type = nullOr bool;
        };
        color = mkOption {
          type = nullOr str;
        };
        inactive-color = mkOption {
          type = nullOr str;
        };
      };
    };
    shadow-offset = submodule {
      options = {
        x = mkOption {
          type = either float int;
        };
        y = mkOption {
          type = either float int;
        };
      };
    };
    tab-indicator-part = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        on = mkOption {
          type = nullOr bool;
        };
        hide-when-single-tab = mkOption {
          type = nullOr flag;
        };
        place-within-column = mkOption {
          type = nullOr flag;
        };
        gap = mkOption {
          type = nullOr (either float int);
        };
        width = mkOption {
          type = nullOr (either float int);
        };
        length = mkOption {
          type = nullOr tab-indicator-length;
        };
        position = mkOption {
          type = nullOr tab-indicator-position;
        };
        gaps-between-tabs = mkOption {
          type = nullOr (either float int);
        };
        corner-radius = mkOption {
          type = nullOr (either float int);
        };
        active-color = mkOption {
          type = nullOr str;
        };
        inactive-color = mkOption {
          type = nullOr str;
        };
        urgent-color = mkOption {
          type = nullOr str;
        };
        active-gradient = mkOption {
          type = nullOr gradient;
        };
        inactive-gradient = mkOption {
          type = nullOr gradient;
        };
        urgent-gradient = mkOption {
          type = nullOr gradient;
        };
      };
    };
    flag = bool;
    tab-indicator-length = submodule {
      options = {
        total-proportion = mkOption {
          type = nullOr float;
        };
      };
    };
    tab-indicator-position = enum [
      "left"
      "right"
      "top"
      "bottom"
    ];
    insert-hint-part = submodule {
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
          type = nullOr gradient;
        };
      };
    };
    preset-size = attrTag {
      proportion = mkOption {
        type = float;
      };
      fixed = mkOption {
        type = ints.s32;
      };
    };
    default-preset-size = nullOr preset-size;
    center-focused-column = enum [
      "never"
      "always"
      "on-overflow"
    ];
    column-display = enum [
      "normal"
      "tabbed"
    ];
    struts = submodule {
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
    spawn-at-startup = submodule {
      options = {
        command = mkOption {
          type = listOf str;
          default = [];
        };
      };
    };
    spawn-sh-at-startup = submodule {
      options = {
        command = mkOption {
          type = str;
        };
      };
    };
    layout = submodule {
      options = {
        focus-ring = mkOption {
          type = nullOr focus-ring;
        };
        border = mkOption {
          type = nullOr border;
        };
        shadow = mkOption {
          type = nullOr shadow;
        };
        tab-indicator = mkOption {
          type = nullOr tab-indicator;
        };
        insert-hint = mkOption {
          type = nullOr insert-hint;
        };
        preset-column-widths = mkOption {
          type = listOf preset-size;
          default = [];
        };
        default-column-width = mkOption {
          type = nullOr preset-size;
        };
        preset-window-heights = mkOption {
          type = listOf preset-size;
          default = [];
        };
        center-focused-column = mkOption {
          type = nullOr center-focused-column;
        };
        always-center-single-column = mkOption {
          type = nullOr bool;
        };
        empty-workspace-above-first = mkOption {
          type = nullOr bool;
        };
        default-column-display = mkOption {
          type = nullOr column-display;
        };
        gaps = mkOption {
          type = nullOr float;
        };
        struts = mkOption {
          type = nullOr struts;
        };
        background-color = mkOption {
          type = nullOr str;
        };
      };
    };
    focus-ring = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        width = mkOption {
          type = nullOr float;
        };
        active-color = mkOption {
          type = nullOr str;
        };
        inactive-color = mkOption {
          type = nullOr str;
        };
        urgent-color = mkOption {
          type = nullOr str;
        };
        active-gradient = mkOption {
          type = nullOr gradient;
        };
        inactive-gradient = mkOption {
          type = nullOr gradient;
        };
        urgent-gradient = mkOption {
          type = nullOr gradient;
        };
      };
    };
    border = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        width = mkOption {
          type = nullOr float;
        };
        active-color = mkOption {
          type = nullOr str;
        };
        inactive-color = mkOption {
          type = nullOr str;
        };
        urgent-color = mkOption {
          type = nullOr str;
        };
        active-gradient = mkOption {
          type = nullOr gradient;
        };
        inactive-gradient = mkOption {
          type = nullOr gradient;
        };
        urgent-gradient = mkOption {
          type = nullOr gradient;
        };
      };
    };
    shadow = submodule {
      options = {
        on = mkOption {
          type = nullOr bool;
        };
        offset = mkOption {
          type = nullOr shadow-offset;
        };
        softness = mkOption {
          type = nullOr float;
        };
        spread = mkOption {
          type = nullOr float;
        };
        draw-behind-window = mkOption {
          type = nullOr bool;
        };
        color = mkOption {
          type = nullOr str;
        };
        inactive-color = mkOption {
          type = nullOr str;
        };
      };
    };
    tab-indicator = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        hide-when-single-tab = mkOption {
          type = nullOr bool;
        };
        place-within-column = mkOption {
          type = nullOr bool;
        };
        gap = mkOption {
          type = nullOr float;
        };
        width = mkOption {
          type = nullOr float;
        };
        length = mkOption {
          type = nullOr tab-indicator-length;
        };
        position = mkOption {
          type = nullOr tab-indicator-position;
        };
        gaps-between-tabs = mkOption {
          type = nullOr float;
        };
        corner-radius = mkOption {
          type = nullOr float;
        };
        active-color = mkOption {
          type = nullOr str;
        };
        inactive-color = mkOption {
          type = nullOr str;
        };
        urgent-color = mkOption {
          type = nullOr str;
        };
        active-gradient = mkOption {
          type = nullOr gradient;
        };
        inactive-gradient = mkOption {
          type = nullOr gradient;
        };
        urgent-gradient = mkOption {
          type = nullOr gradient;
        };
      };
    };
    insert-hint = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        color = mkOption {
          type = nullOr str;
        };
        gradient = mkOption {
          type = nullOr gradient;
        };
      };
    };
    cursor = submodule {
      options = {
        xcursor-theme = mkOption {
          type = nullOr str;
        };
        xcursor-size = mkOption {
          type = nullOr (ints.u8);
        };
        hide-when-typing = mkOption {
          type = nullOr bool;
        };
        hide-after-inactive-ms = mkOption {
          type = nullOr (ints.u32);
        };
      };
    };
    screenshot-path = nullOr str;
    clipboard = submodule {
      options = {
        disable-primary = mkOption {
          type = nullOr bool;
        };
      };
    };
    hotkey-overlay = submodule {
      options = {
        skip-at-startup = mkOption {
          type = nullOr bool;
        };
        hide-not-bound = mkOption {
          type = nullOr bool;
        };
      };
    };
    config-notification = submodule {
      options = {
        disable-failed = mkOption {
          type = nullOr bool;
        };
      };
    };
    animations = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        slowdown = mkOption {
          type = nullOr float;
        };
        workspace-switch = mkOption {
          type = nullOr workspace-switch-anim;
        };
        window-open = mkOption {
          type = nullOr window-open-anim;
        };
        window-close = mkOption {
          type = nullOr window-close-anim;
        };
        horizontal-view-movement = mkOption {
          type = nullOr horizontal-view-movement-anim;
        };
        window-movement = mkOption {
          type = nullOr window-movement-anim;
        };
        window-resize = mkOption {
          type = nullOr window-resize-anim;
        };
        config-notification-open-close = mkOption {
          type = nullOr config-notification-open-close-anim;
        };
        exit-confirmation-open-close = mkOption {
          type = nullOr exit-confirmation-open-close-anim;
        };
        screenshot-ui-open = mkOption {
          type = nullOr screenshot-ui-open-anim;
        };
        overview-open-close = mkOption {
          type = nullOr overview-open-close-anim;
        };
        recent-windows-close = mkOption {
          type = nullOr recent-windows-close-anim;
        };
      };
    };
    workspace-switch-anim = animation;
    animation = submodule {
      options = {
        off = mkOption {
          type = bool;
        };
        kind = mkOption {
          type = kind;
        };
      };
    };
    kind = attrTag {
      easing = mkOption {
        type = easing-params;
      };
      spring = mkOption {
        type = spring-params;
      };
    };
    easing-params = submodule {
      options = {
        duration-ms = mkOption {
          type = ints.u32;
        };
        curve = mkOption {
          type = curve;
        };
      };
    };
    curve = attrTag {
      linear = mkOption {
        type = bool;
      };
      ease-out-quad = mkOption {
        type = bool;
      };
      ease-out-cubic = mkOption {
        type = bool;
      };
      ease-out-expo = mkOption {
        type = bool;
      };
      cubic-bezier = mkOption {
        type = listOf (oneOf [
          float
          float
          float
          float
        ]);
        default = [];
      };
    };
    spring-params = submodule {
      options = {
        damping-ratio = mkOption {
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
    window-open-anim = submodule {
      options = {
        anim = mkOption {
          type = nullOr animation;
        };
        custom-shader = mkOption {
          type = nullOr str;
        };
      };
    };
    window-close-anim = submodule {
      options = {
        anim = mkOption {
          type = nullOr animation;
        };
        custom-shader = mkOption {
          type = nullOr str;
        };
      };
    };
    horizontal-view-movement-anim = animation;
    window-movement-anim = animation;
    window-resize-anim = submodule {
      options = {
        anim = mkOption {
          type = nullOr animation;
        };
        custom-shader = mkOption {
          type = nullOr str;
        };
      };
    };
    config-notification-open-close-anim = animation;
    exit-confirmation-open-close-anim = animation;
    screenshot-ui-open-anim = animation;
    overview-open-close-anim = animation;
    recent-windows-close-anim = animation;
    blur = submodule {
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
    gestures = submodule {
      options = {
        dnd-edge-view-scroll = mkOption {
          type = nullOr dnd-edge-view-scroll;
        };
        dnd-edge-workspace-switch = mkOption {
          type = nullOr dnd-edge-workspace-switch;
        };
        hot-corners = mkOption {
          type = nullOr hot-corners;
        };
      };
    };
    dnd-edge-view-scroll = submodule {
      options = {
        trigger-width = mkOption {
          type = nullOr float;
        };
        delay-ms = mkOption {
          type = nullOr (ints.u16);
        };
        max-speed = mkOption {
          type = nullOr float;
        };
      };
    };
    dnd-edge-workspace-switch = submodule {
      options = {
        trigger-height = mkOption {
          type = nullOr float;
        };
        delay-ms = mkOption {
          type = nullOr (ints.u16);
        };
        max-speed = mkOption {
          type = nullOr float;
        };
      };
    };
    overview = submodule {
      options = {
        zoom = mkOption {
          type = nullOr float;
        };
        backdrop-color = mkOption {
          type = nullOr str;
        };
        workspace-shadow = mkOption {
          type = nullOr workspace-shadow;
        };
      };
    };
    workspace-shadow = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        offset = mkOption {
          type = nullOr shadow-offset;
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
    environment = listOf environment-variable;
    environment-variable = submodule {
      options = {
        name = mkOption {
          type = str;
        };
        value = mkOption {
          type = nullOr str;
        };
      };
    };
    xwayland-satellite = submodule {
      options = {
        off = mkOption {
          type = nullOr bool;
        };
        path = mkOption {
          type = nullOr str;
        };
      };
    };
    window-rule = submodule {
      options = {
        matches = mkOption {
          type = listOf window-rule-match;
          default = [];
        };
        excludes = mkOption {
          type = listOf window-rule-match;
          default = [];
        };
        default-column-width = mkOption {
          type = nullOr default-preset-size;
        };
        default-window-height = mkOption {
          type = nullOr default-preset-size;
        };
        open-on-output = mkOption {
          type = nullOr str;
        };
        open-on-workspace = mkOption {
          type = nullOr str;
        };
        open-maximized = mkOption {
          type = nullOr bool;
        };
        open-maximized-to-edges = mkOption {
          type = nullOr bool;
        };
        open-fullscreen = mkOption {
          type = nullOr bool;
        };
        open-floating = mkOption {
          type = nullOr bool;
        };
        open-focused = mkOption {
          type = nullOr bool;
        };
        min-width = mkOption {
          type = nullOr (ints.u16);
        };
        min-height = mkOption {
          type = nullOr (ints.u16);
        };
        max-width = mkOption {
          type = nullOr (ints.u16);
        };
        max-height = mkOption {
          type = nullOr (ints.u16);
        };
        focus-ring = mkOption {
          type = nullOr border-rule;
        };
        border = mkOption {
          type = nullOr border-rule;
        };
        shadow = mkOption {
          type = nullOr shadow-rule;
        };
        tab-indicator = mkOption {
          type = nullOr tab-indicator-rule;
        };
        draw-border-with-background = mkOption {
          type = nullOr bool;
        };
        opacity = mkOption {
          type = nullOr float;
        };
        geometry-corner-radius = mkOption {
          type = nullOr corner-radius;
        };
        clip-to-geometry = mkOption {
          type = nullOr bool;
        };
        baba-is-float = mkOption {
          type = nullOr bool;
        };
        block-out-from = mkOption {
          type = nullOr block-out-from;
        };
        variable-refresh-rate = mkOption {
          type = nullOr bool;
        };
        default-column-display = mkOption {
          type = nullOr column-display;
        };
        default-floating-position = mkOption {
          type = nullOr floating-position;
        };
        scroll-factor = mkOption {
          type = nullOr (either float int);
        };
        tiled-state = mkOption {
          type = nullOr bool;
        };
        background-effect = mkOption {
          type = nullOr background-effect-rule;
        };
        popups = mkOption {
          type = nullOr popups-rule;
        };
      };
    };
    tab-indicator-rule = submodule {
      options = {
        active-color = mkOption {
          type = nullOr str;
        };
        inactive-color = mkOption {
          type = nullOr str;
        };
        urgent-color = mkOption {
          type = nullOr str;
        };
        active-gradient = mkOption {
          type = nullOr gradient;
        };
        inactive-gradient = mkOption {
          type = nullOr gradient;
        };
        urgent-gradient = mkOption {
          type = nullOr gradient;
        };
      };
    };
    corner-radius = submodule {
      options = {
        top-left = mkOption {
          type = nullOr float;
        };
        top-right = mkOption {
          type = nullOr float;
        };
        bottom-right = mkOption {
          type = nullOr float;
        };
        bottom-left = mkOption {
          type = nullOr float;
        };
      };
    };
    block-out-from = enum [
      "screencast"
      "screen-capture"
    ];
    floating-position = submodule {
      options = {
        x = mkOption {
          type = either float int;
        };
        y = mkOption {
          type = either float int;
        };
        relative-to = mkOption {
          type = relative-to;
        };
      };
    };
    relative-to = enum [
      "top-left"
      "top-right"
      "bottom-left"
      "bottom-right"
      "top"
      "bottom"
      "left"
      "right"
    ];
    background-effect-rule = submodule {
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
    popups-rule = submodule {
      options = {
        opacity = mkOption {
          type = nullOr float;
        };
        geometry-corner-radius = mkOption {
          type = nullOr corner-radius;
        };
        background-effect = mkOption {
          type = nullOr background-effect-rule;
        };
      };
    };
    layer-rule = submodule {
      options = {
        matches = mkOption {
          type = listOf layer-rule-match;
          default = [];
        };
        excludes = mkOption {
          type = listOf layer-rule-match;
          default = [];
        };
        opacity = mkOption {
          type = nullOr float;
        };
        block-out-from = mkOption {
          type = nullOr block-out-from;
        };
        shadow = mkOption {
          type = nullOr shadow-rule;
        };
        geometry-corner-radius = mkOption {
          type = nullOr corner-radius;
        };
        place-within-backdrop = mkOption {
          type = nullOr bool;
        };
        baba-is-float = mkOption {
          type = nullOr bool;
        };
        background-effect = mkOption {
          type = nullOr background-effect-rule;
        };
        popups = mkOption {
          type = nullOr popups-rule;
        };
      };
    };
    binds = listOf bind;
    bind = submodule {
      options = {
        key = mkOption {
          type = str;
          example = "Mod+J";
        };
        action = mkOption {
          type = action;
        };
        repeat = mkOption {
          type = nullOr bool;
        };
        cooldown = mkOption {
          type = nullOr (ints.u32);
        };
        allow-when-locked = mkOption {
          type = nullOr bool;
        };
        allow-inhibiting = mkOption {
          type = nullOr bool;
        };
        hotkey-overlay-title = mkOption {
          type = nullOr (nullOr str);
        };
      };
    };
    action = attrTag {
      quit = mkOption {
        type = submodule {
          options = {
            skip-confirmation = mkOption {
              type = nullOr bool;
            };
          };
        };
      };
      suspend = mkOption {
        type = bool;
      };
      power-off-monitors = mkOption {
        type = bool;
      };
      power-on-monitors = mkOption {
        type = bool;
      };
      toggle-debug-tint = mkOption {
        type = bool;
      };
      debug-toggle-opaque-regions = mkOption {
        type = bool;
      };
      debug-toggle-damage = mkOption {
        type = bool;
      };
      spawn = mkOption {
        type = listOf str;
        default = [];
      };
      spawn-sh = mkOption {
        type = str;
      };
      do-screen-transition = mkOption {
        type = submodule {
          options = {
            delay-ms = mkOption {
              type = nullOr (ints.u16);
            };
          };
        };
      };
      screenshot = mkOption {
        type = submodule {
          options = {
            show-pointer = mkOption {
              type = nullOr bool;
            };
            args = mkOption {
              type = listOf (oneOf [
                (nullOr str)
              ]);
              default = [];
            };
          };
        };
      };
      screenshot-screen = mkOption {
        type = submodule {
          options = {
            write-to-disk = mkOption {
              type = nullOr bool;
            };
            show-pointer = mkOption {
              type = nullOr bool;
            };
            args = mkOption {
              type = listOf (oneOf [
                (nullOr str)
              ]);
              default = [];
            };
          };
        };
      };
      screenshot-window = mkOption {
        type = submodule {
          options = {
            write-to-disk = mkOption {
              type = nullOr bool;
            };
            show-pointer = mkOption {
              type = nullOr bool;
            };
            args = mkOption {
              type = listOf (oneOf [
                (nullOr str)
              ]);
              default = [];
            };
          };
        };
      };
      toggle-keyboard-shortcuts-inhibit = mkOption {
        type = bool;
      };
      close-window = mkOption {
        type = bool;
      };
      fullscreen-window = mkOption {
        type = bool;
      };
      toggle-windowed-fullscreen = mkOption {
        type = bool;
      };
      focus-window-in-column = mkOption {
        type = ints.u8;
      };
      focus-window-previous = mkOption {
        type = bool;
      };
      focus-column-left = mkOption {
        type = bool;
      };
      focus-column-right = mkOption {
        type = bool;
      };
      focus-column-first = mkOption {
        type = bool;
      };
      focus-column-last = mkOption {
        type = bool;
      };
      focus-column-right-or-first = mkOption {
        type = bool;
      };
      focus-column-left-or-last = mkOption {
        type = bool;
      };
      focus-column = mkOption {
        type = ints.unsigned;
      };
      focus-window-or-monitor-up = mkOption {
        type = bool;
      };
      focus-window-or-monitor-down = mkOption {
        type = bool;
      };
      focus-column-or-monitor-left = mkOption {
        type = bool;
      };
      focus-column-or-monitor-right = mkOption {
        type = bool;
      };
      focus-window-down = mkOption {
        type = bool;
      };
      focus-window-up = mkOption {
        type = bool;
      };
      focus-window-down-or-column-left = mkOption {
        type = bool;
      };
      focus-window-down-or-column-right = mkOption {
        type = bool;
      };
      focus-window-up-or-column-left = mkOption {
        type = bool;
      };
      focus-window-up-or-column-right = mkOption {
        type = bool;
      };
      focus-window-or-workspace-down = mkOption {
        type = bool;
      };
      focus-window-or-workspace-up = mkOption {
        type = bool;
      };
      focus-window-top = mkOption {
        type = bool;
      };
      focus-window-bottom = mkOption {
        type = bool;
      };
      focus-window-down-or-top = mkOption {
        type = bool;
      };
      focus-window-up-or-bottom = mkOption {
        type = bool;
      };
      move-column-left = mkOption {
        type = bool;
      };
      move-column-right = mkOption {
        type = bool;
      };
      move-column-to-first = mkOption {
        type = bool;
      };
      move-column-to-last = mkOption {
        type = bool;
      };
      move-column-left-or-to-monitor-left = mkOption {
        type = bool;
      };
      move-column-right-or-to-monitor-right = mkOption {
        type = bool;
      };
      move-column-to-index = mkOption {
        type = ints.unsigned;
      };
      move-window-down = mkOption {
        type = bool;
      };
      move-window-up = mkOption {
        type = bool;
      };
      move-window-down-or-to-workspace-down = mkOption {
        type = bool;
      };
      move-window-up-or-to-workspace-up = mkOption {
        type = bool;
      };
      consume-or-expel-window-left = mkOption {
        type = bool;
      };
      consume-or-expel-window-right = mkOption {
        type = bool;
      };
      consume-window-into-column = mkOption {
        type = bool;
      };
      expel-window-from-column = mkOption {
        type = bool;
      };
      swap-window-left = mkOption {
        type = bool;
      };
      swap-window-right = mkOption {
        type = bool;
      };
      toggle-column-tabbed-display = mkOption {
        type = bool;
      };
      set-column-display = mkOption {
        type = column-display;
      };
      center-column = mkOption {
        type = bool;
      };
      center-window = mkOption {
        type = bool;
      };
      center-visible-columns = mkOption {
        type = bool;
      };
      focus-workspace-down = mkOption {
        type = bool;
      };
      focus-workspace-up = mkOption {
        type = bool;
      };
      focus-workspace = mkOption {
        type = either str ints.unsigned;
      };
      focus-workspace-previous = mkOption {
        type = bool;
      };
      move-window-to-workspace-down = mkOption {
        type = submodule {
          options = {
            focus = mkOption {
              type = nullOr bool;
            };
          };
        };
      };
      move-window-to-workspace-up = mkOption {
        type = submodule {
          options = {
            focus = mkOption {
              type = nullOr bool;
            };
          };
        };
      };
      move-window-to-workspace = mkOption {
        type = submodule {
          options = {
            focus = mkOption {
              type = nullOr bool;
            };
            args = mkOption {
              type = listOf (oneOf [
                (either str ints.unsigned)
              ]);
              default = [];
            };
          };
        };
      };
      move-column-to-workspace-down = mkOption {
        type = submodule {
          options = {
            focus = mkOption {
              type = nullOr bool;
            };
          };
        };
      };
      move-column-to-workspace-up = mkOption {
        type = submodule {
          options = {
            focus = mkOption {
              type = nullOr bool;
            };
          };
        };
      };
      move-column-to-workspace = mkOption {
        type = submodule {
          options = {
            focus = mkOption {
              type = nullOr bool;
            };
            args = mkOption {
              type = listOf (oneOf [
                (either str ints.unsigned)
              ]);
              default = [];
            };
          };
        };
      };
      move-workspace-down = mkOption {
        type = bool;
      };
      move-workspace-up = mkOption {
        type = bool;
      };
      move-workspace-to-index = mkOption {
        type = ints.unsigned;
      };
      move-workspace-to-monitor = mkOption {
        type = str;
      };
      set-workspace-name = mkOption {
        type = str;
      };
      unset-workspace-name = mkOption {
        type = bool;
      };
      focus-monitor-left = mkOption {
        type = bool;
      };
      focus-monitor-right = mkOption {
        type = bool;
      };
      focus-monitor-down = mkOption {
        type = bool;
      };
      focus-monitor-up = mkOption {
        type = bool;
      };
      focus-monitor-previous = mkOption {
        type = bool;
      };
      focus-monitor-next = mkOption {
        type = bool;
      };
      focus-monitor = mkOption {
        type = str;
      };
      move-window-to-monitor-left = mkOption {
        type = bool;
      };
      move-window-to-monitor-right = mkOption {
        type = bool;
      };
      move-window-to-monitor-down = mkOption {
        type = bool;
      };
      move-window-to-monitor-up = mkOption {
        type = bool;
      };
      move-window-to-monitor-previous = mkOption {
        type = bool;
      };
      move-window-to-monitor-next = mkOption {
        type = bool;
      };
      move-window-to-monitor = mkOption {
        type = str;
      };
      move-column-to-monitor-left = mkOption {
        type = bool;
      };
      move-column-to-monitor-right = mkOption {
        type = bool;
      };
      move-column-to-monitor-down = mkOption {
        type = bool;
      };
      move-column-to-monitor-up = mkOption {
        type = bool;
      };
      move-column-to-monitor-previous = mkOption {
        type = bool;
      };
      move-column-to-monitor-next = mkOption {
        type = bool;
      };
      move-column-to-monitor = mkOption {
        type = str;
      };
      set-window-width = mkOption {
        type = str;
      };
      set-window-height = mkOption {
        type = str;
      };
      reset-window-height = mkOption {
        type = bool;
      };
      switch-preset-column-width = mkOption {
        type = bool;
      };
      switch-preset-column-width-back = mkOption {
        type = bool;
      };
      switch-preset-window-width = mkOption {
        type = bool;
      };
      switch-preset-window-width-back = mkOption {
        type = bool;
      };
      switch-preset-window-height = mkOption {
        type = bool;
      };
      switch-preset-window-height-back = mkOption {
        type = bool;
      };
      maximize-column = mkOption {
        type = bool;
      };
      maximize-window-to-edges = mkOption {
        type = bool;
      };
      set-column-width = mkOption {
        type = str;
      };
      expand-column-to-available-width = mkOption {
        type = bool;
      };
      switch-layout = mkOption {
        type = str;
      };
      show-hotkey-overlay = mkOption {
        type = bool;
      };
      move-workspace-to-monitor-left = mkOption {
        type = bool;
      };
      move-workspace-to-monitor-right = mkOption {
        type = bool;
      };
      move-workspace-to-monitor-down = mkOption {
        type = bool;
      };
      move-workspace-to-monitor-up = mkOption {
        type = bool;
      };
      move-workspace-to-monitor-previous = mkOption {
        type = bool;
      };
      move-workspace-to-monitor-next = mkOption {
        type = bool;
      };
      toggle-window-floating = mkOption {
        type = bool;
      };
      move-window-to-floating = mkOption {
        type = bool;
      };
      move-window-to-tiling = mkOption {
        type = bool;
      };
      focus-floating = mkOption {
        type = bool;
      };
      focus-tiling = mkOption {
        type = bool;
      };
      switch-focus-between-floating-and-tiling = mkOption {
        type = bool;
      };
      toggle-window-rule-opacity = mkOption {
        type = bool;
      };
      set-dynamic-cast-window = mkOption {
        type = bool;
      };
      set-dynamic-cast-monitor = mkOption {
        type = nullOr str;
      };
      clear-dynamic-cast-target = mkOption {
        type = bool;
      };
      toggle-overview = mkOption {
        type = bool;
      };
      open-overview = mkOption {
        type = bool;
      };
      close-overview = mkOption {
        type = bool;
      };
    };
    switch-binds = submodule {
      options = {
        lid-open = mkOption {
          type = nullOr switch-action;
        };
        lid-close = mkOption {
          type = nullOr switch-action;
        };
        tablet-mode-on = mkOption {
          type = nullOr switch-action;
        };
        tablet-mode-off = mkOption {
          type = nullOr switch-action;
        };
      };
    };
    switch-action = submodule {
      options = {
        spawn = mkOption {
          type = listOf str;
          default = [];
        };
      };
    };
    debug = submodule {
      options = {
        preview-render = mkOption {
          type = nullOr preview-render;
        };
        dbus-interfaces-in-non-session-instances = mkOption {
          type = nullOr bool;
        };
        wait-for-frame-completion-before-queueing = mkOption {
          type = nullOr bool;
        };
        enable-overlay-planes = mkOption {
          type = nullOr bool;
        };
        disable-cursor-plane = mkOption {
          type = nullOr bool;
        };
        disable-direct-scanout = mkOption {
          type = nullOr bool;
        };
        keep-max-bpc-unchanged = mkOption {
          type = nullOr bool;
        };
        restrict-primary-scanout-to-matching-format = mkOption {
          type = nullOr bool;
        };
        force-disable-connectors-on-resume = mkOption {
          type = nullOr bool;
        };
        render-drm-device = mkOption {
          type = nullOr str;
        };
        ignored-drm-devices = mkOption {
          type = listOf str;
          default = [];
        };
        force-pipewire-invalid-modifier = mkOption {
          type = nullOr bool;
        };
        emulate-zero-presentation-time = mkOption {
          type = nullOr bool;
        };
        disable-resize-throttling = mkOption {
          type = nullOr bool;
        };
        disable-transactions = mkOption {
          type = nullOr bool;
        };
        keep-laptop-panel-on-when-lid-is-closed = mkOption {
          type = nullOr bool;
        };
        disable-monitor-names = mkOption {
          type = nullOr bool;
        };
        strict-new-window-focus-policy = mkOption {
          type = nullOr bool;
        };
        honor-xdg-activation-with-invalid-serial = mkOption {
          type = nullOr bool;
        };
        deactivate-unfocused-windows = mkOption {
          type = nullOr bool;
        };
        skip-cursor-only-updates-during-vrr = mkOption {
          type = nullOr bool;
        };
      };
    };
    preview-render = enum [
      "screencast"
      "screen-capture"
    ];
    workspace = submodule {
      options = {
        name = mkOption {
          type = workspace-name;
        };
        open-on-output = mkOption {
          type = nullOr str;
        };
        layout = mkOption {
          type = nullOr workspace-layout-part;
        };
      };
    };
    workspace-name = str;
    workspace-layout-part = layout-part;
    recent-windows = submodule {
      options = {
        on = mkOption {
          type = nullOr bool;
        };
        debounce-ms = mkOption {
          type = nullOr (ints.u16);
        };
        open-delay-ms = mkOption {
          type = nullOr (ints.u16);
        };
        highlight = mkOption {
          type = nullOr mru-highlight;
        };
        previews = mkOption {
          type = nullOr mru-previews;
        };
        binds = mkOption {
          type = listOf bind;
          default = [];
        };
      };
    };
    mru-highlight = submodule {
      options = {
        active-color = mkOption {
          type = nullOr str;
        };
        urgent-color = mkOption {
          type = nullOr str;
        };
        padding = mkOption {
          type = nullOr float;
        };
        corner-radius = mkOption {
          type = nullOr float;
        };
      };
    };
    mru-previews = submodule {
      options = {
        max-height = mkOption {
          type = nullOr float;
        };
        max-scale = mkOption {
          type = nullOr float;
        };
      };
    };
    layer-rule-match = submodule {
      options = {
        namespace = mkOption {
          type = nullOr str;
        };
        at-startup = mkOption {
          type = nullOr bool;
        };
        layer = mkOption {
          type = nullOr layer;
        };
      };
    };
    layer = enum [
      "background"
      "bottom"
      "top"
      "overlay"
    ];
    window-rule-match = submodule {
      options = {
        app-id = mkOption {
          type = nullOr str;
        };
        title = mkOption {
          type = nullOr str;
        };
        is-active = mkOption {
          type = nullOr bool;
        };
        is-focused = mkOption {
          type = nullOr bool;
        };
        is-active-in-column = mkOption {
          type = nullOr bool;
        };
        is-floating = mkOption {
          type = nullOr bool;
        };
        is-window-cast-target = mkOption {
          type = nullOr bool;
        };
        is-urgent = mkOption {
          type = nullOr bool;
        };
        at-startup = mkOption {
          type = nullOr bool;
        };
      };
    };
  }
