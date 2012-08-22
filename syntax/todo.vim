if exists("b:current_syntax")
  finish
endif

setlocal background=light

hi todoTitle guibg=#343332 guifg=#c6c4c4
hi todoDone guibg=#d5f0c8 guifg=#799244
hi todoPending guibg=#c8c8f7 guifg=#0d3ac9 gui=bold
hi todoNotDone guibg=#f0a0a6 guifg=#a7122b

syn case ignore
syn region todoTitle start=/^\[ / end=/\]/
exe 'syn region todoNotDone start=/^\s*'.g:TODOStates[0].' / end=/\n/'
exe 'syn region todoDone start=/^\s*'.g:TODOStates[-1].' / end=/\n/'
if len(g:TODOStates) > 2
  exe 'syn region todoPending start=/^\s*\'.g:TODOStates[1].' / end=/\n/'
endif

highlight link todoNotDone todoNotDone
highlight link todoDone todoDone
highlight link todoPending todoPending
highlight link todoTitle todoTitle

let b:current_syntax = "todo"
