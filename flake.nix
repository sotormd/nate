{
  description = "MATE desktop for my nixos needs";
  outputs = _: { nixosModules.mate = _: { imports = [ ./mate.nix ]; }; };
}
