{config, pkgs, ...}: {
  programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./kitty/kitty.conf;
  };

}
