# This is used to build the CV as a nix derivation. See flake.nix.

declare -xp
set +x

export PATH="$coreutils/bin:$sed/bin:$texlive/bin"

mkdir $out
cd $out

pdflatex \
    $src \
    -interaction=batchmode \
    -output-format=pdf \
    -halt-on-error
