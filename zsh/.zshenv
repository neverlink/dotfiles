export VISUAL=/usr/local/bin/nvim
export EDITOR=/usr/local/bin/nvim

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
[ -f "${ZDOTDIR}/.aliasrc" ] && source "${ZDOTDIR}/.aliasrc"
[ -f "${ZDOTDIR}/.optionrc" ] && source "${ZDOTDIR}/.optionrc"
[ -f "${ZDOTDIR}/.pluginrc" ] && source "${ZDOTDIR}/.pluginrc"

export GIT_CONFIG_GLOBAL="${XDG_CONFIG_HOME}/git/config"
export STARSHIP_CONFIG="${XDG_CONFIG_HOME}/starship/starship.toml"

export PIP_BREAK_SYSTEM_PACKAGES='1'
export PATH="$HOME/.pyenv/bin:$PATH"