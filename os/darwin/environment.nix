{
  pkgs,
  myPackages,
  ...
}: {
  environment = {
    shells = with pkgs; [bash zsh];
    systemPackages = myPackages.system;
    systemPath = ["/opt/homebrew/bin"];
    variables = {
      EDITOR = "vi";
      LANG = "en_US.UTF-8";
    };
  };
}
