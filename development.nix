{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc python312
  ];
}
