{pkgs,...}: {
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod4";
      # Use kitty as default terminal
      terminal = "wezterm";
      bars = [
        {
          "hiddenState" = "show";
          "command" = "${pkgs.waybar}/bin/waybar"; # Using WayBar
        }
      ];
      startup = [
        # Launch Firefox on start
        {command = "firefox";}
      ];
    };
  };
}
