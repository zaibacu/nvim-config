call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic' " Syntax highlight
Plug 'vim-airline/vim-airline' " Status bar
Plug 'valloric/youcompleteme' " Autocompletion
Plug 'tpope/vim-fugitive' " GIT plugin

Plug 'nvie/vim-flake8'	" Python linter


" Initialize plugin system
call plug#end()

set encoding=utf-8

" Python setup
let g:ycm_python_binary_path = 'python3'
let g:python3_host_prog = 'python3'

" Vertical line
:set colorcolumn=80

" Setup tab format
set tabstop=4
set shiftwidth=4
set expandtab
