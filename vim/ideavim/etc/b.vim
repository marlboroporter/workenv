" https://github.com/ches/dotfiles/blob/master/.ideavimrc
" TODO: Try to directly include an extracted file I use for Vim config. Have
" to find out if IntelliJ pukes on anything it doesn't support.

" See: https://github.com/JetBrains/ideavim/blob/master/doc/set-commands.md
set history=500
set number
set hlsearch
set ideajoin
set ignorecase
set smartcase
set gdefault
set scrolloff=3
set sidescrolloff=4

"-------------------------------------------------------------------------------
" IdeaVim Plugin Emulations
"-------------------------------------------------------------------------------
set surround

"-------------------------------------------------------------------------------
" Mappings
"-------------------------------------------------------------------------------

" Toggle search hilighting
map <silent> <F11> :set invhlsearch<CR>
imap <silent> <F11> <C-o>:set invhlsearch<CR>
vmap <silent> <F11> :<C-u>set invhlsearch<CR>gv

" It's a fast-moving world these days -- does your scrolling keep up?
noremap <C-y> 2<C-y>
noremap <C-e> 2<C-e>

" Yank from cursor to end of line, to be consistent with C and D.
nnoremap Y y$

" Easy window split navigation {{{
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" Keep a block highlighted while shifting
vnoremap < <gv
vnoremap > >gv

" New line conveniences
" nmap <M-CR> o
" nmap <M-S-CR> O
imap <M-CR> <Esc>o
imap <M-S-CR> <Esc>A;<CR>

" Until this is accepted: https://github.com/JetBrains/ideavim/pull/97
nnoremap zC :action CollapseRegionRecursively<CR>
nnoremap zO :action ExpandRegionRecursively<CR>

" IntelliJ-specific Actions
" -------------------------
"
" Run :actionlist to get a list of these. mapleader isn't supported yet.
" Look for a dismiss action for Ctrl-[

nmap <Space><CR>  :action GotoAction<CR>
nmap <Space>o     :action GotoFile<CR>
nmap <Space><C-o> :action RecentFiles<CR>
nmap <Space>f     :action FileStructurePopup<CR>
nmap <Space><C-f> :action GotoSymbol<CR>
nmap <Space>[     :action ActivateProjectToolWindow<CR>
nmap <Space>]     :action ActivateStructureToolWindow<CR>
nmap <Space>k     :action DashLauncherAction<CR>
nmap <Space>w     :action SaveDocument<CR>
" I prefer Git.Menu, but the action seems to have gotten broken :-(
nmap <Space>g :action Git.Menu<CR>
nmap <Space>v :action Vcs.QuickListPopupAction<CR>

" More like quick definition -- shows source in pop-up
nnoremap gD :action QuickImplementations<CR>
nnoremap gr :action Refactorings.QuickListPopupAction<CR>

" unimpaired.vim mappings
" TODO: something for toggling IntelliJ's breadcrumbs
nmap con :set number!<CR>
nmap col :action EditorToggleShowWhitespaces<CR>

" Navigate by method
" TODO: seems broken, even standard shortcuts don't work with IdeaVim active
nmap [m :action EditorLookupUp<CR>
nmap ]m :action EditorLookupDown<CR>

nmap [c :action VcsShowPrevChangeMarker<CR>
nmap ]c :action VcsShowNextChangeMarker<CR>

nmap \t :action Scala.TypeInfo<CR>
