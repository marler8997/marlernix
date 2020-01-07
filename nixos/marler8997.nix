{ config, lib, pkgs, ... }:

{
  users.users.marler8997 = {
    isNormalUser = true;
    uid = 1000;
    home = "/home/marler8997";
    extraGroups = ["wheel" "networkmanager" "lxd"];
  };
  security.sudo.extraConfig = ''
    marler8997 ALL=(ALL) NOPASSWD: ALL
  '';
}
