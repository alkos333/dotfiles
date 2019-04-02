export PREFIX=$HOME/.local
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_DATA_HOME=${PREFIX}/share
export XDG_CACHE_HOME=${HOME}/.cache
export XDG_RUNTIME_HOME=${HOME}/.run

export EDITOR="vim -e"
export PATH="${PREFIX}/bin:$PATH"
export TMPDIR="$PREFIX/tmp"

export DOTFILES_REPOSITORY="${XDG_DATA_HOME}/dotfiles"
alias dotfiles="git -C $HOME --git-dir=$DOTFILES_REPOSITORY/.git --work-tree=$HOME"

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

# Enable color highlighting for file listings
alias ls="ls -G"
# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# ghi
# just emit results, don't pipe to pager
export GHI_PAGER="cat"

# bash
which -s bash && export BASSH_ENV=${XDG_CONFIG_HOME}/bash/bashrc

#tmux
which -s tmux \
&& test -z ${TMUX} \
&& tmux ${TMUX_OPTS} new-session -AD -s ${USER}
