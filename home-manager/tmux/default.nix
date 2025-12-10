{pkgs, ...}: {
  home.packages = with pkgs; [tmux git];

  home.file.".tmux.conf".source = ./tmux.conf;
  home.file."tmux-powerline/config.sh".source = ./powerlines.sh;
  home.file."tmux-powerline/themes/custom.sh".source = ./theme.sh;
}
