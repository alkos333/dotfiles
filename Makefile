.POSIX:
.SUFFIXES:

PREFIX ?= ${HOME}/.local

export SHELL = /bin/sh
export NPM_CONFIG_USERCONFIG ?= ${XDG_CONFIG_HOME}/npm/npmrc

BREW = . ${XDG_CONFIG_HOME}/bash/bashrc && brew install


all: test

test: bundle
	cd tests && npm install
	cd tests && npm test

bundle: brew Brewfile
	${BREW} bundle

brew:
	#TODO install homebrew/linuxbrew based on platform
	true
