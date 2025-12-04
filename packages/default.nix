{isDarwin ? false, ...} @ inputs: let
  utils = import ../utils inputs;

  selectPackages = {dir}: let
    commonPackages = import ./${dir}/common.nix inputs;
  in
    commonPackages
    ++ utils.ternary {
      condition = isDarwin;
      yes = import ./${dir}/darwin.nix inputs;
      no = [];
    };
in {
  user = selectPackages {dir = "user";};
  system = selectPackages {dir = "system";};
}
