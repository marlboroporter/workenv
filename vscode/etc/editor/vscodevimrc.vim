"Vscode key mapping in vim way 
" both vim and nvim rc can be set up from vscode vim ui preference > settings > extension > vim
" we currently use this to start from small
" vscode only read mapping from vimrc anyway
" some vscode action related setting need to be set from UI or settings.json in vscode natively
let mapleader = " "
inoremap jj <esc>
inoremap kk <esc>

"
" read/edit this file
nmap <leader>ec :e ~/.e/vscode/etc/editor/vscodevimrc.vim
nmap <leader>ek :e ~/.e/vscode/etc/editor/keybindings.json
nmap <leader>es :e ~/.e/vscode/etc/editor/settings.json
nmap <leader>er :e ~/.e/vscode/README.md

"" 
"" cmd + shift + e   ---> switch between editor to explorer 
"" hjkl ---> move around explorer (NERDTree) 
""

"" hjkl moving in popup list ( see keymappings.json)
""


""
"" cmd + shift + p   ---> command pallete 
""


" somehow this still not working
" https://karlredman.github.io/Articles/dev.to/vscode1999/
" switch tabs (same as gt & gT)
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
"
" (bonus) move tabls right or left
map <C-h> :execute "tabmove" tabpagenr() - 2 <CR>
map <C-l> :execute "tabmove" tabpagenr() + 1 <CR>


" --> Markdown
" Shft+Cmd+V to preview, Shift+Cmd+P also can pick open preview, but different

