{ config, lib, pkgs, ... }:
{
  nixpkgs.overlays = [( self: super: {
    linux_4_15 = super.callPackage <nixpkgs/pkgs/os-specific/linux/kernel/linux-testing.nix> {
      kernelPatches = with pkgs; [
        kernelPatches.bridge_stp_helper
        kernelPatches.modinst_arg_list_too_long
      ];
      argsOverride = with pkgs; rec {
        version = "4.15";
        modDirVersion = "4.15.0";
        extraMeta.branch = "4.15";

        src = fetchurl {
          url = "https://git.kernel.org/torvalds/t/linux-${version}.tar.gz";
          sha256 = "160p0ssddyichal5h1l4swa7rfz5whsbx04g60m1i5vbgi2d18cf";
        };
      };
    };
  })];


  boot = {
    kernelPackages = pkgs.linuxPackagesFor pkgs.linux_4_15;
  };
}
