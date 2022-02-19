--             _
--  _ ____   _(_)_ __ ___
-- | '_ \ \ / / | '_ ` _ \
-- | | | \ V /| | | | | | |
-- |_| |_|\_/ |_|_| |_| |_|
--

-- nvim lsp config by Tristan Lukens
-- tristanlukens.github.io

-- this is the only place where keybindings are set outside of the keybindings.lua

-- snippets from https://github.com/neovim/nvim-lspconfig/tree/HEAD/README.md

local opts = { noremap=true, silent=true }

local on_attach = function(bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local servers = { "tsserver", "sumneko_lua", "svelte", "tailwindcss", "gopls", "html", "cssls", "solargraph" , "rust_analyzer" }
  for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
      on_attach = on_attach,
      flags = {
        -- This will be the default in neovim 0.7+
        debounce_text_changes = 150,
      }
  }
end

-- SERVERS --
-- typescript: npm i -g typescript typescript-language-server
-- lua: brew install lua-language-server
-- svelte: npm install -g svelte-language-server
-- tailwindcss: npm install -g @tailwindcss/language-server
-- go: brew install gopls
-- html: npm i -g vscode-langservers-extracted
-- css: npm i -g vscode-langservers-extracted
-- ruby: gem install --user-install solargraph
-- rust: rustup component add rust-src
