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

  users.users.${username} = {
    home = "/Users/${username}";
    name = username;
    packages = myPackages.user;
  };

  imports = [
    ../../config
    ./security.nix
    ./system.nix
    ./homebrew.nix
    ./environment.nix
    ./viz.nix
    {
      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        backupFileExtension = "before-nix-home-manager";
        users.${username} = {
          imports = [
            ../../home-manager
          ];
        };
      };
    }
  ];
}
