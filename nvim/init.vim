"        _
" __   _(_)_ __ ___
" \ \ / / | '_ ` _ \
"  \ V /| | | | | | |
"   \_/ |_|_| |_| |_|
"

" vim/nvim config by Tristan Lukens
" tristanlukens.com
" I hope the site above is going to be a thing soon :)

" very based of of ThePrimeagen's vimrc. https://www.youtube.com/watch?v=n9k9scbTuvQ&t=365s

" PLUGINS
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $HOME/.config/nvim/init.vim
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
    " ayu theme
    Plug 'ayu-theme/ayu-vim'
    " coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" sourcing coc.vim
" with commented out statusline, isn't working
source $HOME/.config/nvim/plug-config/coc.vim

" coc extensions
let g:coc_global_extensions = ['coc-prettier', 'coc-tsserver', 'coc-html', 'coc-emmet', 'coc-json', 'coc-css', 'coc-tailwindcss']

" set up prettier for coc
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" SETUP
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

" THEME
" options & requirements for ayu
set termguicolors
let ayucolor="dark"

" settings the theme
colorscheme gruvbox

" statusline
set statusline=
set statusline=%#PmenuSel#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%=
set statusline+=%#Search#
set statusline+=\ [%l
set statusline+=\ of
set statusline+=\ %L]

" REMAPS
let mapleader = "\<Space>"

" mapping nerdtreetoggle to leader+`
nnoremap <leader>` :NERDTreeToggle<CR>
