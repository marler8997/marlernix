{ config, lib, pkgs, ... }:

{
  imports = [
    ./machine-specific.nix
    ./fonts.nix
    ./tools.nix
    ./marler8997.nix
  ];
}
