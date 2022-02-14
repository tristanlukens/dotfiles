"             _
"  _ ____   _(_)_ __ ___
" | '_ \ \ / / | '_ ` _ \
" | | | \ V /| | | | | | |
" |_| |_|\_/ |_|_| |_| |_|
" 

" nvim keybindings config by Tristan Lukens
" tristanlukens.github.io

" -- GENERAL REMAPS --
let mapleader = " "

nnoremap <Leader>w :write<CR>
nnoremap <C-k> :noh<CR>

" -- PLUGIN MAPPINGS --
" NERDTree
nnoremap <Leader>` :NERDTreeToggle<CR>

" FZF
noremap <C-p> :Files<CR>
