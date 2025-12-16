{mkDotfilesSymlink, ...}: {
  home.file.".tmux.conf".source = mkDotfilesSymlink "tmux/tmux.conf";

  xdg.configFile."tmux-powerline/config.sh".source = mkDotfilesSymlink "tmux/powerlines.sh";

  xdg.configFile."tmux-powerline/themes/custom.sh".source = mkDotfilesSymlink "tmux/theme.sh";
}
