{config, ...}: let
  mkDotfilesSymlink = with config; fileOrDir: lib.file.mkOutOfStoreSymlink "${home.homeDirectory}/dotfiles/home-manager/${fileOrDir}";
in {
  home.stateVersion = "25.11";

  _module.args = {
    inherit mkDotfilesSymlink;
  };

  imports = [
    ./kitty
    ./tmux
    ./zsh
  ];
}
