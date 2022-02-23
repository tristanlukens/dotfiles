"             _
"  _ ____   _(_)_ __ ___
" | '_ \ \ / / | '_ ` _ \
" | | | \ V /| | | | | | |
" |_| |_|\_/ |_|_| |_| |_|
" 

" nvim keybindings config by Tristan Lukens
" tristanlukens.github.io

" -- GENERAL REMAPS --
let mapleader = " "

nnoremap <silent> <Leader>w :write<CR>
noremap <silent> <C-k> :noh<CR>

nnoremap <silent> <Leader>r :e<CR>

nnoremap <silent> <M-up> :resize -1<CR>
nnoremap <silent> <M-down> :resize +1<CR>
nnoremap <silent> <M-left> <C-w><
nnoremap <silent> <M-right> <C-w>>

" -- PLUGIN MAPPINGS --
" NERDTree
nnoremap <silent> <Leader>` :NERDTreeToggle<CR>

" FZF
noremap <silent> <C-p> :Files<CR>

" CoC
" the functions in here are needed for the keybindings to (correctly) execute
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <leader>rn <Plug>(coc-rename)

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

nnoremap <silent><nowait> <Leader>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <Leader>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <Leader>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <Leader>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <Leader>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <Leader>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <Leader>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <Leader>p  :<C-u>CocListResume<CR>
