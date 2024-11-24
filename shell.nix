{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages = with pkgs; [ 
    cmake
    sfml
    box2d 
    tiled
    tinyxml-2
    openal
    xorg.libX11
    xorg.libXrandr
    xorg.libXcursor
    libudev-zero
    freetype
    openal
    flac
    libvorbis
    mesa
    glfw
    glm
    pkg-config
  ];

  inputsFrom = with pkgs; [
   
  ];

  # Run any bash code upon entering shell
  shellHook = ''
    echo "SFML shell"
  '';
}