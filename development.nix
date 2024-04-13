{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc python312 rust-bin.stable.latest.default 
  ];
}
