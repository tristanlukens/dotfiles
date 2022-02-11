--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim keybindings config by Tristan Lukens
-- tristanlukens.github.io

local map = vim.api.nvim_set_keymap

-- BUILTINS --
-- using leader key
vim.g.mapleader = ' '

map("n", "<Leader>w", ":write<CR>", {noremap = true})
map("n", "<Leader>+", ":vs<CR><C-w>l", {noremap = true})

-- using control key
map("", "<C-k>", ":noh<CR>", {noremap = true})

-- PLUGINS --
-- using leader key
map("n", "<Leader>`", ":NERDTreeToggle<CR>", {noremap = true})
