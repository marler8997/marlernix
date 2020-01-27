{ config, lib, pkgs, ... }:

{
  boot.kernel.sysctl = { "vm.swappiness" = 0; };
}
