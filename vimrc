
set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required (Vundle)

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

" Status line colours and position
"
set t_Co=256
set laststatus=2
set timeoutlen=50
set noshowmode


" gVim specifics
if has("gui_running")
   set guifont="DejaVu Sans Mono 10"
   colorscheme desert
endif

 
" vim generic
let mapleader = " "
set showcmd
 
syntax enable
" Be sensible about case when searching
set ignorecase
set smartcase
 
" Tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set copyindent
set ai               "Auto indent
set si               "Smart indent
set relativenumber   "Relative line numbers
set number

" Ctrl-P
noremap  <C-T> :CtrlPBuffer<CR>


" Show matching brackets when text indicator is over them
set showmatch
 
set encoding=utf8
 
" Disable cursor key navigation, stick to hjkl
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
 
" Status line
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

