#!/usr/bin/env sh

export PREFIX="$HOME/.local"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$PREFIX/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_HOME="$HOME/.run"

export HISTFILE="$XDG_DATA_HOME/sh/history"
export EDITOR="vim"
export PATH="$PREFIX/linuxbrew/bin:$PREFIX/bin:$PATH"
export MANPATH="$XDG_DATA_HOME/man:$MANPATH"
export INFOPATH="$XDG_DATA_HOME/info:$INFOPATH"
export LANG=en_US.UTF-8
export TMPDIR="$PREFIX/tmp"

export DOTFILES_REPOSITORY="$XDG_DATA_HOME/dotfiles"
alias dotfiles="git -C $HOME --git-dir=$DOTFILES_REPOSITORY --work-tree=$HOME"

# vim
export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"

# readline
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

# tmux
export TMUX_TMPDIR="$XDG_RUNTIME_HOME/tmux"
export TMUX_PLUGIN_MANAGER_PATH="$XDG_DATA_HOME/tmux/plugins/"
alias tmux="tmux -2 -f $XDG_CONFIG_HOME/tmux/tmux.conf"

# npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Enable color highlighting for file listings
alias ls="ls -G"
# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
# Reload the shell (invoke as a interactive shell)
alias reload="exec ${SHELL} -i"
