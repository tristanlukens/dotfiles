local map  = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- builtins
vim.g.mapleader = " "
map("n", "<Leader>w", ":write<CR>", opts)
map("n", "<Leader>+", ":vs<CR><C-w>l", opts)
map("", "<C-k>", ":noh<CR>", opts)
map("n", "<Leader>r", ":e<CR>", opts)

-- plugins
-- nvim-tree.lua
map("n", "<Leader>`", ":NvimTreeToggle<CR>", opts)

-- fzf
map("", "<C-p>", ":Files<CR>", opts)
