{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    autorun = true;
    desktopManager.xterm.enable = false;
    displayManager.defaultSession = "none+i3";
    windowManager.i3 = {
      enable = true;
      extraPackages = [
        pkgs.dmenu # app launcher most people use
        pkgs.i3status # deafalt i3 status bar
        # pkgs.i3lock # defaul screen locker
        # pkgs.i3blocks # if planning to use i3 blocks over i3status
      ];
    };
  };

  # TODO: only enable this if flatpak is enabled
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  
}
