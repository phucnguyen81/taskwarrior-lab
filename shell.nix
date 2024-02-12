{ pkgs ? import (
    fetchTarball https://github.com/NixOS/nixpkgs/archive/refs/tags/23.11.tar.gz
  ) {} 
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.taskwarrior
    pkgs.vit # visual interactive taskwarrior
  ];

  shellHook = ''
    export TASKRC=$PWD/.taskrc
    export TASKDATA=$PWD/.task
    echo "Taskwarrior installed. Type 'task' to use it."
  '';
}
