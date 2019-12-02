" Setting
    " filetype
filetype on
filetype indent on
filetype plugin on
    
    " general
syntax on
set number
set clipboard=unnamed
set hlsearch
set cursorline
set noswapfile
set softtabstop=4
set shiftwidth=2
set splitright
set autochdir
set laststatus=2
    " for search

set ignorecase
set incsearch




" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'

call plug#end()


colorscheme nord


" NerdTree Setting
nnoremap <silent> <F2>  :NERDTreeToggle<Enter>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeChDirMode = 2

" CtrlP Setting
 let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$|tmp$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }

" Emmet setting
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall
autocmd FileType html,css,scss imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

