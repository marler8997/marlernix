{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nix-index
    emacs
    gitFull
    gitRepo # Google's repo tool
    meson
    dmd
    python3
    sakura
    meld
  ];

  # Terminal Emulators
  #
  # gnome-terminal just doesn't work anymore on nixos 21.05
  # Even after adding "programs.gnome-terminal.enable = true;" (and rebooting), gnome-terminal still fails with
  #     Error constructing proxy for org.gnome.Terminal:/org/gnome/Terminal/Factory0: Error calling StartServiceByName for org.gnome.Terminal: Timeout was reached
  #
  # I tried all the terminal-emulators and I've included the ones that worked over X:
  #
  # sakura (seems fast, written in a single C source file)
  # lilyterm (doesn't seem to handle font correctly, written in C)
  # st (small font)
  # lxterminal
  # roxterm
  # stupidterm
  # terminator
  # termite
  # tilix
  # kgx (nice default colors tho)
  # xterm (small font)
  #
  # Tier 3
  # mlterm (took a minute to exit?)
  # germinal (requires tmux I think)
  # hyper (nice font, can't move window)
}
