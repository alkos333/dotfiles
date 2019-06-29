export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_FORCE_BREWED_GIT=1
export HOMEBREW_FORCE_VENDOR_RUBY=1
export HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK=1
export HOMEBREW_CACHE=${XDG_CACHE_HOME}/homebrew
export HOMEBREW_LOGS=${XDG_DATA_HOME}/logs/homebrew
export HOMEBREW_TEMP=${XDG_RUNTIME_HOME}
export HOMEBREW_VERBOSE=1
export HOMEBREW_NO_EMOJI=1
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1


BREW=$(command -v brew) && eval "$(${BREW} shellenv)"
HOMEBREW_CURL_PREFIX="$(brew --prefix curl)"
export PATH="${HOMEBREW_CURL_PREFIX}/bin:${PATH}"

export BASH_COMPLETION_COMPAT_DIR=${HOMEBREW_PREFIX}/etc/bash_completion.d
# shellcheck source=/dev/null
test -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" \
  && . "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
