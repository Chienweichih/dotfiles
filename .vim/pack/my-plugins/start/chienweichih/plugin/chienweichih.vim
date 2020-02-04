scriptencoding utf-8


"
" cmdline
"
set history=5000


"
" filetype
"
filetype plugin indent on


"
" options
"
set nocompatible
set diffopt=filler,vertical
set fileencodings=utf-8,cp950
set fileformats=unix,dos,mac
set foldlevelstart=99
set guifont=Courier_New:h12:b
set hidden
set hlsearch
set incsearch
set nojoinspaces
set laststatus=2
if has('mouse')
  set mouse=nv
endif
set ruler
set showcmd
set smartcase
set wildmenu
set wildmode=full


"
" pattern
"
set ignorecase


"
" various
"
set number


"
" syntax
"
syntax enable

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

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
packadd lightline.vim
set noshowmode

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
set tabstop=4 softtabstop=4 shiftwidth=4
set autoindent
set expandtab
set smarttab
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


"
" makes the % command work better
"
runtime macros/matchit.vim


"
" netrw.vim
"
let g:netrw_banner=0


"
" taglist
"
filetype on

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

packadd taglist

set tags=./tags,./TAGS,tags;~,TAGS;~
set updatetime=100

nnoremap <silent> <F9> :TlistToggle<CR>


"
" GNU GLOBAL
"
let Gtags_Auto_Map = 1
let Gtags_Auto_Update = 1
let Gtags_No_Auto_Jump = 1

packadd gtags


"
" Tim Pope's plugins
"
packadd vim-abolish
packadd vim-fugitive
packadd vim-surround
