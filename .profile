export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_RUNTIME_HOME="${HOME}/.run"


export PATH="$HOME/.local/bin:$PATH"
export MANPATH="$XDG_DATA_HOME/man:$MANPATH"
export INFOPATH="$XDG_DATA_HOME/info:$INFOPATH"

export GOPATH="$HOME/.local/linuxbrew/opt/go"
export PATH="$PATH:$GOPATH/bin"

alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias config="dot config --global"

export HOMEBREW_PREFIX="$HOME/.local/linuxbrew"
export HOMEBREW_CELLAR="$HOMEBREW_PREFIX/Cellar"
export HOMEBREW_REPOSITORY="$HOMEBREW_PREFIX"
export PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:$PATH"
export MANPATH="$HOME/.local/linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.local/linuxbrew/share/info:$INFOPATH"

export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"

export PYTHONPATH="$(python -m site --user-base)/bin"
export PATH="$PATH:$PYTHONPATH"

export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"

export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

export PREFIX="$HOME/.local"

export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

export SDKMAN_DIR="$HOME/.local/sdkman"
source "$HOME/.local/sdkman/bin/sdkman-init.sh"
