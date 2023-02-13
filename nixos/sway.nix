{ config, lib, pkgs, ... }:

{
  programs.sway.enable = true;

  # TODO: only enable this if flatpak is enabled
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  
}
