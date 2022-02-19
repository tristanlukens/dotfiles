--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim keybindings config by Tristan Lukens
-- tristanlukens.github.io

local map  = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- BUILTINS --
vim.g.mapleader = ' '
map("n", "<Leader>w", ":write<CR>", opts)
map("n", "<Leader>+", ":vs<CR><C-w>l", opts)
map("", "<C-k>", ":noh<CR>", opts)

-- PLUGINS --
-- NERDTREE
map("n", "<Leader>`", ":NERDTreeToggle<CR>", opts)

-- FZF
map("", "<C-p>", ":Files<CR>", opts)

