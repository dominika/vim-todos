if exists("b:current_syntax")
  finish
endif

syn case ignore
syn region todoSubTitle start=/^\s*\[ / end=/\]/
syn region todoTitle start=/^\[ / end=/\]/
exe 'syn region todoNotDone start=/^\s*'.g:TODOStates[0].' / end=/\n/'
exe 'syn region todoDone start=/^\s*'.g:TODOStates[-1].' / end=/\n/'
if len(g:TODOStates) > 2
  exe 'syn region todoPending start=/^\s*\'.g:TODOStates[1].' / end=/\n/'
endif

highlight link todoNotDone Statement
highlight link todoDone Directory
highlight link todoPending Special
highlight link todoTitle Title
highlight link todoSubTitle Title

let b:current_syntax = "todo"
