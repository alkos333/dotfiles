PREFIX ?= ${HOME}/.local
STOW_DIR ?= ${PREFIX}

HOMEBREW_VERBOSE=1
HOMEBREW_FORCE_BREWED_CURL=1
HOMEBREW_FORCE_BREWED_GIT=1
HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK=1
HOMEBREW_TEMP=${PREFIX}/tmp
HOMEBREW_PREFIX=${STOW_DIR}/linuxbrew

HOMEBREW_OPTS = "--force-bottle"
BREW = which -s $(1) || brew install $(1) ${HOMEBREW_OPTS}
STOW = stow $(1) --target

# Search path
VPATH = ${PATH}:${HOMEBREW_PREFIX}:${XDG_DATA_HOME}

.POSIX:
.SUFFIXES:
all: brew vundle tpm

bundle: brew
	brew bundle

brew: Homebrew/bin/brew
	mkdir -p ${HOMEBREW_PREFIX}/bin
	ln -fs ${HOMEBREW_PREFIX}/Homebrew/bin/brew ${HOMEBREW_PREFIX}/bin
	${HOMEBREW_PREFIX}/bin/brew update --force

vundle: nvim vim/bundle/Vundle.vim
	nvim +PluginInstall +qall
	nvim +PluginClean! +qall


tpm: tmux tmux/plugins/tpm
	tmux source-file ${XDG_CONFIG_HOME}/tmux/tmux.conf
