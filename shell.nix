# default.nix
with import <nixpkgs> {};
stdenv.mkDerivation {
    name = "transformers based nlp";
    buildInputs = [ 
        pkg-config 
        gcc 
        python312Packages.torch
        python312Packages.keras
        python312Packages.tf-keras
        python312Packages.distutils
        python312Packages.tensorflow
        python312Packages.streamlit 
        python312Packages.transformers
    ];
    shellHook = ''
        fish
    '';
}
