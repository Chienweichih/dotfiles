" vim: nowrap fdm=marker
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
" map
"
cnoremap <expr> %%  getcmdtype() == ':' ? fnameescape(expand('%:h')).'/' : '%%'

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap & :&&<Enter>
xnoremap & :&&<Enter>

function! Preserve(command)
  let l:save = winsaveview()
  execute a:command
  call winrestview(l:save)
endfunction

command! TrimWhitespace call Preserve("%s/\\s\\+$//e")
nmap _$ :TrimWhitespace<CR>

xnoremap . :normal .<CR>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo '@'.getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

let mapleader = ','


"
" options
"
set autoread
set nocompatible
if &diff
  set diffopt=filler,vertical,context:1000000
  set noro
endif
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
set nowrap

" Files, backups and undo
set noundofile
set nobackup
set noswapfile

" Text, tab and indent related
set tabstop=4 softtabstop=4 shiftwidth=4
set autoindent
set expandtab
set smarttab
set smartindent


"
" pattern
"
set ignorecase


"
" starting
"
if has('win32unix')
  let $TERM = "cygwin"
endif


"
" syntax
"
syntax enable

let g:PaperColor_Theme_Options = {
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

set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

let g:airline_theme='papercolor'
set noshowmode

" arm-syntax-vim
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7


"
" various
"
set number


"
" makes the % command work better
"
runtime macros/matchit.vim


"
" fzf
"
nnoremap <leader>f :<C-u>FZF<CR>


"
" taglist
"
filetype on

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

set tags=./tags,./TAGS,tags;~,TAGS;~
set updatetime=100

nnoremap <silent> <leader>t :TlistToggle<CR>


"
" vim-grepper
"
nnoremap <leader>g :Grepper<cr>

let g:grepper       = {}
let g:grepper.tools = ['rg', 'ag', 'ack', 'grep', 'findstr', 'pt', 'git']

nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>


"
" undotree
"
nnoremap <leader>u :UndotreeToggle<CR>


"
" minpac
"
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('junegunn/fzf')
call minpac#add('yegappan/taglist')
call minpac#add('mhinz/vim-grepper')
call minpac#add('mbbill/undotree')
call minpac#add('christoomey/vim-conflicted')
call minpac#add('NLKNguyen/papercolor-theme')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('justinmk/vim-syntax-extra')
call minpac#add('ARM9/arm-syntax-vim')
call minpac#add('mracos/mermaid.vim')
call minpac#add('nelstrom/vim-visual-star-search')
call minpac#add('junegunn/gv.vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
