{ inputs, config, pkgs, ... }:

{
  imports = [
    ./kitty.nix
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

  qt.enable = true;
  qt.platformTheme = "gtk";
  qt.style.name = "adwaita-dark";
  home.pointerCursor = {

    name = "Catppuccin-Mocha-Dark-Cursors";

    package = pkgs.catppuccin-cursors.mochaDark;

    size = 16;

  };

  home.file = { };
  programs.ags = {
    enable = true;

    # null or path, leave as null if you don't want hm to manage the config
    configDir = ./ags;

    # additional packages to add to gjs's runtime
    extraPackages = with pkgs; [
      gtksourceview
      webkitgtk
      accountsservice
    ];
  };
  programs.git =
    {
      enable = true;
      userEmail = "eva01pilothmm@gmail.com";
      userName = "eva01pilot";
    };
  home.sessionVariables = { };

  programs.home-manager.enable = true;
}
