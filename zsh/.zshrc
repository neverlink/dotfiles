# Pure shell prompt
# USER="%B%F{green}$(whoami)%f%b"
# HOST="%B%F{green}$(hostname)%f%b"
# CWD='%B%F{cyan}%~%f%b'
# NEWLINE=$'\n'
# REMAINDER='%F{green}➜%f '
# PROMPT="${USER}@${HOST} on ${CWD}${NEWLINE}${REMAINDER}"

HISTSIZE=110000
SAVEHIST=100000
HISTFILE=~/.histfile

if [ -x "$(which pyenv)" ]; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

eval "$(atuin init zsh --disable-up-arrow)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
