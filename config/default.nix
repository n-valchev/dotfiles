{pkgs, ...} @ inputs: let
  fonts = import ./fonts.nix inputs;
in {
  time.timeZone = "Europe/Sofia";
  fonts.packages = fonts;
}
