{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [ rustc cargo rustfmt rustPackages.clippy gcc pkg-config glib gexiv2 ];
  RUST_BACKTRACE = 1;
}
