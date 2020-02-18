call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'morhetz/gruvbox'
Plug '/usr/local/opt/fzf'
Plug 'machakann/vim-highlightedyank'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'junegunn/fzf.vim'
call plug#end()

syntax enable

set background=dark
"let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

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

let mapleader = ","
nnoremap , <nop>

nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>c :RustRun<CR>

imap jk <Esc>

inoremap {<Enter> {<Enter>}<Esc>O

autocmd FileType latex,tex nnoremap <F9> :w \| !comp_tex.sh %<CR>
autocmd FileType latex,tex set spell
autocmd FileType latex,tex set spelllang=en,pl
autocmd Filetype nroff set spell
autocmd Filetype nroff set spelllang=en,pl
autocmd Filetype nroff set wrap
