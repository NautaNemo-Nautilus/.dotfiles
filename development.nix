{pkgs, ...}: {
  home.packages = with pkgs; [
    # C
    gcc
    # Python 
    (python312.withPackages (ppkgs: [
      ppkgs.numpy
      ppkgs.scipy
      ppkgs.matplotlib
    ])) 
    # Haskell
    ghc
    
    # Rust
    rust-bin.stable.latest.default 
  ];
}
