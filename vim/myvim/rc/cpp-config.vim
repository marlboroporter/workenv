" https://idie.ru/posts/vim-modern-cpp/
"
"" ----------------remove trailing whitespaces -------------------
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/
"au BufWinEnter * match ExtraWhitespace /\s\+$/
"au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"au InsertLeave * match ExtraWhitespace /\s\+$/
"au BufWinLeave * call clearmatches()
"
"" ----------------- Remove all trailing whitespaces --------------
"nnoremap <silent> <leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>"
"


" -------------------- cppman ----------------
" work around ::
function! s:JbzCppMan()
    let old_isk = &iskeyword
    setl iskeyword+=:
    let str = expand("<cword>")
    let &l:iskeyword = old_isk
    execute 'Man ' . str
endfunction
command! JbzCppMan :call s:JbzCppMan()

" bind key K
au FileType cpp nnoremap <buffer>K :JbzCppMan<CR>

