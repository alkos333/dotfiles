set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set ruler 

filetype plugin on
syntax on

" Vim package manager
" http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/
call pathogen#infect()
call pathogen#helptags()
