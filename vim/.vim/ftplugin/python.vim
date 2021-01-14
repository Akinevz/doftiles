let g:jupyter_mapkeys = 0
" Run current file
nnoremap <buffer> <silent> <localleader>r :JupyterRunFile<CR>
nnoremap <buffer> <silent> <localleader>I :JupyterConnect<CR>

" Change to directory of current file
nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap <buffer> <silent> <localleader>e :JupyterSendCell<CR>
nnoremap <buffer> <silent> <localleader>x :JupyterSendRange<CR>
vmap	 <buffer> <silent> <localleader>x :JupyterSendRange<CR>
nmap     <buffer> <silent> <localleader>E <Plug>JupyterRunTextObj
vmap     <buffer> <silent> <localleader>X <Plug>JupyterRunVisual

nnoremap <buffer> <silent> <localleader>U :JupyterUpdateShell<CR>

" Debugging maps
nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>
