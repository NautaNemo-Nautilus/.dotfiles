{pkgs, ...}: {
  imports = [
    ./nixos/desktop/configs
    ./packages/configs
  ];
  
  home = rec {
    username = "user";
    homeDirectory = "/home/${username}";
    stateVersion = "22.11";
  };
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    hackgen-nf-font
  ];

  fonts.fontconfig.enable = true;
}
