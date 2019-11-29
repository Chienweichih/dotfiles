"
" General
"
set history=200
set nocompatible

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

packadd papercolor

set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

set guifont=Courier_New:h12:b
set ffs=unix,dos,mac

packadd syntax_highlighting_extras
packadd python_syntax


"
" Files, backups and undo
"
set noundofile
set nobackup


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
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>


"
" makes the % command work better
"
runtime macros/matchit.vim


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

