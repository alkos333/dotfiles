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

# source additional files
for file_to_source in $(ls ~/.dotfiles/bash/source_em/*);
do
  source $file_to_source
done

# set history size
HISTSIZE=15000
HISTFILESIZE=1000000
HISTCONTROL=ignoreboth

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash