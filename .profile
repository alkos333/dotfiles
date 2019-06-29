export XDG_CONFIG_HOME=${HOME}/.config
export XDG_DATA_HOME=${HOME}/.local/share
export XDG_CACHE_HOME=${HOME}/.cache
export XDG_RUNTIME_HOME=${HOME}/.run

export TMPDIR=${XDG_RUNTIME_HOME}
export PATH=${HOME}/.local/bin:${PATH}

export EDITOR="vi"
export VISUAL="nvim"

# vim
export VIMINIT=":source ${XDG_CONFIG_HOME}/vim/vimrc"

# readline
export INPUTRC="${XDG_CONFIG_HOME}/readline/inputrc"

# tmux
export TMUX_TMPDIR=${XDG_RUNTIME_HOME}

# npm
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

# brew
# shellcheck source=.config/profile.d/homebrew.sh
command -v brew > /dev/null && .  "${XDG_CONFIG_HOME}/profile.d/homebrew.sh"

# fzf
# export FZF_TMUX=1
export FZF_DEFAULT_COMMAND="fd --hidden --type f --exclude .git"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse-list \
  --extended --cycle --inline-info \
  --preview='bat --style=full --color=always {}'"

# gauge
# export GAUGE_HOME="${XDG_CACHE_HOME}/gauge"

# sdkman
export SDKMAN_DIR="${HOME}/.local/sdkman" \
  && . "${SDKMAN_DIR}/bin/sdkman-init.sh"


# aliases
# print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
alias reload='exec $(tmux show -g -v default-command)'
