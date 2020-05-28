"Vundle config
source ~/.vim/vundle.vim

"dracula theme and transparency
syntax on
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

"tab = 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

"alignment bars
set cursorcolumn
set cursorline
map <leader>c :set invcursorcolumn invcursorline<CR>

"hidden characters
:set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
:nmap <leader>s :set invlist<CR>

"search and replace the word under the cursor
:nnoremap <leader>r :%s/\<<C-r><C-w>\>/

"display line numbers:
set number
:nmap <C-N><C-N> :set invnumber<CR>

"brackets pairing
source ~/.vim/autoclose.vim

""YCM settings
"Do not display maximum diagnostics message
let g:ycm_max_diagnostics_to_display = 0
"Define path to my ycm config file
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"Do not ask to load ycm config file
let g:ycm_confirm_extra_conf = 0
""

""Airline settings
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '='
let g:airline_symbols.whitespace = 'x'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:airline#extensions#whitespace#enabled = 0

let g:airline_theme = 'dracula'

"Move between tabs
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>

"For geant4 syntax highlighting
autocmd BufRead,BufNewFile *.hh,*.cc set filetype=cpp.geant4
"For ROOT syntax highlighting
autocmd BufRead,BufNewFile *.cpp,*.h,*.C set filetype+=.root
"2 spaces for tab in xml files
autocmd BufRead,BufNewFile *.xml,*.dtd,*.xsd setlocal tabstop=2 shiftwidth=2

"Assembler sections at new
autocmd BufNewFile *.asm read ~/.vim/yasm_new.txt

"Default window split when using termdebug 
:packadd termdebug
let g:termdebug_wide=1

"Change tabs from <from> number of spaces to <to> number of spaces
function ChangeTab( from, to )
    set expandtab
    retab
    let &tabstop=a:from 
    set noexpandtab
    %retab!
    let &tabstop=a:to
    set expandtab
    %retab!
endfunction
