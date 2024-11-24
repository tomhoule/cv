{
  description = "Tom Houle's CV";

  inputs = { flake-utils.url = "github:numtide/flake-utils"; };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages."${system}";
        src = pkgs.nix-gitignore.gitignoreSource [ ] ./.;

        inherit (pkgs) typst mkShell stdenv;
      in
      {
        defaultPackage = stdenv.mkDerivation {
          name = "tomhoule-cv";

          nativeBuildInputs = [ typst ];

          buildPhase = ''
            typst compile cv_tom_houle.typ
          '';

          installPhase = ''
            mkdir $out
            mv cv_tom_houle.pdf $out/
          '';

          inherit src;
        };

        devShell = mkShell {
          buildInputs = [ typst ];
        };
      });
}
