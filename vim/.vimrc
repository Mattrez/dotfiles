call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'vim-scripts/wombat256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug '/usr/local/opt/fzf'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
call plug#end()

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

syntax enable
set background=light

let g:solarized_termcolors=256
colorscheme solarized

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

nnoremap <leader>c :RustRun<CR>

imap jk <Esc>
inoremap {<Enter> {<Enter>}<Esc>O

autocmd FileType latex,tex nnoremap <F9> :w \| !comp_tex.sh %<CR>
autocmd FileType latex,tex set spell
autocmd FileType latex,tex set spelllang=en,pl
autocmd Filetype nroff set spell
autocmd Filetype nroff set spelllang=en,pl
autocmd Filetype nroff set wrap
autocmd FileType nroff nnoremap <F9> :w \| make