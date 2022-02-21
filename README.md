# catkin-compile-commands

Copied from this [issue](https://github.com/catkin/catkin_tools/issues/551). Generates `compile-commands.json` files using `catkin` and `bash`, used with language servers like `clangd`.

## Prerequisites

*   `jq`
*   `build-essentials` on Debian-based, `base-devel` on Arch-based, or equivalent.
*   `catkin`

## Installation

```sh
make install [PREFIX=/installation/directory]
```

## Uninstallation

```sh
make uninstall [PREFIX=/installation/directory]
```

## Nix Flake

```sh
nix build .
```

## Usage

*   Build your packages using the flag `-DCMAKE_EXPORT_COMPILE_COMMANDS=YES` or put the following in `CMakeLists.txt`:
  ```cmake
  set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
  ```
*   Create `.extended_ws` in workspace root
*   Put catkin workspaces to be `source`'d into `.extended_ws`, e.g. `/opt/ros/noetics`
*   In catkin root directory, run

```sh
catkin-compile-commands
```

Restart your language server if necessary.
