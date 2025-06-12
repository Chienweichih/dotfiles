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
" yank to system clipboard
"
if has('mac')
  let s:clip = 'pbcopy'
elseif system('uname -r') =~? "microsoft"
  let s:clip = 'clip.exe'
else
  let s:clip = 'xclip -selection clipboard'
endif
if executable(s:clip)
  augroup YankClipboard
    autocmd!
    autocmd TextYankPost * call system(s:clip, join(v:event.regcontents, "\<CR>"))
  augroup END
end


"
" options
"
set autoread
if &compatible
  set nocompatible
endif
if &diff
  set diffopt=filler,vertical,context:1000000
  set noreadonly
endif
set fileencodings=utf-8,cp950
set fileformats=unix,dos,mac
set foldlevelstart=99
set hidden
set hlsearch
set incsearch
set nojoinspaces
set laststatus=2
if has('mouse')
  set mouse=nv
endif
set ruler
set shortmess-=S
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
" syntax
"
syntax enable

if &t_Co == 256
    highlight LineNr     ctermfg=145    guifg=Gray
    highlight Search     ctermbg=227    guibg=Yellow
    highlight DiffAdd                   ctermfg=black cterm=bold guibg=green      guifg=black
    highlight DiffText   ctermbg=yellow ctermfg=red   cterm=bold guibg=yellow     guifg=red
    highlight DiffChange ctermbg=none   ctermfg=none  cterm=bold guibg=white      guifg=black
    highlight DiffDelete                                         guibg=lightblue  guifg=lightblue
endif
set background=light

let g:lightline = {
      \ 'colorscheme': 'ayu_light',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
set noshowmode

" arm-syntax-vim
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

" python-syntax
let g:python_highlight_all = 1


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

set tags=./tags,tags
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
" nohlsearch
"
nnoremap <silent> <leader>l :<C-u>nohlsearch<CR>


"
" tmux
"
let  g:tmux_navigator_no_wrap = 1


"
" minpac
"
function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#add('junegunn/fzf')
  call minpac#add('yegappan/taglist', {'rev': 'v4.6'})
  call minpac#add('mhinz/vim-grepper')
  call minpac#add('christoomey/vim-conflicted')
  call minpac#add('itchyny/lightline.vim')
  call minpac#add('justinmk/vim-syntax-extra')
  call minpac#add('ARM9/arm-syntax-vim')
  call minpac#add('bfrg/vim-c-cpp-modern')
  call minpac#add('vim-python/python-syntax')
  call minpac#add('bronson/vim-visual-star-search')
  call minpac#add('junegunn/gv.vim')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-vinegar')
  call minpac#add('christoomey/vim-tmux-navigator')
endfunction

command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
command! PackUpdateQuit call PackInit() | call minpac#update('', {'do': 'qall'})
