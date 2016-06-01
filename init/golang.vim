autocmd FileType go set noexpandtab
autocmd FileType go set nolist

let g:go_fmt_command = "goimports"
au Filetype go nnoremap <leader>gd :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>gr :GoRun %<CR>
au FileType go nmap <Leader>gc <Plug>(go-coverage)

au FileType go nmap <Leader>gi <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>ge <Plug>(go-rename)

au Filetype go nnoremap <leader>gg :GoDeclsDir<CR>

let g:syntastic_go_checkers = "gofmt"

" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_interfaces = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1
