{ config, lib, pkgs, ... }:

{
  virtualisation.docker.enable = true;
  users.users.marler8997.extraGroups = [ "docker" ];
}
