set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'

" Snipmate

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Javascript
Plugin 'mxw/vim-jsx'
Plugin 'jelera/vim-javascript-syntax'

Plugin 'flazz/vim-colorschemes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Personal config
scriptencoding utf-8
set encoding=utf-8
set directory=$HOME/.vim/swapfiles
set incsearch
set hlsearch
set path+=**
set relativenumber
set wildmenu
syntax enable
noremap <silent> <C-c> :nohlsearch<CR><C-l>
set backspace=indent,eol,start
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set mouse=a
set list listchars=trail:·,tab:»·
set bkc=yes
set hidden

autocmd BufNewFile,BufRead *.pcss set filetype=css
autocmd BufWritePre * %s/\s\+$//e

" AIRLINE
set laststatus=2
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

" ColorScheme
colorscheme molokai

" Screen colors
set term=screen-256color

" FILE BROWSING
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()

