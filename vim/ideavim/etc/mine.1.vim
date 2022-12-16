" https://gist.github.com/zchee/9c78f91cc5ad771c1f5d
" ===============================================
" https://github.com/liuchengxu/dotfiles/blob/master/ideavimrc
let mapleader=' '

set visualbell
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmode

set number
" set relativenumber

set scrolloff=3
" scrolloff?
set so=5

set history=100000
set clipboard=unnamed

" clear the highlighted search result
nnoremap <Leader>sc :nohlsearch<CR>

nnoremap <Leader>fs :w<CR>

nnoremap <C-C> <Esc>

nnoremap <Leader>? :action GotoAction<CR>
nnoremap gd :action GotoDeclaration<CR>
nnoremap gi :action GotoImplementation<CR>

" project search
nnoremap <Leader>ps :action SearchEverywhere<CR>
nnoremap <Leader>pf :action GotoFile<CR>

nnoremap fu :action FindUsages<CR>
nnoremap <Leade>fu :action FindUsages<CR>

" Quit normal mode
nnoremap <Leader>q  :q<CR>
nnoremap <Leader>Q  :qa!<CR>

" Move half page faster
nnoremap <Leader>d  <C-d>
nnoremap <Leader>u  <C-u>

" Insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>

" Quit insert mode
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>

" Quit visual mode
vnoremap v <Esc>

" Move to the start of line
nnoremap H ^

" Move to the end of line
nnoremap L $

" Redo
nnoremap U <C-r>

" Yank to the end of line
nnoremap Y y$

" quit ==> close current window
nnoremap <Leader>q <C-W>w

" Window operation
nnoremap <Leader>ww <C-W>w
nnoremap <Leader>wd <C-W>c
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>ws <C-W>s
nnoremap <Leader>w- <C-W>s
nnoremap <Leader>wv <C-W>v
nnoremap <Leader>w\| <C-W>v

" Tab operation
nnoremap tn gt
nnoremap tp gT

" ==================================================
" Show all the provided actions via `:actionlist`
" ==================================================

" built in search looks better
nnoremap / :action Find<CR>
" but preserve ideavim search
nnoremap <Leader>/ /

nnoremap <Leader>;; :action CommentByLineComment<CR>

nnoremap <Leader>bb :action ToggleLineBreakpoint<CR>
nnoremap <Leader>br :action ViewBreakpoints<CR>

nnoremap <Leader>cv :action ChangeView<CR>

nnoremap <Leader>cd :action ChooseDebugConfiguration<CR>

nnoremap ga :action GotoAction<CR>
nnoremap gc :action GotoClass<CR>
nnoremap gd :action GotoDeclaration<CR>
nnoremap gf :action GotoFile<CR>
nnoremap gi :action GotoImplementation<CR>
nnoremap gs :action GotoSymbol<CR>

nnoremap <Leader>ga :action GotoAction<CR>
nnoremap <Leader>gc :action GotoClass<CR>
nnoremap <Leader>gd :action GotoDeclaration<CR>
nnoremap <Leader>gf :action GotoFile<CR>
nnoremap <Leader>gi :action GotoImplementation<CR>
nnoremap <Leader>gs :action GotoSymbol<CR>
nnoremap <Leader>gt :action GotoTest<CR>

nnoremap <Leader>fp :action ShowFilePath<CR>

nnoremap <Leader>ic :action InspectCode<CR>

nnoremap <Leader>mv :action ActivateMavenProjectsToolWindow<CR>

nnoremap <Leader>oi :action OptimizeImports<CR>

nnoremap <Leader>pm :action ShowPopupMenu<CR>

nnoremap <Leader>rc :action RunToCursor<CR>
nnoremap <Leader>rC :action ChooseRunConfiguration<CR>
nnoremap <Leader>re :action RenameElement<CR>
nnoremap <Leader>rf :action RenameFile<CR>

nnoremap <Leader>rr :action Rerun<CR>

nnoremap <Leader>se :action SearchEverywhere<CR>
nnoremap <Leader>su :action ShowUsages<CR>
nnoremap <Leader>tc :action CloseActiveTab<CR>
nnoremap <Leader>si :action StepInto<CR>

nnoremap <Leader>tb :action ToggleLineBreakpoint<CR>
"
nnoremap <Leader>ne :action GotoNextError<CR>

nnoremap <Leader>tl Vy<CR>:action ActivateTerminalToolWindow<CR>
vnoremap <Leader>tl y<CR>:action ActivateTerminalToolWindow<CR>

" git
map <leader>aa <Action>(Annotate)
map <leader>hh <Action>(Vcs.ShowTabbedFileHistory)

" e
map <leader>er :vsplit ~/.e/vim/ideavim/README.md
map <leader>ec :vsplit ~/.ideavimrc


" ============Plugins===================================
" based on recommendation of 
" https://github.com/JetBrains/ideavim
"
" Idea specific settings ------------------
set ideajoin
set ideastatusicon=gray
set idearefactormode=keep


""" Plugins  --------------------------------
set surround
set multiple-cursors
set commentary
set argtextobj
set easymotion
set textobj-entire
set ReplaceWithRegister
set nerdtree

" Pluting setting   

let g:argtextobj_pairs="[:],(:),<:>"

"Inside NerdTree window
"   expand below or go editor if leaf node ( enter on leaf node also go editor), also toggle exapnd/shrink 
let g:NERDTreeMapActivateNode='l'
"   go up tree node
let g:NERDTreeMapJumpParent='h'
"   quit tree when in tree; default setting of Nerdtree
"let g:NERDTreeQuit='q'
"   change focus to tree from editor
"nmap <leader>nn :NERDTreeFocus<CR>
"   go editor from tree to editor in any node; l and enter also work for leaf
"    ESC or mapped CAP LOCK key
" Quit tree : 'q' ; then focus not useful
" Open tree in case quited before"
nmap <leader>nn :NERDTree<CR>

" easymotion
"map <leader>f <Plug>(easymotion-s)
"map <leader>e <Plug>(easymotion-f)

