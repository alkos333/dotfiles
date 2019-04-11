export PREFIX=${HOME}/.local

export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache
export XDG_RUNTIME_HOME=${HOME}/.run
export XDG_DATA_HOME=${PREFIX}/share

export EDITOR="vi"
export VISUAL="nvim"

export PATH=${PREFIX}/bin:"$PATH"
export MANPATH=${XDG_DATA_HOME}/man:"${MANPATH}"
export INFOPATH=${XDG_DATA_HOME}/info:"${INFOPATH}"
export TMPDIR=${PREFIX}/tmp

# vim
export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"

# readline
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

# tmux
export TMUX_TMPDIR=${XDG_RUNTIME_HOME}/tmux
export TMUX_PLUGIN_MANAGER_PATH=${XDG_DATA_HOME}/tmux/plugins/
export TMUX_OPTS="-2 -u -f ${XDG_CONFIG_HOME}/tmux/tmux.conf"

# npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# bash based utilities
which -s bash && . ${XDG_CONFIG_HOME}/bash/bashrc

# ghi
# just emit results, don't pipe to pager
which -s ghi && export GHI_PAGER="cat"
