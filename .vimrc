set term=screen-256color
set t_Co=256
call pathogen#infect()
set nocompatible
syntax enable
set encoding=utf-8

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set showcmd
set number
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=2
set autoindent
set textwidth=79
set colorcolumn=80
set ruler
set noswapfile
set autoread
set hidden
set clipboard=unnamedplus
set background=dark
colorscheme solarized

set breakindent

set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %PI

set guioptions-=T
set guioptions-=r
set guioptions-=l

set guifont="Monospace Regular 8"

hi Folded term=NONE cterm=NONE gui=NONE

autocmd BufWritePre * :%s/\s\+$//e

let mapleader = ","
filetype plugin indent on

set list listchars=trail:·

noremap ;; :update<CR>
imap jj <ESC>
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
nnoremap <silent><a-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
nnoremap <silent><a-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><a-o> :set paste<CR>o<Esc>:set nopaste<CR>
nnoremap <silent><a-O> :set paste<CR>O<Esc>:set nopaste<CR>
map <Leader>h :%s/:\(\w\+\)\(\s\+\)=>/\1:/g<CR>

syntax on
