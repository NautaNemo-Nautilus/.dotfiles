{...}: {
  boot = {
    loader = {
      systemd.boot = true;
      efi.canTouchEfiVariables = true;
    };
  };
}
