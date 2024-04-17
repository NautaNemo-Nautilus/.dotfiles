{
  imports = [
    ./wezterm.nix
    ./zsh.nix
    ./starship.nix
    ./development.nix
    ./vim.nix
  ];
  home = rec {
    username = "mogidaiki";
    homeDirectory = "/Users/${username}";
    stateVersion = "22.11";
  };
  programs.home-manager.enable = true;
}
