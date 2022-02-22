"             _
"  _ ____   _(_)_ __ ___
" | '_ \ \ / / | '_ ` _ \
" | | | \ V /| | | | | | |
" |_| |_|\_/ |_|_| |_| |_|
"

" nvim coc plugin config by Tristan Lukens
" tristanlukens.github.io

" -- SERVERS --
" coc-svelte was installed with vim-plug, since the coc's version's dependencies are outdated

" tailwindcss doesn't work at the time of writing (20 feb)
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-emmet',
  \ 'coc-tailwindcss',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-go'
  \ ]

command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=0 OR   :call CocActionAsync('runCommand', 'editor.action.organizeImport')

autocmd CursorHold * silent call CocActionAsync('highlight')
