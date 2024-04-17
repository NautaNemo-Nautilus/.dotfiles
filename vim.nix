{pkgs, ...}: {
  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      iceberg-vim
    ];
    settings = { ignorecase = true; };
    extraConfig = ''
      syntax enable
      
      set number
      set ruler
      set showcmd
      set showmatch
      set mouse=a

      set autoindent
      set smartindent
      set cinoptions+=0,g0

      set hlsearch
      set ignorecase
      set incsearch
      set smartcase

      set splitbelow
      set t_Co=256
      "set termguicolors

      colorscheme iceberg

    '';
  };
}
