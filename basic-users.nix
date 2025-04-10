{ config, lib, pkgs, ... }:
{
  imports = [ ];
  programs.fish.enable = true;
  users.users.nixos = {
    isNormalUser = true;
    useDefaultShell = false;
    home = "/home/nixos";
    description = "default account";
    extraGroups = ["wheel" "networkmanager"];
    shell = pkgs.fish;
    packages = with pkgs; [
        git
        neovim
	go
	nodejs
	starship
	stow
	zoxide
	sesh
	ghostty
    ];
  };
}
