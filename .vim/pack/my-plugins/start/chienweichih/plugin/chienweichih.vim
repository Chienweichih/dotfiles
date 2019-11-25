


""" General Settings

" https://github.com/amix/vimrc (TODO: maybe I don't need that much)
packadd the_ultimate_vimrc

" https://github.com/justinmk/vim-syntax-extra
packadd syntax_highlighting_extras

" https://github.com/hdima/python-syntax
packadd python_syntax

" makes the % command work better
packadd matchit

" Format the status line
set statusline=

" Display line numbers
set number

" Highlight current line
set cursorline

" Change font
set guifont=Courier_New:h12:b

" stop Vim from creating the backup file
set noundofile



""" taglist Setting [http://vim-taglist.sourceforge.net]

filetype on

" ctags
set tags=./tags,./TAGS,tags;~,TAGS;~

" Toggle the taglist window
nnoremap <silent> <F9> :TlistToggle<CR>

" display the tags defined only in the current buffer
let Tlist_Show_One_File=1

" exit Vim if only the taglist window is currently opened
let Tlist_Exit_OnlyWindow=1

set updatetime=100

packadd taglist



""" GNU GLOBAL setting [https://www.gnu.org/software/global]

let Gtags_Auto_Map = 1
let Gtags_Auto_Update = 1
let Gtags_No_Auto_Jump = 1

packadd gtags



""" papercolor-theme setting [https://github.com/NLKNguyen/papercolor-theme]

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'override' : {
  \         'color00' : ['#000000', '0']
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

set background=dark

packadd papercolor

try
    colorscheme PaperColor
catch
endtry

