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
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'yggdroot/leaderf'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" [Key_Mapping]
let mapleader=","
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <leader><tab> <c-x><c-o>
inoremap <leader>j <c-n>
inoremap <leader>k <c-p>

" [Tag]
set tags=./tags;,tags

" [TagList]
map <leader>tl :TlistToggle<cr>

" [TagBar]
nnoremap <leader>tb :TagbarToggle<cr>

" [AsyncRun]
let g:asyncrun_open=12
nnoremap <leader>ar :call asyncrun#quickfix_toggle(12)<cr>

" [RustRacer]
set hidden
let g:racer_cmd="$HOME/.cargo/bin/racer"
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
