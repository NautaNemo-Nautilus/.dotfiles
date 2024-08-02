{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      # setting nix
      vim-nix

      # appearance
      vim-airline
      vim-airline-themes
      iceberg-vim

      # Editer-IDE
      unite-vim
      supertab
      vim-polyglot
    ];
    #plugins = with pkgs.vimPlugins; [
    #  # setting nix
    #];
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
      
      " Color Scheme setting
      colorscheme iceberg

      " Plugin-Airline setting
      "let g:airline_theme='minimalist' <- it's option
      let g:airline#extensions#tabline#enabled = 1
      let g:airline_powerline_fonts = 1

      
    '';
  };
}
