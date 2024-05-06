{ ... }:
{
  home.username = "daniil";
  home.homeDirectory = "/home/daniil";

  imports = [ 
    ./nixvim
    ./firefox.nix
    ./kitty.nix
    ./gtk.nix
    ./scripts
    ./zsh.nix
    ./starship.nix
    ./cava.nix
    ./discord.nix
    ./vscodium.nix
    ./mako.nix
    ./zathura.nix
    ./hyprland.nix
    ./waybar.nix
    ./git.nix
  ];

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
