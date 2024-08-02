#!/bin/bash

set +e +x

ln -sf "$(realpath .zshrc)" "${HOME}/.zshrc"
ln -sf "$(realpath .gitconfig)" "${HOME}/.gitconfig"
