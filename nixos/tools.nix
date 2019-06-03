{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nix-index
    emacs
    gitFull
    gitRepo # Google's repo tool
    meson
    dmd
  ];
}
