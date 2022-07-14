{ pkgs, lib, ... }:

let
  inherit (pkgs) vscode-extensions vscode-utils vscode-with-extensions;

  #
  # in the marketplace, the "Extension ID" is <publisher>.<name>
  #

  cmake-tools = vscode-utils.extensionFromVscodeMarketplace {
    name = "cmake-tools";
    publisher = "ms-vscode";
    version = "1.11.26";
    sha256 = "sha256:1jfca7ns5bdz4ra2z3211k0zsysz9vm8nz8z0419mw3vr05pwx62";
  };

  vscode = vscode-with-extensions.override {
    vscodeExtensions = with vscode-extensions; [
       ms-vscode.cpptools
       cmake-tools
    ];
  };
in
{
  environment.systemPackages = [ vscode ];
}
