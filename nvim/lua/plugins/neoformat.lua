--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim neoformat plugin config by Tristan Lukens
-- tristanlukens.github.io

-- I think this is all the languages it supports

vim.cmd [[
    autocmd BufWritePre *.*, Neoformat
]]

