{ config, lib, pkgs, ... }:

{
  # TODO: can I set all this based on whether gnome is enabled?
  services.xserver = {
    enable = true;
    autorun = true;
    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };
    displayManager.defaultSession = "xfce";
  };

  # TODO: only enable this if flatpak is enabled
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  networking.networkmanager.enable = true;
}
