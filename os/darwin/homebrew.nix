{...}: let
  brewPackages = import ./brew;
in {
  homebrew = with brewPackages; {
    inherit brews;
    inherit casks;
    inherit taps;

    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };
    caskArgs.no_quarantine = true;
    global.brewfile = true;
  };
}
