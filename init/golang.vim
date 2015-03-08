autocmd FileType go set noexpandtab
autocmd FileType go set nolist

let g:go_fmt_command = "goimports"
au Filetype go nnoremap <leader>d :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>r :GoRun %<CR>
au FileType go nmap <Leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>e <Plug>(go-rename)
