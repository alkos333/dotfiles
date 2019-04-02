PREFIX ?= ${HOME}/.local
STOW_DIR ?= ${PREFIX}

HOMEBREW_VERBOSE=1
HOMEBREW_FORCE_BREWED_CURL=1
HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK=1
HOMEBREW_TEMP=${PREFIX}/tmp
HOMEBREW_PREFIX=${STOW_DIR}/linuxbrew

HOMEBREW_OPTS = "--force-bottle"
BREW = which -s $(1) || brew install $(1) ${HOMEBREW_OPTS}
STOW = stow $(1) --target

# Search path
VPATH = ${PATH}:${XDG_DATA_HOME}

.POSIX:
.SUFFIXES:
all: linuxbrew vim tmux

brewfile: brew
	brew config
	brew bundle --global

linuxbrew: linuxbrew/Homebrew
	test -d $< || git clone -q https://github.com/Homebrew/brew ${HOMEBREW_PREFIX}/Homebrew
	mkdir -p ${HOMEBREW_PREFIX}/bin
	ln -fs ${HOMEBREW_PREFIX}/Homebrew/bin/brew ${HOMEBREW_PREFIX}/bin
	${HOMEBREW_PREFIX}/bin/brew update --force

vim: vim/bundle/Vundle.vim
	test -d $< || git clone https://github.com/VundleVim/Vundle.vim.git ${XDG_DATA_HOME}/vim/bundle/Vundle.vim
	vim +PluginInstall +qall

tmux: tmux tmux/plugins/tpm
	$(BREW)
	test -d $< || git clone https://github.com/tmux-plugins/tpm ${TMUX_PLUGIN_MANAGER_PATH}/tmp
	tmux source-file ${XDG_CONFIG_HOME}/tmux/tmux.conf

gnumake: make makefile2graph
	$(BREW) $?
