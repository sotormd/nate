{
  description = "MATE desktop for my nixos needs";
  outputs = _: { nixosModules.nate = _: { imports = [ ./mate.nix ]; }; };
}
