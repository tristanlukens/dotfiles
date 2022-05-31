-- ayu
vim.opt.termguicolors = true
vim.cmd("let ayucolor = 'light'")
vim.cmd('colorscheme ayu')

-- gruvbox
--vim.cmd('colorscheme gruvbox')
 
-- gruvbox8
vim.opt.background = 'dark'
--vim.cmd('colorscheme gruvbox8')

-- statusline
vim.o.statusline = ""
vim.o.statusline = vim.o.statusline .. "  %F => %{&filetype}"
vim.o.statusline = vim.o.statusline .. "%="
vim.o.statusline = vim.o.statusline .. "%="
vim.o.statusline = vim.o.statusline .. "[line %l of %L]  "
