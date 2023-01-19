{ config, lib, pkgs, ... }:

{
  programs.sway.enable = true;
  # TODO: can I set all this based on whether gnome is enabled?

  # TODO: only enable this if flatpak is enabled
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  
}
