"             _
"  _ ____   _(_)_ __ ___
" | '_ \ \ / / | '_ ` _ \
" | | | \ V /| | | | | | |
" |_| |_|\_/ |_|_| |_| |_|
"

" nvim treesitter plugin config by Tristan Lukens
" tristanlukens.github.io

" copy-pasted from nvim-treesitter's readme then edited

lua << EOF

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "javascript", "ruby", "vim", "lua", "rust", "scss", "svelte", "c", "cpp", "markdown", "json", "jsonc", "yaml", "go", "gomod", "html", "bash", "dockerfile", "jsdoc", "make", "tsx", "regex", "vue" },

  sync_install = false,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

EOF
