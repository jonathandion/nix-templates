{ system ? builtins.currentSystem, pkgs ? import <nixpkgs> { inherit system; } }:

let
  node_pkgs = (import
    # nodejs 16.13.1
    (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz";
      sha256 = "13s8g6p0gzpa1q6mwc2fj2v451dsars67m4mwciimgfwhdlxx0bk";
    })
    {
      inherit system;
    });

  nodejs = node_pkgs.nodejs;
  yarn = pkgs.yarn.override { inherit nodejs; };
in
pkgs.mkShell
{
  buildInputs = with pkgs; [
    nodejs
    yarn
    docker
    docker-compose
  ];
  shellHook = ''
    echo "Using nodejs version: $(node --version)"
    echo "Using yarn version: $(yarn --version)"
    echo "Using docker version: $(docker --version)"
    echo "Using docker-compose version: $(docker-compose --version)"
  '';
}
