# catkin-compile-commands

Copied from this [issue](https://github.com/catkin/catkin_tools/issues/551). Generates `compile_commands.json` files using catkin, usually used with language servers like `clangd`.

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
## Usage

In catkin root directory, run

```sh
catkin-compile-commands
```

Restart your language server if necessary.
