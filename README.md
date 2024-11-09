These dotfiles are meant to be used with gnu stow. To get started,
clone this directory into `~/.dotfiles`.

Stow default directory
======================

If used first, make sure to either be in `.dotfiles` or use stows `-d`
option. After activating the zsh package, stow can be used from anywhere
since `STOW_DIR` will be set to `~/.dotfiles`.

Install Package
===============

`stow PACKAGENAME`

Uninstall Package
=================

`stow -D PACKAGENAME`

Reinstall Package
=================

Sometimes symlinks will be orphaned, so deinstall and install again would
be required. Use `stow -R`

Further Stow documentation
==========================

https://www.gnu.org/software/stow/manual
