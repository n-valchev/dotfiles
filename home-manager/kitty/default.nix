{mkDotfilesSymlink, ...}: {
  xdg.configFile."kitty/kitty.conf".source = mkDotfilesSymlink "kitty/kitty.conf";
}
