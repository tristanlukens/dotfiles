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
call plug#begin("~/.local/share/nvim/site/plugged")
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'gruvbox-community/gruvbox'
    Plug 'ayu-theme/ayu-vim'
call plug#end()

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $DOTS/nvim/init.lua
endif

" sourcing coc.vim
" with commented out statusline, isn't working
source $HOME/.config/nvim/plug-config/coc.vim

" coc extensions
let g:coc_global_extensions = ['coc-prettier', 'coc-tsserver', 'coc-html', 'coc-emmet', 'coc-json', 'coc-css', 'coc-tailwindcss', 'coc-svelte']

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
set guicursor=i:ver25-iCursor

" text wrapping off
set wrap

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
" get rid of highlighting of previous search
nnoremap <C-k> :noh<CR>
" use meta + arrow keys to resize vsplit or split
nmap <M-Right> :vertical resize +1<CR>
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>
