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

  nix.enable = false; # Let Determinate Nix manage Nix

  programs.zsh.enable = true;

  security.pam.services.sudo_local.touchIdAuth = true;

  users.users.${username} = {
    home = "/Users/${username}";
    name = username;
    packages = myPackages.user;
  };

  imports = [
    ../../config
    ./system.nix
    ./environment.nix
    ./homebrew.nix
    ./viz.nix
    {
      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users.${username} = {
          imports = [
            ../../home-manager
          ];
        };
      };
    }
  ];
}
