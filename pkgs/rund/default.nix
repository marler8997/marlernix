{ stdenv, fetchgit, ldc }:

stdenv.mkDerivation rec {
  name = "rund-1.0";
  
  src = fetchgit {
    url = http://github.com/dragon-lang/rund;
    rev = "0f0807ba1733bf760dfafdda11f6d34f10f4e534";
    sha256 = "0g9667i1lglykj3v6fr4y0v4h71wqlblkr1420az2v7y5yslb0gq";
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
