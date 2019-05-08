" [Version]
set nocompatible

" [Display]
set wrap
set number
set showcmd

" [Edit]
set autoindent
set smartindent

" [Performance]
set clipboard=exclude:.*

" [Program]
syntax on

" [Plug]
call plug#begin('~/.vim/vim_plugin')	" Specify a directory for plugins
Plug 'vim-scripts/taglist.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } 
Plug 'rust-lang/rust.vim'
call plug#end()

" [Key_Mapping]
let mapleader = ","

map <leader>e :NERDTreeMirror<cr>
map <leader>e :NERDTreeToggle<cr>
