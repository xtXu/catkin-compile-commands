# catkin-compile-commands

Copied from this [issue](https://github.com/catkin/catkin_tools/issues/551). Generates `compile-commands.json` files using `catkin` and `zsh`.

## Prerequisites

- `jq`
- `build-essentials` on Debian-based, `base-devel` on Arch-based, or equivalent (obviously).
- `catkin`

## Installation

```sh
make install [PREFIX=/installation/directory]
```

## Usage

- Create `.extended_ws` in workspace root
- Put catkin workspaces to be sourced into `.extended_ws`, e.g. `/opt/ros/noetics`

## Uninstallation

```sh
make uninstall [PREFIX=/installation/directory]
```
