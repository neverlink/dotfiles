#!/bin/bash

set +e +x

ln -sf "$(pwd)/.zshrc" "${HOME}/.zshrc"
ln -sf "$(pwd)/.gitconfig" "${HOME}/.gitconfig"
