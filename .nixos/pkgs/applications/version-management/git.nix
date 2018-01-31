{ config, lib, pkgs, ... }:
{
  nixpkgs.overlays = [( self: super: {
    gitKeyring = super.git.overrideAttrs(oldAttrs: rec {
      postBuild = ''
        pushd $PWD/contrib/credential/gnome-keyring/
        make
        popd
      '';

      preInstall = ''
        mkdir -p $out/bin
        mv $PWD/contrib/credential/gnome-keyring/git-credential-gnome-keyring $out/bin
      '';
      buildInputs = oldAttrs.buildInputs ++ [super.glib super.gnome3.libgnome_keyring];
      nativeBuildInputs = [ super.pkgconfig ];
     });
  })];
}
