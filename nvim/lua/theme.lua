--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim theme config by Tristan Lukens
-- tristanlukens.github.io

vim.opt.termguicolors = true
vim.cmd("colorscheme gruvbox")

local set = vim.opt

set.statusline = " %f %= %r %F %= [%l of %L] "
