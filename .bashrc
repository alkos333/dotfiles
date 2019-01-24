#/usr/bin/env sh

# homebrew
which -s brew && eval $(brew shellenv)
export HOMEBREW_CACHE="$XDG_CACHE_HOME/homebrew"
export HOMEBREW_NO_EMOJI=1

# Configure colors
CYAN="\[\033[0;36m\]"
LIGHT_GRAY="\[\033[0;37m\]"
GREEN="\[\033[0;32m\]"
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
NO_COLOR="\[\033[0m\]"

GIT_PROMPT_ONLY_IN_REPO=1
BASH_GIT_PROMPT="${HOMEBREW_PREFIX}/opt/bash-git-prompt/share/gitprompt.sh"
if [ -f "$BASH_GIT_PROMPT" ]; then
  __GIT_PROMPT_DIR=$(dirname $BASH_GIT_PROMPT)
  source "$BASH_GIT_PROMPT"
fi

export BASH_COMPLETION_COMPAT_DIR="${HOMEBREW_PREFIX}/etc/bash_completion.d"
[[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]] \
  && .  "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"


