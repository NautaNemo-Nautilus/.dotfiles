{pkgs, ...}: {
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod4";
      terminal = "wezterm";
      startup = [
        {command = "firefox";}
      ];
    };
  };
}
