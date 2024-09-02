[[ -z "${XDG_CONFIG_HOME-}" ]] && export XDG_CONFIG_HOME="$HOME/.config"
[ -f "${ZDOTDIR}/.env" ] && source "${ZDOTDIR}/.env"
[ -f "${ZDOTDIR}/.aliasrc" ] && source "${ZDOTDIR}/.aliasrc"
[ -f "${ZDOTDIR}/.optionrc" ] && source "${ZDOTDIR}/.optionrc"
[ -f "${ZDOTDIR}/.pluginrc" ] && source "${ZDOTDIR}/.pluginrc"

HISTSIZE=110000
SAVEHIST=100000
HISTFILE=~/.histfile

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export VISUAL=/usr/local/bin/nvim
export EDITOR=/usr/local/bin/nvim

export PIP_BREAK_SYSTEM_PACKAGES='1'

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


eval "$(atuin init zsh --disable-up-arrow)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Vanilla shell prompt
# USER="%B%F{green}$(whoami)%f%b"
# HOST="%B%F{green}$(hostname)%f%b"
# CWD='%B%F{cyan}%~%f%b'
# NEWLINE=$'\n'
# REMAINDER='%F{green}➜%f '
# PROMPT="${USER}@${HOST} on ${CWD}${NEWLINE}${REMAINDER}"
