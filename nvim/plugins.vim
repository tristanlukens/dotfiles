"             _
"  _ ____   _(_)_ __ ___
" | '_ \ \ / / | '_ ` _ \
" | | | \ V /| | | | | | |
" |_| |_|\_/ |_|_| |_| |_|
"

" nvim plugins config by Tristan Lukens
" tristanlukens.github.io

" this file is only for installing plugins: the actual configuration
" per-plugin is done in the $DOTS/nvim/plugins/ directory, but these will be
" sourced here

" coc-svelte dependencies are more up-to-date than when installing it via CocInstall or g:coc_global_extensions
call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'ayu-theme/ayu-vim'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'kevinoid/vim-jsonc'
  Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
call plug#end()

" -- SOURCING CONFIG FILES --
source $DOTS/nvim/plugins/nerdtree.vim
source $DOTS/nvim/plugins/treesitter.vim
source $DOTS/nvim/plugins/vim-go.vim
