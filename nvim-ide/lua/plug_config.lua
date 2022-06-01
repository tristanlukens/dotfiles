-- nvim-tree.lua
require'nvim-tree'.setup {
	view = {
		width = 25,
		side = "right"
	},
	renderer = {
		icons = {
			show = {
				file = false,
			},
			glyphs = {
				default = "",
				symlink = "->",
				folder =  {
					arrow_closed = "",
          arrow_open = "",
          default = "d",
          open = "o",
          empty = "e",
          empty_open = "o",
          symlink = "s",
          symlink_open = "so",
				},
				git = {
					unmerged = "-",
					deleted = "!",
				}
			}
		}
	}
}

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "javascript", "typescript", "svelte", "go", "css", "html", "markdown", "ruby", "yaml", "json", "make" },

  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
