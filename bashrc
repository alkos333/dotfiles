# Set default editor
export EDITOR=vim

# Enable vi line editing mode
set -o vi
set -o ignoreeof

# Customize prompt
if [ -f ~/.bashprompt ]; then
    source ~/.bashprompt
fi
