{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc 
    python312 
    ghc

    rust-bin.stable.latest.default 
  ];
}
