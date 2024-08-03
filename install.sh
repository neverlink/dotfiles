#!/bin/bash

set +e +x

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

ln -sf "$(realpath .zshrc)" "${HOME}/.zshrc"
ln -sf "$(realpath .gitconfig)" "${HOME}/.gitconfig"

ln -sf "$(realpath nvim)" "${XDG_CONFIG_HOME}/nvim"
ln -sf "$(realpath starship.toml)" "${XDG_CONFIG_HOME}/starship.toml"
