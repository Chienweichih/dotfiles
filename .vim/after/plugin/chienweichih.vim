" Format the status line
set statusline=

" Display line numbers
set number

" Highlight current line
set cursorline

" Change font
set guifont=Courier_New:h12:b

" papercolor-theme setting
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

try
    colorscheme PaperColor
catch
endtry

set background=dark

" stop Vim from creating the backup file
set noundofile

" Taglist
filetype on

" ctags
set tags=./tags,./TAGS,tags;~,TAGS;~

" Open and close all the three plugins on the same time 
nmap <F8>  :TrinityToggleAll<CR> 

" Open and close the Source Explorer separately 
nmap <F9>  :TrinityToggleSourceExplorer<CR> 

" Open and close the Taglist separately 
nmap <F10> :TrinityToggleTagList<CR> 

" Open and close the NERD Tree separately 
nmap <F11> :TrinityToggleNERDTree<CR> 
