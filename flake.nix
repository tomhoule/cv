{
  description = "Tom Houle's CV";

  inputs = { flake-utils.url = "github:numtide/flake-utils"; };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages."${system}";
        src = pkgs.nix-gitignore.gitignoreSource [ ] ./.;
        texlive = pkgs.texlive.combine {
          inherit (pkgs.texlive)
            scheme-small gentium-tug mathpazo babel babel-english;
        };
      in
      {
        defaultPackage = pkgs.stdenv.mkDerivation {
          name = "tomhoule-cv";

          nativeBuildInputs = [ texlive ];

          buildPhase = ''
            pdflatex \
              cv_tom_houle.tex \
              -interaction=batchmode \
              -output-format=pdf \
              -halt-on-error
          '';

          installPhase = ''
            mkdir $out
            mv cv_tom_houle.pdf $out/
          '';

          inherit src;
        };
        devShell = pkgs.mkShell {
          buildInputs = [ texlive pkgs.watchexec ];
          shellHook = ''
            alias dev="watchexec --clear --restart --watch ./cv_tom_houle.tex 'pdflatex -halt-on-error ./cv_tom_houle.tex'";
          '';
        };
      });
}
