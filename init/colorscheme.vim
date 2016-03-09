set t_Co=256
set background=dark
silent! colorscheme Tomorrow-Night
silent! let g:airline_theme='tomorrow'
set term=xterm-256color

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set term=screen-256color
  endif
endif

" Feel free to override the colorscheme by adding a line to ~/.vimrc.local
" such as the following:
"
" colorscheme solarized
" let g:airline_theme='solarized'
