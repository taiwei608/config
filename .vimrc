"morris
set tabstop=4 
set shiftwidth=4
set hlsearch
set cursorline

"set foldmethod=syntax

"set cursorcolumn
colorschem elflord

"set winaltkeys=no

nmap <C-m> :tabn<CR>
nmap <C-n> :tabp<CR>

nmap <tab> v>
nmap <s-tab> v<

map <f9> :Tlist<CR>

"tab
"map <C-Right> :tabnext<CR>
"map <C-Left> :tabprevious<CR>
"nmap <C-t> :tabnew<cr>
"nmap <C-w> :tabclose<CR>
set tabpagemax=1000

"for NERDTree
nnoremap <silent> <F5> :NERDTree<CR>


"for pathogen.vim
call pathogen#runtime_append_all_bundles()

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


