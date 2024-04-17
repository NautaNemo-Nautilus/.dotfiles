{pkgs, ...}: {
  imports = [
    ./wezterm.nix
    ./zsh.nix
    ./starship.nix
    ./development.nix
    ./browser.nix
    ./vim.nix
  ];
  home = rec {
    username = "nautanemo";
    homeDirectory = "/home/${username}";
    stateVersion = "22.11";
  };
  programs.home-manager.enable = true;
}
