{
  description = "n-valchev dotfiles";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0"; # Stable Nixpkgs (use 0.1 for unstable)

    nix-darwin = {
      url = "https://flakehub.com/f/nix-darwin/nix-darwin/0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    determinate = {
      url = "https://flakehub.com/f/DeterminateSystems/determinate/3";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{self, ...}:
  let darwinHosts = [
    { username = "nivalchev"; hostname="nivalchev"; }
    { username = "nikolay.valchev"; hostname="C7M3KM993X-Nikolay-Ivov-Valchev"; }
  ];
  in
  {
    darwinConfigurations = import ./os/darwin (inputs // { hosts=darwinHosts; });
  };
}
