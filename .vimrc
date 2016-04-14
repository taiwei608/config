"General
set tabstop=4 
set shiftwidth=4
set hlsearch
set cursorline
"set ai
"set foldmethod=syntax
"set winaltkeys=no
"set cursorcolumn

"Mouse
"set mouse=a

"Color
colorschem elflord

"file indent
filetype indent on

"line number
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
set number "set nonumber
""set relativenumber
nmap <C-L><C-L> :set invnumber<CR>

"current line
"hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
hi CursorLine cterm=NONE ctermbg=DarkBlue
"hi LineCr

"tab color
hi TabLineSel ctermfg=Black ctermbg=Green
hi TabLineFill ctermfg=Black ctermbg=DarkGreen

"Sound
set noerrorbells                                                                                                                             
set novisualbell

"Key Mapping
""inoremap ( ()<Esc>i
""inoremap " ""<Esc>i
""inoremap ' ''<Esc>i
""inoremap [ []<Esc>i
""inoremap {<CR> {<CR>}<Esc>ko


nmap <C-m> :tabn<CR>
nmap <C-n> :tabp<CR>
nmap <tab> v>
nmap <s-tab> v<

"tab
"map <C-Right> :tabnext<CR>
"map <C-Left> :tabprevious<CR>
"nmap <C-t> :tabnew<cr>
"nmap <C-w> :tabclose<CR>
set tabpagemax=1000

"NERDTree
nnoremap <silent> <F5> :NERDTreeToggle<CR>

"taglist
map <f9> :Tlist<CR>
let Tlist_WinWidth = 30
let Tlist_File_Fold_Auto_Close = 1

"Fuzzy Finder
map ff :CtrlP<cr>
map fb :FufBuffer<cr>
map ft :FufTag<cr>
map fd :FufDirWithFullCwd<cr>
map fg <esc>:call SearchWord()<cr>
map cn <esc>:cn<cr>
map cp <esc>:cp<cr>
map gc <esc>:ccl<cr>)

"AutoComplPop
highlight PmenuSel term=reverse ctermbg=white ctermfg=black

"Remember the line I was on
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"Vundle
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"My Bundles (When you update the list please execute :BundleInstall)
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'taglist.vim'
Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'kien/ctrlp.vim'
Bundle 'a.vim'
Bundle 'vim-scripts/AutoComplPop'
"Bundle 'octol/vim-cpp-enhanced-highlight'
