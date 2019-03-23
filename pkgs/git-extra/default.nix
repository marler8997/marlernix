{ stdenv, fetchgit, meson, ninja, ldc }:

stdenv.mkDerivation rec {
  name = "git-extra-1.0";
  
  src = fetchgit {
    url = http://github.com/bettertools/git-extra.git;
    rev = "e2c766695240ca05c80f80e5b9e11f68be8c3ec5";
    sha256 = "02slqvkhgz7izxzlwgnkl3jrhb45mfy9rgjm3qp1lb7j1vxp59sh";
  };

  buildInputs = [ meson ninja ldc ];

  buildCommand = ''
    # TODO: I want to use --strip but older versions of meson don't support it
    meson --buildtype release --prefix $out $src/src_d $NIX_BUILD_TOP
    ninja -C $NIX_BUILD_TOP
    ninja -C $NIX_BUILD_TOP install
  '';
  
  meta = {
    description = "Extra git commands";
  };
}
