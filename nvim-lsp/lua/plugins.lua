local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

	-- themes
	Plug 'morhetz/gruvbox'
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'ayu-theme/ayu-vim'

	-- lsp servers
	Plug 'neovim/nvim-lspconfig'
	-- rust
	Plug 'simrat39/rust-tools.nvim'
	Plug 'fatih/vim-go'

	-- debugging
	Plug 'nvim-lua/plenary.nvim'
	Plug 'mfussenegger/nvim-dap'

	-- completion
	Plug 'ms-jpq/coq_nvim'

	-- others
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'jiangmiao/auto-pairs'
	Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

vim.call('plug#end')
