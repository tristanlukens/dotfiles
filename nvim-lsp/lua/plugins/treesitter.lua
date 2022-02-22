--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim treesitter plugin config by Tristan Lukens
-- tristanlukens.github.io

local configs = require("nvim-treesitter.configs")

configs.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false   -- might change this in future
    }
}
