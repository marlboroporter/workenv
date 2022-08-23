" Plugin CONFIG --------------------------------------------------------- {{{
"
" https://github.com/dense-analysis/ale
"
" https://github.com/preservim/nerdtree
"
" https://github.com/godlygeek/tabular
"<<<markdown-preview
" https://github.com/iamcco/markdown-preview.nvim  
"nnoremap <silent> <C-p> :MarkdownPreviewToggle<CR>
"runtime iamcco.markdown-preview.cfg.vim
nmap <C-p> <Plug>MarkdownPreviewToggle
"/>>>
"
"<<<nerdtree    
nnoremap <silent> <Space> :NERDTreeToggle<CR>
" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
"/>>>

"coc-vim, coc-metal config/mapping 
runtime rc/coc-mapping.vim
runtime rc/coc-metal-mapping.vim
"
" }}}
