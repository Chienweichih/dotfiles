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
" options
"
set autoread
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
set noshowmode


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
" makes the % command work better
"
runtime macros/matchit.vim


"
" netrw.vim
"
let g:netrw_banner=0


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

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

let g:grepper       = {}
let g:grepper.tools = ['rg', 'ag', 'ack', 'grep', 'findstr', 'pt', 'git']

nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>


"
" vim-mergetool
"
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

nmap <leader>mt <plug>(MergetoolToggle)


"
" minpac
"
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('junegunn/fzf')
call minpac#add('yegappan/taglist')
call minpac#add('mhinz/vim-grepper')
call minpac#add('samoshkin/vim-mergetool')
call minpac#add('NLKNguyen/papercolor-theme')
call minpac#add('itchyny/lightline.vim')
call minpac#add('justinmk/vim-syntax-extra')
call minpac#add('hdima/python-syntax')
call minpac#add('nelstrom/vim-visual-star-search')
call minpac#add('tpope/vim-fugitive')

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
