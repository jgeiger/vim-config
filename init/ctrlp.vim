" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = '<leader>f'

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
" https://github.com/kien/ctrlp.vim/issues/174
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:20'

nnoremap <silent> ,f :CtrlPCurWD<CR>
nnoremap <silent> ,F :CtrlPClearAllCaches<CR>:CtrlPCurWD<CR>

" Additional mapping for buffer search
nnoremap <silent> ,bb :CtrlPBuffer<cr>
map <D-e> :FufBuffer<CR>

" Map most recently used
nnoremap <silent> <C-p> :CtrlPMRU<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map ,jm :CtrlP app/models<CR>
map ,jc :CtrlP app/controllers<CR>
map ,jv :CtrlP app/views<CR>
map ,jh :CtrlP app/helpers<CR>
map ,jl :CtrlP lib<CR>
map ,jp :CtrlP public<CR>
map ,js :CtrlP spec<CR>
map ,jf :CtrlP fast_spec<CR>
map ,jd :CtrlP db<CR>
map ,jC :CtrlP config<CR>
map ,jV :CtrlP vendor<CR>
map ,jF :CtrlP factories<CR>
map ,jT :CtrlP test<CR>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

" Mappings inherited from FuzzyFinder
map ,<C-N> :CtrlPCurWD<CR>
map ,n :CtrlPCurWD<CR>
map <D-N> :CtrlPCurWD<CR>
