" Pathogen (vim package manager)
" http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/
call pathogen#infect()
call pathogen#helptags()

" Vundle (basedon Pathogen, with more features)
" https://github.com/gmarik/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Raimondi/delimitMate.git'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'dragon12/vim-pyunit.git'
Plugin 'unimpaired.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'aquach/vim-http-client'
call vundle#end()

set ruler 
" relative line numbers based on current line
set relativenumber
" autolatically refresh file if changed on disk
set autoread

filetype plugin on
filetype indent on
syntax on

" TODO incorporate into babushka dep set-up
" vim-flake8 (https://github.com/nvie/vim-flake8)
" run on every file save
autocmd BufWritePost *.py call Flake8()
" enable markers
let g:flake8_show_in_file=1

" TODO incorporate into babushka dep set-up?
" vim-pyunit
" run on every file save
autocmd BufWritePost *.py call PyUnitRunTests()

" Automatically close quotes, brackets, etc
let delimitMate_expand_cr = 0

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

" CtrlP 
" directories to ignore
set wildignore+=*/target/**
" don't cache
let g:ctrlp_use_caching=0

" pyunit settings
let PyUnitShowTests = 0
let PyUnitTestsRoot = "test"
let PyUnitTestsStructure = "nose"
let PyUnitOpenTestFileOnFailure = 0

" vim-http-client: use json filetype for better syntax highlighting
let g:http_client_json_ft="json"
