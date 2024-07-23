{pkgs, ...}: {
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs; [
      swaylock
      swayidle
      wl-clipboard
      dmenu
      alacritty
    ];
    extraSessionCommands = ''
      export SDL_VIDEODRIVER=wayland
      export QT_QPA_PLATFORM=wayland
      export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
      export _JAVA_AWT_WM_NONREPARENTING=1
      export MOZ_ENABLE_WAYLAND=1
    '';
  };
  
  programs.waybar.enable = true;
  
  # Qt
  #programs.qt5ct.enable  = true;

  # Graphics settings
  #hardware.opengl.driSupport32Bit = true;

  # Configure keymap in X11
  services.xserver.layout = "us";


}
