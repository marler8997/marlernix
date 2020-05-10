{ config, lib, pkgs, ... }:

{
  fonts.fonts = with pkgs; [
    fira-code
  ];
}
