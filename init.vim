call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic' " Syntax highlight
Plug 'vim-airline/vim-airline' " Status bar
Plug 'valloric/youcompleteme' " Autocompletion
Plug 'tpope/vim-fugitive' " GIT plugin

Plug 'nvie/vim-flake8'	" Python linter
Plug 'scrooloose/nerdtree' " Directory explorer

Plug 'vim-ruby/vim-ruby' " Ruby stuff

" Scala IDE
Plug 'ensime/ensime-vim'
Plug 'derekwyatt/vim-scala'

" Markdown Stuff
Plug 'godlygeek/tabular'

Plug 'tpope/vim-sensible' " Some defaults for VIM settings

Plug 'yggdroot/indentline' " Show indetation

" Theme
Plug 'nightsense/vim-crunchbang'

" Deoplete
Plug 'Shougo/deoplete.nvim'

" Rust
Plug 'sebastianmarkow/deoplete-rust'
Plug 'rust-lang/rust.vim'

" TypeScript
"Plug 'mhartington/deoplete-typescript'
Plug 'leafgarland/typescript-vim'


" Initialize plugin system
call plug#end()

set encoding=utf-8

" Python setup
let g:ycm_python_binary_path = '/usr/local/bin/python3.6'
let g:python_host_prog = '/usr/local/bin/python3.6'
let g:python3_host_prog = '/usr/local/bin/python3.6'

let g:deoplete#enable_at_startup = 1

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

" Navigation
nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>


" Set Theme
colorscheme crunchbang
set termguicolors

set nu
set cursorline
set conceallevel=0
set clipboard=unnamed

" Ensime Config
:let maplocalleader = "§"
 autocmd BufWritePost *.scala silent :EnTypeCheck
 nnoremap <localleader>t :EnType<CR>
 au FileType scala nnoremap <localleader>df :EnDeclaration<CR>

 " Toggle terminal window
 "
 nnoremap <F7> :call vimterm#toggle() <CR>
 tnoremap <F7> <C-\><C-n>:call vimterm#toggle() <CR>
