let
    pkgs = import <nixpkgs> { };
in
    pkgs.stdenv.mkDerivation {
        name = "rustup-faker";

        # Don't extract from a source, just copy the script over
        unpackPhase = "true";
        installPhase = ''mkdir -p "$out/bin" && cp "${./rustup}" "$out/bin/rustup"'';
    }
