export PATH="/home/nine/.local/bin:$PATH"

alias mv='mv -i'
alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'

# Windows aliases
alias cmd='cmd.exe'
alias {ex,explorer}='explorer.exe .'
DISTRO=$(grep ^ID= /etc/os-release | cut -d= -f2)
code() {
  nohup code.exe --remote wsl+"${DISTRO}" "$(pwd)" >&/dev/null &
}

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Pure Bash Shell Prompt
# USER="%B%F{green}$(whoami)%f%b"
# HOST="%B%F{green}$(hostname)%f%b"
# CWD='%B%F{cyan}%~%f%b'
# NEWLINE=$'\n'
# REMAINDER='%F{green}➜%f '
# PROMPT="${USER}@${HOST} on ${CWD}${NEWLINE}${REMAINDER}"
