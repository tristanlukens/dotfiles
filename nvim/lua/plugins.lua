--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim plugins config by Tristan Lukens
-- tristanlukens.github.io

-- TODO: add function that automatically installs vim-plug to the correct directory and runs :PlugInstall if needed

-- INSTALLING PLUGINS
local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.local/share/nvim/site/plugged")
    -- Plug 'sheerun/polyglot'

    Plug 'scrooloose/NERDTree'

    Plug 'jiangmiao/auto-pairs'

    Plug 'morhetz/gruvbox'
    Plug 'ayu-theme/ayu-vim'

    Plug 'neovim/nvim-lspconfig'
    Plug('nvim-treesitter/nvim-treesitter', { ["do"] = ':TSUpdate' } )

    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'

    Plug 'sbdchd/neoformat'
vim.call("plug#end")

-- PLUGIN CONFIGS
-- TREESITTER
-- installed languages: ruby, typescript, rust, gomod, json, go, markdown, svelte, html, css, regex
require("plugins.treesitter")
-- NEOFORMAT
require("plugins.neoformat")
