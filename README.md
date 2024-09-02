# dotfiles

https://www.youtube.com/watch?v=4IqsqWLqR9Y
https://www.youtube.com/watch?v=ICU6XUzqg-U

Prerequisite - append this to /etc/zsh/zshenv
```
if [[ -z "$XDG_CONFIG_HOME" ]]; then
    export XDG_CONFIG_HOME="$HOME/.config/"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]]; then
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"
fi
```
