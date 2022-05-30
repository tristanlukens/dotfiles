local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

	-- themes
	Plug 'morhetz/gruvbox'
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'ayu-theme/ayu-vim'

	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'jiangmiao/auto-pairs'
	Plug 'nvim-treesitter/nvim-treesitter'

  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

vim.call('plug#end')
