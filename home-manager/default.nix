{...}: {
  home.stateVersion = "25.11";

  imports = [
    ./kitty
    ./starship
    ./tmux
    ./zsh
  ];
}
