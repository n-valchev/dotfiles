{
  nix-darwin,
  username,
  hostname,
  ...
} @ inputs: {
  darwinConfigurations."${hostname}" = nix-darwin.lib.darwinSystem {
    system = "aarch64-darwin";
    modules = [
      ./darwin-conf.nix
    ];
    specialArgs = {
      isDarwin = true;
      username = username;
    };
  };

  # home-manager = {
  #   useGlobalPkgs = true;
  #   useUserPackages = true;
  #   users.${username} = {
  #     imports = [../../home-manager];
  #   };
  # };
}
