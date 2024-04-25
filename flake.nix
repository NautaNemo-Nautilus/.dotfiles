{
  description = " NixOS | Darwin & home-manager configurations";
  inputs = {
    # nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixpkgs-stabe.url = "github:nixos/nixpkgs/nixos-23.11";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";


    # rust-toolchain
    rust-overlay.url = "github:oxalica/rust-overlay";
    
    # home-manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  
  };
  

  #outputs = inputs: let
  #  allSystems = [
  #    "aarch64-linux"
  #    "x86_64-linux"
  #    "aarch64-darwin"
  #    "x86_64-darwin"
  #  ];
  #  forAllSystems = inputs.nixpkgs.lib.genAttrs allSystems;
  #in {
  #  packages = forAllSystems (system: import ./pkgs inputs.nixpkgs.lenacyPackages.${system});
  #  formatter = forAllSystems (system: inputs.nixpkgs.legacyPackages.${system}.nixfmt);

  #  nixosConfigurations = (import ./hosts inputs).nixos;
  #  homeConfigurations = (import ./hosts inputs).home-manager;

  #  deploy = {
  #  
  #  };

  #  devShells = forAllSystems (system: let
  #    pkgs = import inputs.nixpkgs {inherit system;};
  #    scripts = with pkgs; [
  #      (writeScriptBin "switch-home" ''
  #        home-manager switch --flake ".#@"
  #      '')
  #      (writeScriptBin "switch-nixos" ''
  #        sudo nixos-rebuild switch --flake ".#@"
  #      '')
  #    ];
  #    devPkgs = [
  #      inputs.deploy-rs.packages.${pkgs.system}.default
  #    ];
  #  in {
  #    default = pkgs.mkShell {
  #      packages = scripts ++ devPkgs;
  #    };
  #  });
  #};
  

  outputs = inputs: {
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
