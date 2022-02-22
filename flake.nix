{
  description =
    "Export cmake compilation commands for langauge servers like clangd";

  inputs = {
    wafer.url = "github:zoenglinghou/wafer?ref=main";
    
    flake-utils.follows = "wafer/utils";
    nixpkgs.follows = "wafer/nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        pname = "catkin-compile-commands";
        ccc_name = pname;
        ccc_src = builtins.readFile ./catkin-compile-commands;
        ccc_script = (pkgs.writeShellScriptBin ccc_name ccc_src).overrideAttrs
          (old: {
            buildCommand = ''
              ${old.buildCommand}
               patchShebangs $out'';
          });
        ccc_buildInputs = with pkgs;
          [ jq ]; # Assume catkin is already installed
      in rec {
        defaultPackage = packages.pname;
        packages.pname = pkgs.symlinkJoin {
          name = pname;
          paths = [ ccc_script ] ++ ccc_buildInputs;
          buildInputs = [ pkgs.makeWrapper ];
          postBuild =
            "wrapProgram $out/bin/${ccc_name} --prefix PATH : $out/bin";
        };
      });
}
