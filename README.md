# Playground for Foundry #

This is just to get to know [Foundry](https://book.getfoundry.sh/projects/dependencies). This branch
does not hold any actual implementation apart from things which were automatically set up with
`forge init`.

## Set Up using Nix ##

This repo provides a [](./flake.nix) file [^1]. To get going you have to
[install~nix](https://nixos.org/manual/nix/stable/installation/installing-binary.html). Furthermore,
you have to enable the [Flakes](https://nixos.wiki/wiki/Flakes) feature. On NixOS this is done by
adding something along these lines to your `configuration.nix`:
``` nix
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = lib.optionalString (config.nix.package == pkgs.nixFlakes)
      "experimental-features = nix-command flakes";
  };
```
See https://nixos.wiki/wiki/Flakes for non-NixOS distributions.

You can now enter a development environment using `nix develop` and have all the necessary tools at
your hand. For a smoother developer experience consider using [direnv](https://direnv.net/).

## Repo Init Log ##

Briefly documenting the initialization routine:
+ run `forge init --force --no-commit`;
+ `forge build --no-auto-detect` and `forge test` should now work.

[^1]: The flake machinery used here is based on https://github.com/shazow/foundry.nix.
