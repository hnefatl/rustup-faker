# rustup-faker

`rustup` isn't very NixOS-friendly, this script allows programs that require it to be redirected to nix-installed versions: intended for use with Mozilla's [Rust overlay](https://github.com/mozilla/nixpkgs-mozilla/blob/master/rust-overlay.nix).

Specifically written and tested with the VSCode [RLS plugin](https://github.com/rust-lang/rls-vscode).