{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    #nix-darwin = {
    #  url = "github:lnl7/nix-darwin";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
    rust-overlay.url = "github:oxalica/rust-overlay";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {inputs}: {
    nixosConfigurations = {
      myNixOS = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
        specialArgs = {
          inherit inputs;
        };
      };
    };
    darwinConfigurations = {
      myDarwin = inputs.nixpkgs.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          inputs.home-manager.darwinModules.home-manager
          {
            inputs.home-manager.useGlobalPkgs = true;
            inputs.home-manager.useUserPackages = true;
          }
        ];
        specialArgs = {
          inherit inputs;
        };
      };
    };

    homeConfigurations = {
      nixHome = inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = import inputs.nixpkgs {
          system = "x86_64-linux";
          config.allowUnfree = true;
          overlays = [(import inputs.rust-overlay)];
        };
        extraSpecialArgs = {
          inherit inputs;
        };
        modules = [
          ./nixhome.nix
        ];
      };
    };
    homeConfigurations = {
      osxHome = inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = import inputs.nixpkgs {
          system = "aarch64-darwin";
          config.allowUnfree = true;
          overlays = [(import inputs.rust-overlay)];
        };
        extraSpecialArgs = {
          inherit inputs;
        };
        modules = [
          ./osxhome.nix
        ];
      };
    };
  };
}
