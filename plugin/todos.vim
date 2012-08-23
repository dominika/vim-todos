" todos.vim
" Author:   Dominika Stempniewicz

if exists('g:loaded_vimtodos')
  finish
endif
let g:loaded_vimtodos= 1

let g:TODOStates=['-','*','+']

function! TODOMarkAs(direction)
  let col_save = col('.')
  let reg_save = @z
  normal! ^"zyl
  let pos = index(g:TODOStates, @z)
  let @z = reg_save

  if pos < 0
    return
  endif

  if a:direction == 'up'
    let pos = (pos+1) == len(g:TODOStates) ? pos : pos+1
  else
    let pos = (pos-1) < 0 ? pos : pos-1
  endif

  exe "normal! r".g:TODOStates[pos].col_save."|"
endfunction
