{...}: {
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = ["nix-command" "flakes"];
     };
    gc = {
      automatic = true;
      dates = "monthly";
      options = "--delete-order.than 7d";
    };
  };
}
