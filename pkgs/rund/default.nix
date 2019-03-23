{ stdenv, fetchgit, ldc }:

stdenv.mkDerivation rec {
  name = "rund-1.0";
  
  src = fetchgit {
    url = http://github.com/dragon-lang/rund;
    rev = "a11f5287c9f69a745931a632872c7b218c9d768c";
    sha256 = "10x6f1nn294r5qnpacrpcbp348dndz5fv4nz6ih55c61ckpkvgcf";
  };

  buildInputs = [ ldc ];

  buildCommand = ''
    set -x
    ldmd2 -I=$src/src -i -run $src/make.d build --out $NIX_BUILD_TOP
    mkdir -p $out/bin
    cp $NIX_BUILD_TOP/rund $out/bin
    set +x
  '';
  
  meta = {
    description = "A D compiler-wrapper that runs and caches D programs";
  };
}
