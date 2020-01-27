{ config, lib, pkgs, ... }:

{
  imports = [
    ./machine-specific.nix
    ./tools.nix
    ./marler8997.nix
  ];
}
