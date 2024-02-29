{ inputs,config, pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    inputs.ags.homeManagerModules.default
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ilya";
  home.homeDirectory = "/home/ilya";

  home.stateVersion = "23.11"; # Please read the comment before changing.
  home.packages = [
  ];

  home.file = { };
  programs.git =
    {
      enable = true;
      userEmail = "eva01pilothmm@gmail.com";
      userName = "eva01pilot";
    };
  home.sessionVariables = { };

  programs.home-manager.enable = true;
}
