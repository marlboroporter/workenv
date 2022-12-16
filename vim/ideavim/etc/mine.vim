" https://gist.github.com/zchee/9c78f91cc5ad771c1f5d
" ===============================================
" https://github.com/liuchengxu/dotfiles/blob/master/ideavimrc

 
" ------ Leader ------ "

let mapleader=' '
 
" ------ Esc ------ "

inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>

" ------ intellij actions ------
" :actionlist to show actions


" ------ search ------ "

" built in search looks better
nnoremap / :action Find<CR>
" * while cusor on phrase to save typing

set hlsearch
" clear the highlighted search result
nnoremap <Leader>sc :nohlsearch<CR>
nnoremap <Leader>se :action SearchEverywhere<CR>
nnoremap <Leader>fu :action FindUsages<CR>

set incsearch

" ------ other set ------ "

set ignorecase
set smartcase
set showmode
set visualbell
set number
" set relativenumber
set scrolloff=3
" scrolloff?
set so=5
set history=100000
" 
set clipboard=unnamed

" ------ cursor movement ------ 

nnoremap <Leader>d  <C-d>  " half page down 
nnoremap <Leader>u  <C-u>


" ------ navigation  ------  
"
" ------  Window operation ------  
" <C-W>
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

" see NerdTree for more
"
" ------ terminal ------
nnoremap <Leader>tl Vy<CR>:action ActivateTerminalToolWindow<CR>
vnoremap <Leader>tl y<CR>:action ActivateTerminalToolWindow<CR>

" ------ tab  ------  
"nnoremap tn gt
"nnoremap tp gT


" ------ Symbol navigation ------  
nnoremap ga :action GotoAction<CR>
nnoremap gc :action GotoClass<CR>
nnoremap gd :action GotoDeclaration<CR>
nnoremap gf :action GotoFile<CR>
nnoremap gi :action GotoImplementation<CR>
nnoremap gs :action GotoSymbol<CR>
" Go back (forth)  
" Alt+Cmd+(<- ->) or Cmd+[/]         
" Ctrl+O is different

" ------ Refactor ------
"
noremap <Leader>re :action RenameElement<CR>
nnoremap <Leader>rf :action RenameFile<CR>
"
" ------ Debug
"
nnoremap <Leader>bb :action ToggleLineBreakpoint<CR>
nnoremap <Leader>br :action ViewBreakpoints<CR>
nnoremap <Leader>ic :action InspectCode<CR>
nnoremap <Leader>si :action StepInto<CR>
" error 
nnoremap <Leader>ne :action GotoNextError<CR>

"------ git
map <leader>aa <Action>(Annotate)
map <leader>hh <Action>(Vcs.ShowTabbedFileHistory)

" ------ edit config
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

" ------ argtextobj ------
"
let g:argtextobj_pairs="[:],(:),<:>"

"
" ------ NertTree ------
"
"Inside NerdTree window
" lower 
"   expand below or go editor if leaf node ( enter on leaf node also go editor), also toggle exapnd/shrink 
let g:NERDTreeMapActivateNode='l'
" higher
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

