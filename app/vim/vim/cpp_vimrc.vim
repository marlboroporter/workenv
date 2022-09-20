"
"------ Load Plugins -------------------------------------------------- {{{
"
"""  auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo  ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

  " https://github.com/dense-analysis/ale
  Plug 'dense-analysis/ale'

  " https://github.com/preservim/nerdtree
  Plug 'preservim/nerdtree'

" " https://github.com/godlygeek/tabular
  Plug 'godlygeek/tabular'

  " https://github.com/preservim/vim-markdown
  Plug 'preservim/vim-markdown'
  "
  " https://github.com/iamcco/markdown-preview.nvim  
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

  "
  " https://github.com/aperezdc/vim-template
  Plug 'aperezdc/vim-template'

  "https://github.com/puremourning/vimspector#quick-start
  Plug 'puremourning/vimspector'
 " Plug 'puremourning/vimspector' , {
 "     \ 'do': 'python3 install_gadget.py --enable-vscode-cpptools'
 "     \ }

call plug#end()

" }}}
"
" ------ Base Setting -------------------------------------------------- {{{

runtime rc/base-config.vim
runtime rc/base-set.vim
"
" }}}

"------ Config Plugins -------------------------------------------------- {{{
runtime rc/nerdtree-config.vim 
runtime rc/iamcco.markdown-preview.cfg.vim

" https://idie.ru/posts/vim-modern-cpp/
runtime rc/vimspector-config.vim
runtime rc/cpp-config.vim

" enable Man and K
runtime ftplugin/man.vim
set keywordprg=:Man



" }}}

"

