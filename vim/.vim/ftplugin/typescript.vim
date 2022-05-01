"let g:ale_fixers = ['eslint', 'tslint']
"setlocal splitbelow
"let g:ale_fix_on_save = 1
"let g:ale_set_balloons = 1
"let g:ale_virtualtext_cursor = 1
"let g:ale_cursor_detail = 1

imap <C-Space> <NUL>

setlocal indentkeys+=0.
"let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'

imap <leader><NUL> <Plug>(ale_complete)
nmap <leader><Space> <Plug>(lsp-hover)
nmap <C-]> <Plug>(ale_go_to_definition)
nmap <leader>d <Plug>(ale_documentation)
nmap <leader>D <Plug>(ale_implementation)
nmap <leader>r <Plug>(lsp-rename)
vmap <leader><CR> <Plug>(lsp-document-range-format)
nmap <leader>F <Plug>(lsp-document-format)

nmap <leader>n <Plug>(ale_next_wrap)
nmap <leader>p <Plug>(ale_previous_wrap)
nmap <leader>f <Plug>(ale_find_references)
nmap <leader><CR> <Plug>(ale_fix)

nnoremap O o
nnoremap o O
