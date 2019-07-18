let
    pkgs = import <nixpkgs> { };
in
    pkgs.stdenv.mkDerivation {
        name = "rustup-faker";

        phases = [ "installPhase" "fixupPhase" ];

        installPhase = ''
            mkdir -p "$out/bin"
            cp "${./rustup}" "$out/bin/rustup"
        '';
    }
