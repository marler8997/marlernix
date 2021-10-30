{ config, lib, pkgs, ... }:

{
  # for some reason on nixos 21.05, this breaks emacs fonts
  #fonts.fonts = with pkgs; [
  #  fira-code
  #];

  #fonts.fonts = with pkgs; [
  #  jetbrains-mono
  #  dejavu_fonts
  #  noto-fonts
  #  hack-font
  #];
  fonts.fonts = with pkgs; [
    # This one line fixed my wide terminal fonts and emacs font!!!!
    iosevka
    #noto-fonts
    #noto-fonts-cjk
    #noto-fonts-emoji
    #iberation_ttf
    # this causes emacs to crash???
#    fira-code
    #fira-code-symbols
    #mplus-outline-fonts
    #dina-font
    #proggyfonts
  ];
  #fonts.fontconfig.defaultFonts = {
  #  monospace = [ "JetBrains Mono" ];
  #  sansSerif = [ "Noto Sans" ];
  #  serif = [ "noto Serif" ];
  #};
}
