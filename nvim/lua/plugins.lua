--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim plugins config by Tristan Lukens
-- tristanlukens.github.io

-- TODO: add function that automatically installs vim-plug to the currect directory and runs :PlugInstall if needed

local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.local/share/nvim/site/plugged")
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'gruvbox-community/gruvbox'
    Plug 'ayu-theme/ayu-vim'
vim.call("plug#end")
