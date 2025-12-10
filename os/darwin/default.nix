{
  nix-darwin,
  home-manager,
  hosts,
  ...
} @ inputs:
let
  initHost = { hostname, username }: {
    "${hostname}" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        home-manager.darwinModules.home-manager
        ./darwin-conf.nix
      ];
      specialArgs = {
        isDarwin = true;
        username = username;
      };
    };
  };
in
  builtins.foldl' (merged: host: merged // (initHost host)) {} hosts
