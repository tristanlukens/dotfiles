--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim theme config by Tristan Lukens
-- tristanlukens.github.io

vim.opt.termguicolors = true

vim.g["gruvbox_contrast_light"] = "hard"
vim.g["gruvbox_contrast_dark"] = "hard"
vim.cmd("colorscheme gruvbox")

vim.opt.statusline = "  %F => %{&filetype} %= [line %l of %L]  "
