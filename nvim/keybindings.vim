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

nnoremap <silent> <Leader>w :write<CR>
noremap <silent> <C-k> :noh<CR>

nnoremap <silent> <Leader>r :e<CR>

nnoremap <silent> <M-up> :resize -1<CR>
nnoremap <silent> <M-down> :resize +1<CR>
nnoremap <silent> <M-left> <C-w><
nnoremap <silent> <M-right> <C-w>>

" -- PLUGIN MAPPINGS --
" NERDTree
nnoremap <silent> <Leader>` :NERDTreeToggle<CR>

" FZF
noremap <silent> <C-p> :Files<CR>
