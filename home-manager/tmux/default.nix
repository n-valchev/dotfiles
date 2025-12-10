{pkgs, ...}: {
  home.packages = with pkgs; [tmux git];

  home.file.".tmux.conf".source = ./tmux.conf;

  xdg.configFile."tmux-powerline/config.sh".source = ./powerlines.sh;

  xdg.configFile."tmux-powerline/themes/custom.sh".source = ./theme.sh;
}
