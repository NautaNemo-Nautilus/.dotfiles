{...}: {
  environment.systemPackages = with pkgs; [
    zsh
    wget
    git
    vim
    tmux
    sway
  ];
}
