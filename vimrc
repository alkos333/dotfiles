"set backupdir=~/.vim/backup//
"set directory=~/.vim/swap//
set ruler 
" relative line numbers based on current line
set relativenumber
" autolatically refresh file if changed on disk
set autoread

filetype plugin on
filetype indent on
syntax on

" Vim package manager
" http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/
call pathogen#infect()
call pathogen#helptags()

" TODO incorporate into babushka dep set-up
" vim-flake8 (https://github.com/nvie/vim-flake8)
" run on every file save
autocmd BufWritePost *.py call Flake8()
" ebnable markers
let g:flake8_show_in_file=1

" TODO incorporate into babushka dep set-up?
" vim-pyunit
" run on every file save
autocmd BufWritePost *.py call PyUnitRunTests()
