autocmd FileType go set noexpandtab
autocmd FileType go set nolist

let g:go_fmt_command = "goimports"
au Filetype go nnoremap <leader>gd :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>gr :GoRun %<CR>
au FileType go nmap <Leader>gc <Plug>(go-coverage)

au FileType go nmap <Leader>gi <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>ge <Plug>(go-rename)
