{
  username,
  pkgs,
  ...
} @ inputs: let
  myPackages = import ../../packages inputs;
in {
  _module.args = {
    inherit myPackages;
    inherit username;
  };

  # allow private/licensed/unfree apps
  nixpkgs.config.allowUnfree = true;

  nix.settings = {trusted-users = ["root" "@admin" "${username}"];};
  nix.enable = true;

  programs.zsh.enable = true;

  security.pam.services.sudo_local.touchIdAuth = true;

  users.users.${username} = {
    name = username;
    packages = myPackages.user;
  };

  imports = [
    ../../config
    ./environment.nix
    ./homebrew.nix
    ./system.nix
    ./viz.nix
  ];
}
