# Pure shell prompt
# USER="%B%F{green}$(whoami)%f%b"
# HOST="%B%F{green}$(hostname)%f%b"
# CWD='%B%F{cyan}%~%f%b'
# NEWLINE=$'\n'
# REMAINDER='%F{green}➜%f '
# PROMPT="${USER}@${HOST} on ${CWD}${NEWLINE}${REMAINDER}"

[ -f "${ZDOTDIR}/.aliasrc" ] && source "${ZDOTDIR}/.aliasrc"
[ -f "${ZDOTDIR}/.functionrc" ] && source "${ZDOTDIR}/.functionrc"
[ -f "${ZDOTDIR}/.optionrc" ] && source "${ZDOTDIR}/.optionrc"
[ -f "${ZDOTDIR}/.pluginrc" ] && source "${ZDOTDIR}/.pluginrc"

HISTSIZE=110000
SAVEHIST=100000
HISTFILE=~/.histfile

source "${ZDOTDIR}/.antidote/antidote.zsh"
antidote load

if [ -x "$(which pyenv)" ]; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

eval "$(atuin init zsh --disable-up-arrow)"
eval "$(saml2aws --completion-script-zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
