autocmd FileType go set noexpandtab
autocmd FileType go set nolist

let g:go_fmt_command = "goimports"
au Filetype go nnoremap <leader>d :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>r :GoRun %<CR>
