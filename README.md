# catkin-compile-commands

Copied from this [issue](https://github.com/catkin/catkin_tools/issues/551). Generates `compile-commands.json` files using catkin.

## Prerequisites

- `jq`
- `build-essentials` on Debian-based, `base-devel` on Arch-based, or equivalent (obviously).

## Installation

```sh
make install [PREFIX=/installation/directory]
```

## Uninstallation

```sh
make uninstall [PREFIX=/installation/directory]
```
