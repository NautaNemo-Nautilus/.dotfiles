{pkgs, ...}: {
  programs.vim = {
    enable = true;
    #plugins = with pkgs.vimPlugins; [];
    settings = { ignorecase = true; };
    extraConfig = ''
      set number
      set mouse=a
    '';
  };
}
