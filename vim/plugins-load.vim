" PLUGINS ---------------------------------------------------------------- {{{

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

  Plug 'neoclide/coc.nvim', {'branch': 'master'}
  Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

call plug#end()

" }}}
