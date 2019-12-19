scriptencoding utf-8

"
" General
"
set history=5000
set nocompatible
set nojoinspaces
if has('mouse')
  set mouse=nv
endif

filetype plugin indent on


"
" VIM user interface
"
set wildmenu
set ruler
set hidden
set ignorecase
set smartcase
set hlsearch
set incsearch
set number
set laststatus=2
set showcmd
set foldlevelstart=99
set diffopt=filler,vertical


"
" Colors and Fonts
"
syntax enable

" papercolor-theme [https://github.com/NLKNguyen/papercolor-theme]
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'override' : {
  \         'color00' : ['#000000', '0'],
  \         'linenumber_bg' : ['#000000', '0']
  \       }
  \     }
  \   },
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

packadd papercolor-theme

set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

set guifont=Courier_New:h12:b
set fileencodings=utf-8,cp950
set fileformats=unix,dos,mac

packadd vim-syntax-extra
packadd python-syntax


"
" Files, backups and undo
"
set noundofile
set nobackup
set noswapfile


"
" Text, tab and indent related
"
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent


"
" Editing mappings
"
cnoremap <expr> %%  getcmdtype() == ':' ? fnameescape(expand('%:h')).'/' : '%%'

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap & :&&<Enter>
xnoremap & :&&<Enter>

xnoremap . :normal .<CR>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo '@'.getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

packadd vim-visual-star-search

nnoremap <a-h> <c-w>h
nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
nnoremap <a-l> <c-w>l
vnoremap <a-h> <c-\><c-n><c-w>h
vnoremap <a-j> <c-\><c-n><c-w>j
vnoremap <a-k> <c-\><c-n><c-w>k
vnoremap <a-l> <c-\><c-n><c-w>l
inoremap <a-h> <c-\><c-n><c-w>h
inoremap <a-j> <c-\><c-n><c-w>j
inoremap <a-k> <c-\><c-n><c-w>k
inoremap <a-l> <c-\><c-n><c-w>l
cnoremap <a-h> <c-\><c-n><c-w>h
cnoremap <a-j> <c-\><c-n><c-w>j
cnoremap <a-k> <c-\><c-n><c-w>k
cnoremap <a-l> <c-\><c-n><c-w>l


"
" makes the % command work better
"
runtime macros/matchit.vim


"
" netrw.vim
"
let g:netrw_banner=0


"
" taglist [http://vim-taglist.sourceforge.net]
"
filetype on

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

packadd taglist

set tags=./tags,./TAGS,tags;~,TAGS;~
set updatetime=100

nnoremap <silent> <F9> :TlistToggle<CR>


"
" GNU GLOBAL [https://www.gnu.org/software/global]
"
let Gtags_Auto_Map = 1
let Gtags_Auto_Update = 1
let Gtags_No_Auto_Jump = 1

packadd gtags


"
" Tim Pope plugins
"
packadd vim-abolish
packadd vim-fugitive
packadd vim-surround
