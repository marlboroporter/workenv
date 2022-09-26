function! myspacevim#before() abort

    let g:neomake_c_enabled_makers = ['clang']
    " you can defined mappings in bootstrap function
    " for example, use kj to exit insert mode.
    inoremap kj <Esc>  " sample before to be cancelled in after
    inoremap kk <Esc>
    inoremap jj <Esc>
    set mouse=
    "set	timeoutlen= 200 1000
    set	timeoutlen=50 " this failes escape map, guess too fast
    set	timeoutlen=200 " this seems to fast enough for space menu and slow enough for escape key mapping  
    let g:mapleader = ';'

    " this override the spacevim default space f t menu
    call SpaceVim#custom#SPC('nnoremap', ['f', 't'], 'echom "hello world"', 'test custom SPC', 1)    	

    "let g:spacevim_vimcompatible =  1
    
    "for custom plugin
    "" nmap <C-p> <Plug>MarkdownPreviewToggle
    set belloff=all

endfunction

function! myspacevim#after() abort
    " you can remove key binding in bootstrap_after function
    iunmap kj
    "
    " this try to  override the spacevim default space f t menu but fail
    "call SpaceVim#custom#SPC('nnoremap', ['f', 't'], 'echom "hello world"', 'test custom SPC', 1)    	

endfunction
