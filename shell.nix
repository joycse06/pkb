{ pkgs ? import <nixpkgs> {} }:

with pkgs;

pkgs.stdenv.mkDerivation {
  name = "taxRatesServiceEnv";
  buildInputs = [
    pkgconfig
    zlib
  ];
  shellHook = ''
    export LD_LIBRARY_PATH="${zlib.out}/lib:$LD_LIBRARY_PATH"
  '';
}
