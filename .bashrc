# Set default editor
export EDITOR=vim

# Enable vi line editing mode
set -o vi

# Don't exit bash when encounter EOF characters
# on an input line
set -o ignoreeof

# Customize prompt
if [ -f ~/.bashprompt ]; then
    source ~/.bashprompt
fi

# append rather than overwrite history file
shopt -s histappend

# set history size
HISTSIZE=15000
HISTFILESIZE=1000000
HISTCONTROL=ignoreboth

# dotfiles repository config
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

