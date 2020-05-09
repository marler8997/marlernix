# How to install

Choose a directory to clone this repo, the example will use `/home/me/git`, then clone it with:
```
cd /home/me/git
git clone https://github.com/marler8997/marlernix
```

Create a `machine-specific.nix` file to hold machine-specific configuration.

Open `/etc/nixos/configuration.nix` and add to imports
```
  imports =
    [
      ...
      /home/me/git/marlernix/nixos
      # Add any extra package configs such as
      /home/me/git/marlernix/nixos/docker.nix
      /home/me/git/marlernix/nixos/apache.nix
      /home/me/git/marlernix/nixos/lxd.nix
    ];
```
