{...}: {
  services.xserver = {
    enable = true;
    resolutions = [{ x = 1920; y = 1080; }];
    virtualScreen = { x = 1920; y = 1080; };
    xkb = {
      layout = "us";
      variant = "";
    };
  };
}
