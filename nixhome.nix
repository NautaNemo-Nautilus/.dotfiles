{pkgs, ...}: {
  imports = [
    ./environment.nix
    ./wezterm.nix
    ./zsh.nix
    ./starship.nix
    ./development.nix
    ./browser.nix
    ./vim.nix
    ./neovim.nix
    
  ];
  
  wayland.windowManager.sway = {
    enable = true;
  };

  home = rec {
    username = "nautanemo";
    homeDirectory = "/home/${username}";
    stateVersion = "22.11";
  };
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    hackgen-nf-font
  ];

  fonts.fontconfig.enable = true;
}
