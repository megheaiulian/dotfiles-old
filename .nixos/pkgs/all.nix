{ config, lib, pkgs, ... }:
{
  imports = [
    ./applications/version-management/git.nix
    ./applications/version-management/gitkraken.nix
    ./applications/editors/vim.nix
    ./applications/misc/tilix.nix
  ];
}
