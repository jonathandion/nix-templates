# ❄️ nix-templates

## Installation

Create a flake in the current directory from `nix-templates#webdev` template:
```sh
nix flake init -t github:jonathandion/nix-templates#webdev
```

Create a flake in the specified directory from `nix-templates#nodejs` template:
```sh
nix flake new myAwesomeProject -t github:jonathandion/nix-templates#webdev
```

to save the registry:
```sh
nix registry add jondion github:jonathandion/nix-templates

nix flake init -t jondion#webdev
```
