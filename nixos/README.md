# How to install

Choose a directory to clone this repo, the example will use `/home/me/git`, then clone it with:
```
cd /home/me/git
git clone https://github.com/marler8997/marlernix
```

Open `/etc/nixos/configuration.nix` and add to imports
```
  imports =
    [
      ...
      /home/me/git/marlernix/nixos
    ];
```
