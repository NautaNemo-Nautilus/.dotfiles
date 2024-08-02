{ inputs, config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./nixos
      ./packages
    ]
  ]);
}
