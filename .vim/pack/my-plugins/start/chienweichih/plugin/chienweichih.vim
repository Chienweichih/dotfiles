


""" General Settings

" https://github.com/amix/vimrc
packadd the_ultimate_vimrc

" https://github.com/justinmk/vim-syntax-extra
packadd syntax_highlighting_extras

" https://github.com/hdima/python-syntax
packadd python_syntax

" http://cscope.sourceforge.net/cscope_vim_tutorial.html
packadd cscope_maps

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
packadd taglist

filetype on

" Toggle the taglist window
nnoremap <silent> <F8> :TlistToggle<CR>

" display the tags defined only in the current buffer
let Tlist_Show_One_File=1

" exit Vim if only the taglist window is currently opened
let Tlist_Exit_OnlyWindow=1

set updatetime=100



""" SrcExpl Setting [https://github.com/wesleyche/SrcExpl]
packadd srcexpl

" ctags
set tags=./tags,./TAGS,tags;~,TAGS;~

" // The switch of the Source Explorer 
nmap <F9> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins except
" // itself are using buffers. And you need add their buffer names into below list
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__"
    \ ]

" // The color schemes used by Source Explorer. There are five color schemes
" // supported for now - Red, Cyan, Green, Yellow and Magenta. Source Explorer
" // will pick up one of them randomly when initialization.
let g:SrcExpl_colorSchemeList = [
        \ "Red",
        \ "Cyan",
        \ "Green",
        \ "Yellow",
        \ "Magenta"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Workaround for Vim bug @https://goo.gl/TLPK4K as any plugins using autocmd for
" // BufReadPre might have conflicts with Source Explorer. e.g. YCM, Syntastic etc.
let g:SrcExpl_nestedAutoCmd = 1

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F3>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F3>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F4>" 



""" papercolor-theme setting [https://github.com/NLKNguyen/papercolor-theme]
packadd papercolor

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

