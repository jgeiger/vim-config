if executable('pt')
  let g:ackprg = 'pt --smart-case --column --nocolor --context=0'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

" Find current word in command mode
function! AgGrep()
  let command = "ack ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

function! AgVisual()
  normal gv"xy
  let command = "ack ".@x
  cexpr system(command)
  cw
endfunction
