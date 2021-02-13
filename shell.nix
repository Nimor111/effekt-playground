{pkgs ? import <nixpkgs> {}}:

let
  node_packages = import ./default.nix { nodejs = pkgs.nodejs-10_x; };
in
pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs-10_x
    pkgs.jdk
    pkgs.nodePackages.node2nix
    node_packages."effekt-https://github.com/effekt-lang/effekt/releases/latest/download/effekt.tgz"
  ];
}
