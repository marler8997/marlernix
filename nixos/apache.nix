{ config, lib, pkgs, ... }:

{
  services.httpd.enable = true;
  services.httpd.adminAddr = "johnnymarler@gmail.com";
  services.httpd.extraModules = ["version" "cgi"];
  services.httpd.extraConfig = ''
    IncludeOptional /home/marler8997/httpd/sites-enabled/*.conf
  '';
}
