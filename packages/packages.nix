{...}: {
  programs = {
    git.enable = true;
    vim.defaultEditor = true;
    zsh = {
      enabled = true;
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
    };
  };
}
