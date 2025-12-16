{username, ...}: {
  system.primaryUser = username;

  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
    remapCapsLockToControl = true;
    nonUS = {
      remapTilde = true;
    };
  };

  system.defaults.NSGlobalDomain = {
    AppleFontSmoothing = 0;
    AppleInterfaceStyle = "Dark";
    AppleMeasurementUnits = "Centimeters";
    AppleMetricUnits = 1;
    AppleShowAllExtensions = true;
    AppleShowAllFiles = true;
    NSAutomaticCapitalizationEnabled = false;
    "com.apple.swipescrolldirection" = true;
  };

  system.defaults.trackpad = {
    Clicking = false;
    TrackpadRightClick = true;
    TrackpadThreeFingerDrag = true;
  };

  system.defaults.finder = {
    AppleShowAllExtensions = true;
    AppleShowAllFiles = true;
    _FXShowPosixPathInTitle = true;
    ShowPathbar = true;
    ShowStatusBar = true;
    CreateDesktop = false;
  };

  system.defaults.dock = {
    autohide = true;
    autohide-delay =
      5.0; # super slow to show dock; close to disabling it; default is 0.24
    autohide-time-modifier =
      5.0; # Sets the speed of the animation when hiding/showing the Dock; default is 1.0
    expose-animation-duration =
      1.0; # Mission Control animation; default is 1.0
    minimize-to-application = false;
    show-process-indicators = true;
    show-recents = false;
    wvous-br-corner = 2; # enable bottom right hot corner Mission Control
    expose-group-apps = true; # fixes issue with small windows in Expose
    # persistent-apps = [];
  };

  system.defaults.universalaccess = {
    reduceMotion = true;
    reduceTransparency = true;
  };

  # backwards compat; don't change
  system.stateVersion = 6;
}
