{
  inputs = {
    systems.url = "github:nix-systems/default-linux";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs@{
      flake-parts,
      nixpkgs,
      ...
    }:
    flake-parts.lib.mkFlake
      {
        inherit inputs;
      }
      (
        {
          withSystem,
          flake-parts-lib,
          inputs,
          self,
          ...
        }:
        {
          systems = import inputs.systems;
          perSystem =
            { pkgs, ... }:
            {
              devShells.default = pkgs.mkShellNoCC {
                name = "nix";

                # Tell Direnv to shut up.
                DIRENV_LOG_FORMAT = "";

                packages = [
                  # Packages from nixpkgs, for Nix, Flakes or local tools.
                  pkgs.git # flakes require Git to be installed, since this repo is version controlled
                  pkgs.rsync

                  pkgs.pre-commit # Git Hooks
                  pkgs.just # Command Runner

                  pkgs.uv # Python

                  # Tools / Formaters Linters etc
                  pkgs.alejandra # Nix
                  pkgs.yamlfmt # YAML
                  pkgs.keep-sorted # General Sorting tool
                ];
              };
            };
        }
      );
}
