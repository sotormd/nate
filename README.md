# nixos-mate

MATE desktop for my NixOS needs.

![screenshot](./screenshots/mate.png)

# Usage

1. Add this flake as an input

   ```nix
   inputs.mate.url = "github:sotormd/nixos-mate";
   ```

2. Import `inputs.mate.nixosModules.mate` in your configuration.
