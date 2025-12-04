{...} @ inputs: let
  myPackages = import ../../packages inputs;
in {
  home.stateVersion = "25.11";

  imports = [
    ./tmux
  ];
}
