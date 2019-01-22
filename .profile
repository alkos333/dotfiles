#!/usr/bin/env sh

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_HOME="$HOME/.run"


export EDITOR="vim"
export PREFIX="$HOME/.local"
export PATH="$PREFIX/bin:$PATH"
export MANPATH="$XDG_DATA_HOME/man:$MANPATH"
export INFOPATH="$XDG_DATA_HOME/info:$INFOPATH"

alias dot="git -C $HOME --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Homebrew/Linuxbrew
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"
export HOMEBREW_PREFIX="$PREFIX/linuxbrew"
export HOMEBREW_CELLAR="$HOMEBREW_PREFIX/Cellar"
export HOMEBREW_REPOSITORY="$HOMEBREW_PREFIX"
export PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:$PATH"
export MANPATH="$HOMEBREW_PREFIX/share/man:$MANPATH"
export INFOPATH="$HOMEBREW_PREFIX/share/info:$INFOPATH"

alias bundle="brew bundle \
	--file=$XDG_CONFIG_HOME/brew/Brewfile \
	--force \
	--describe"

export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export SCREENRC="$XDG_CONFIG_HOME/screen/screenrc"

# Tmux
export TMUX_TMPDIR="$XDG_RUNTIME_HOME/tmux"
export TMUX_PLUGIN_MANAGER_PATH="$XDG_CACHE_HOME/tmux/plugins"

# Python
export PYTHONPATH="$(python -m site --user-base)/bin"
export PATH="$PATH:$PYTHONPATH"

# Nodejs
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# sdkman
export SDKMAN_DIR="$PREFIX/sdkman"
source "$HOME/.local/sdkman/bin/sdkman-init.sh"

eval `dircolors $HOME/.dir_colors`
