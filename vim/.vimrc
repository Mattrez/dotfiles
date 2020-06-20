call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'machakann/vim-highlightedyank'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
call plug#end()

colorscheme nord

set nocompatible
filetype off

set cino+=(0
set path+=**
set ttyfast
set lazyredraw
set noswapfile
set noundofile
set splitbelow
set splitright
set nohlsearch
set number
set relativenumber
set nowrap
set wildmenu
set encoding=utf-8

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab

let mapleader = ","
nnoremap , <nop>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>

map <leader>c :w! \| !compiler <c-r>%<CR>
