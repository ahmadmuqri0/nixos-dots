{ lib, ... }:

let
  inherit (lib.hm.gvariant)
    mkTuple
    mkUint32
    mkInt64
    mkVariant
    mkDouble
    mkArray
    ;
in

{
  dconf.settings = {
    "org/gnome/Console" = {
      last-window-maximised = true;
      last-window-size = mkTuple [
        812
        576
      ];
    };

    "org/gnome/Extensions" = {
      window-height = 736;
      window-maximized = false;
      window-width = 779;
    };

    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/Ptyxis" = {
      default-columns = mkUint32 135;
      default-profile-uuid = "d2a18649d4ac767851d9902c6937156a";
      default-rows = mkUint32 35;
      profile-uuids = [ "d2a18649d4ac767851d9902c6937156a" ];
      restore-session = false;
      restore-window-size = false;
      window-size = mkTuple [
        (mkUint32 135)
        (mkUint32 35)
      ];
    };

    "org/gnome/Ptyxis/Profiles/d2a18649d4ac767851d9902c6937156a" = {
      label = "Default";
      palette = "Tokyo Night";
    };

    "org/gnome/control-center" = {
      last-panel = "background";
      window-state = mkTuple [
        980
        640
        false
      ];
    };

    "org/gnome/Weather" = {
      # locations = [
      #   (mkVariant (mkTuple [
      #     (mkUint32 2)
      #     (mkVariant (mkTuple [
      #       "Kuala Lumpur"
      #       "WMSA"
      #       true
      #       [
      #         (mkTuple [
      #           (mkDouble "0.054396100838254115")
      #           (mkDouble "1.7720909613738118")
      #         ])
      #       ]
      #       [
      #         (mkTuple [
      #           (mkDouble "0.055268765464251274")
      #           (mkDouble "1.7749998492782333")
      #         ])
      #       ]
      #     ]))
      #   ]))
      # ];
      window-height = 506;
      window-maximized = false;
      window-width = 1071;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [
        "System"
        "Utilities"
        "YaST"
        "Pardus"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/System" = {
      apps = [
        "org.gnome.baobab.desktop"
        "org.gnome.DiskUtility.desktop"
        "org.gnome.Logs.desktop"
        "org.gnome.SystemMonitor.desktop"
      ];
      name = "X-GNOME-Shell-System.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [
        "org.gnome.Connections.desktop"
        "org.gnome.Evince.desktop"
        "org.gnome.FileRoller.desktop"
        "org.gnome.font-viewer.desktop"
        "org.gnome.Loupe.desktop"
        "org.gnome.seahorse.Application.desktop"
      ];
      name = "X-GNOME-Shell-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/muqri/Pictures/wallpapers/sushi.jpg";
      picture-uri-dark = "file:///home/muqri/Pictures/wallpapers/sushi.jpg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [
        (mkTuple [
          "xkb"
          "us"
        ])
      ];
      xkb-options = [ ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-animations = true;
      enable-hot-corners = false;
      font-antialiasing = "rgba";
      gtk-theme = "adw-gtk3-dark";
      icon-theme = "Tela-blue-dark";
      monospace-font-name = "JetBrainsMono Nerd Font Medium 12";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [
        "firefox"
        "org-gnome-nautilus"
        "org-gnome-geary"
        "org-gnome-console"
        "org-gnome-software"
        "org-gnome-ptyxis"
        "gnome-about-panel"
        "gnome-power-panel"
        "com-rtosta-zapzap"
      ];
    };

    "org/gnome/desktop/notifications/application/com-rtosta-zapzap" = {
      application-id = "com.rtosta.zapzap.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-about-panel" = {
      application-id = "gnome-about-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-geary" = {
      application-id = "org.gnome.Geary.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-ptyxis" = {
      application-id = "org.gnome.Ptyxis.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-software" = {
      application-id = "org.gnome.Software.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      click-method = "areas";
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/muqri/Pictures/wallpapers/sushi.jpg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      move-to-workspace-1 = [ "<Shift><Super>1" ];
      move-to-workspace-2 = [ "<Shift><Super>2" ];
      move-to-workspace-3 = [ "<Shift><Super>3" ];
      move-to-workspace-4 = [ "<Shift><Super>4" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      focus-mode = "mouse";
      resize-with-right-button = true;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-size = mkTuple [
        1024
        768
      ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/dialogs/extract" = {
      height = 800;
      recreate-folders = true;
      skip-newer = false;
      width = 1000;
    };

    "org/gnome/file-roller/file-selector" = {
      show-hidden = false;
      sidebar-size = 300;
      sort-method = "name";
      sort-type = "ascending";
      window-size = mkTuple [
        (-1)
        (-1)
      ];
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 67;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "processes";
      maximized = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-height = 720;
      window-width = 800;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-26-visible = false;
      col-26-width = 0;
      columns-order = [
        0
        12
        1
        2
        3
        4
        6
        7
        8
        9
        10
        11
        13
        14
        15
        16
        17
        18
        19
        20
        21
        22
        23
        24
        25
        26
      ];
      sort-col = 15;
      sort-order = 0;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [
        1310
        766
      ];
      initial-size-file-chooser = mkTuple [
        890
        550
      ];
    };

    "org/gnome/portal/filechooser/org.gnome.Settings" = {
      last-folder-path = "/home/muqri/Pictures";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-schedule-automatic = false;
    };

    "org/gnome/settings-daemon/plugins/housekeeping" = {
      donation-reminder-last-shown = mkInt64 1765336220639205;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
      ];
      home = [ "<Super>e" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "ptyxis";
      name = "Terminal";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-type = "nothing";
    };

    "org/gnome/shell" = {
      enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "blur-my-shell@aunetx"
        "just-perfection-desktop@just-perfection"
        "system-monitor@gnome-shell-extensions.gcampax.github.com"
        "unblank@sun.wxg@gmail.com"
        "weatheroclock@CleoMenezesJr.github.io"
      ];
      welcome-dialog-last-shown-version = "48.2";
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = true;
      brightness = 0.6;
      sigma = 30;
      static-blur = true;
      style-dash-to-dock = 0;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/window-list" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/just-perfection" = {
      controls-manager-spacing-size = 5;
      dash = false;
      dash-app-running = false;
      dash-separator = false;
      panel-button-padding-size = 4;
      panel-indicator-padding-size = 0;
      startup-status = 0;
      theme = false;
    };

    "org/gnome/shell/extensions/system-monitor" = {
      show-swap = false;
    };

    "org/gnome/shell/extensions/unblank" = {
      time = 0;
    };

    "org/gnome/shell/extensions/weather-oclock" = {
      weather-after-clock = true;
    };

    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [ ];
      switch-to-application-2 = [ ];
      switch-to-application-3 = [ ];
      switch-to-application-4 = [ ];
    };

    "org/gnome/shell/weather" = {
      automatic-location = true;
      # locations = [
      #   (mkVariant (mkTuple [
      #     (mkUint32 2)
      #     (mkVariant (mkTuple [
      #       "Kuala Lumpur"
      #       "WMSA"
      #       true
      #       [
      #         (mkTuple [
      #           (mkDouble "0.054396100838254115")
      #           (mkDouble "1.7720909613738118")
      #         ])
      #       ]
      #       [
      #         (mkTuple [
      #           (mkDouble "0.055268765464251274")
      #           (mkDouble "1.7749998492782333")
      #         ])
      #       ]
      #     ]))
      #   ]))
      # ];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1765418936;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1765355282;
    };

    "org/gnome/system/location" = {
      enabled = true;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      show-hidden = false;
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 175;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [
        24
        21
      ];
      window-size = mkTuple [
        1231
        902
      ];
    };
  };
}
