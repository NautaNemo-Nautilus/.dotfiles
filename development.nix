{pkgs, ...}: {
  home.packages = with pkgs; [
    # C
    gcc
    # Python 
    python312 
    # Haskell
    ghc
    
    # Rust
    rust-bin.stable.latest.default 
  ];
}
