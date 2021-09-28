{
  description = "Tom Houle's CV";

  inputs = { flake-utils.url = "github:numtide/flake-utils"; };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages."${system}";
        src = ./cv_tom_houle.tex;
        coreutils = pkgs.coreutils;
        sed = pkgs.gnused;
        texlive = (pkgs.texlive.combine {
          inherit (pkgs.texlive) scheme-small mathpazo babel babel-english;
        });
      in {
        defaultPackage = derivation {
          name = "tomhoule-cv";
          builder = "${pkgs.bash}/bin/bash";
          args = [ ./builder.sh ];
          system = system;

          inherit src coreutils sed texlive;
        };
        devShell = pkgs.mkShell {
          buildInputs = [ texlive pkgs.watchexec ];
          shellHook = ''
            alias dev="watchexec --clear --restart --watch ./cv_tom_houle.tex 'pdflatex -halt-on-error ./cv_tom_houle.tex'";
          '';
        };
      });
}
