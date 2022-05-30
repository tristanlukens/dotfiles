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

