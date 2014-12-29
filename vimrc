set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set ruler 
" relative line numbers based on current line
set relativenumber
" autolatically refresh file if changed on disk
set autoread

filetype plugin on
syntax on

" Vim package manager
" http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/
call pathogen#infect()
call pathogen#helptags()
