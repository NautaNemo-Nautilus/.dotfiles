{pkgs, ...}: {
  imports = [
    ./packages/configs
  ];
  
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
