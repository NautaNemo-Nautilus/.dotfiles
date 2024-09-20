{...}: {
  programs = {
    git.enable = true;
    vim.defaultEditor = true;
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
    };
  };
}
