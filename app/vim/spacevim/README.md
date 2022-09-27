# Where installed 

* pluggins loaded to ==> ~/.cache/vimfiles
* spacevim "code" dir ==> ~/.vim -> ~/.SpaceVim 
* spacevim "user config" dir ==> ~/.SpaceVim.d 

```zsh
❯ tree .cache/vimfiles -L 4
.cache/vimfiles
└── repos
    └── github.com
        ├── Shougo
        │   ├── deol.nvim
        │   ├── deoplete-clangx
        │   ├── echodoc.vim
        │   ├── vimproc.vim
        │   └── vimshell.vim
        ├── SpaceVim
        │   └── vim-markdown
        ├── andrewradev
        │   └── splitjoin.vim
        ├── bbchung
        │   ├── Clamp
        │   └── clighter8
        ├── iamcco
        │   ├── markdown-preview.nvim
        │   └── mathjax-support-for-mkdp
        ├── joker1007
        │   └── vim-markdown-quote-syntax
        ├── lvht
        │   └── tagbar-markdown
        ├── neoclide
        │   └── vim-node-rpc
        ├── octol
        │   └── vim-cpp-enhanced-highlight
        ├── preservim
        │   └── vim-markdown
        └── puremourning
            └── vimspector

```


# leader
  - `SPC , gx` --> open link to browser 



# vimspector
  - enable c++ layer
  - enable debug layer with engine set to vimspector
  - add .vimspector.json to a c++ project top dir
  - First use trigger vimspace to install vscodetool

  - .vimspector.json https://cdmana.com/2022/01/202201071724156132.html   






