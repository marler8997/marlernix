{ config, lib, pkgs, ... }:

{
  # TODO: can I set all this based on whether gnome is enabled?
  services.xserver = {
    enable = true;
    autorun = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  programs.dconf.enable = true;
  environment.systemPackages = [
    pkgs.gnome3.adwaita-icon-theme
    pkgs.gnomeExtensions.appindicator
  ];
  services.udev.packages = [
    pkgs.gnome3.gnome-settings-daemon
  ];
  environment.gnome.excludePackages = [
    pkgs.gnome.cheese
    pkgs.gnome-photos
    pkgs.gnome.gnome-music
    pkgs.gnome.gnome-terminal
    pkgs.gedit
    # install chrome instead with: NIXPKGS_ALLOW_UNFREE=1 nix-env -iA nixos.google-chrome
    pkgs.epiphany
    pkgs.evince
    pkgs.gnome.gnome-characters
    pkgs.gnome.totem
    pkgs.gnome.tali
    pkgs.gnome.iagno
    pkgs.gnome.hitori
    pkgs.gnome.atomix
    pkgs.gnome-tour
    pkgs.gnome.geary
  ];
}
