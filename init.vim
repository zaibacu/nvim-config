call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic' " Syntax highlight
Plug 'vim-airline/vim-airline' " Status barA
Plug 'valloric/youcompleteme' " Autocompletion
Plug 'tpope/vim-fugitive' " GIT plugin

Plug 'nvie/vim-flake8'	" Python linter
Plug 'scrooloose/nerdtree' " Directory explorer


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

" NerdTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <S-e> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
