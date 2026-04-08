# nate

MATE desktop for my NixOS needs.

![screenshot](./screenshots/mate.png)

# Usage

1. Add this flake as an input

   ```nix
   inputs.nate.url = "github:sotormd/nate";
   ```

2. Import `inputs.nate.nixosModules.nate` in your configuration.
