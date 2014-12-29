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
