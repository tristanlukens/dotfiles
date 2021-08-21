"        _
" __   _(_)_ __ ___
" \ \ / / | '_ ` _ \
"  \ V /| | | | | | |
"   \_/ |_|_| |_| |_|
"

" vim/nvim config by Tristan Lukens
" tristanlukens.com
" I hope the site above is going to be a thing soon :) 

" numbers
set relativenumber
set nu

" scroll
set scrolloff=8

" tabs
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" cursor
set guicursor=

" text wrapping off
set nowrap

" line highlighting
set cursorline

" number of commands to save
set history=1000

set wildmenu

" PLUGINS
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.local/share/nvim/site/plugged")
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " gruvbox theme
    Plug 'gruvbox-community/gruvbox'
    " emmet
    Plug 'mattn/emmet-vim'
call plug#end()

" THEME
colorscheme gruvbox
