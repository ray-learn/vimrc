" [Version]
set nocompatible

" [Display]
set wrap
set number
set showcmd

" [Edit]
set autoindent
set smartindent
set backspace=2

" [Performance]
set clipboard=exclude:.*

" [Program]
syntax on

" [Plug]
call plug#begin('~/.vim/vim_plugin')	" Specify a directory for plugins
Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'
Plug 'skywind3000/asyncrun.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } 
Plug 'rust-lang/rust.vim'
call plug#end()

" [Key_Mapping]
let mapleader = ","

" [TagList]
map <leader>tl :TlistToggle<cr>

" [TagBar]
nnoremap <leader>tb :TagbarToggle<cr>

" [AsyncRun]
let g:asyncrun_open=12
nnoremap <leader>ar :call asyncrun#quickfix_toggle(12)<cr>

" [NerdTree]
map <leader>e :NERDTreeMirror<cr>
map <leader>e :NERDTreeToggle<cr>
