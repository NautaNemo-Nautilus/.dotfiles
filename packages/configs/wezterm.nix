{pkgs, ...}: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local ewzterm = require 'wezterm'
      local config={}
      
      config.color_scheme = 'iceberg-dark'
      config.font = wezterm.font("HackGen Console NF", {weight="Regular", stretch="Normal", style="Normal"})
      config.font_size = 16
      config.window_background_opacity = 0.85

      config.cursor_thickness = "2pt"
      config.status_update_interval = 1000
      config.scrollback_lines = 3500
      config.animation_fps = 120
      config.window_background_opacity = 0.93
      
      return config
    '';
  };
}
