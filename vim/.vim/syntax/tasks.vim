if exists("b:current_syntax")
  finish
endif

"runtime! syntax/markdown.vim
let b:current_syntax = "tasks"

" Custom conceal
syntax match tasksCheckbox "\[\ \]" conceal cchar=
syntax match tasksCheckbox "\[+\]" conceal cchar=
syntax match tasksCheckbox "\[x\]" conceal cchar=
syntax match tasksCheckbox "^*" conceal cchar=
syntax match tasksCheckbox "^+" conceal cchar=
hi def link tasksCheckbox Todo
hi Conceal guibg=NONE ctermbg=NONE

setlocal cole=1
nmap gy Goyo
