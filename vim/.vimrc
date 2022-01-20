"Vundle config
source ~/.vim/vundle.vim

"dracula theme and transparency
syntax on
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

"tab = 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"alignment bars
set cursorcolumn
set cursorline
map <leader>c :set invcursorcolumn invcursorline<CR>

"hidden characters
:set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
:nmap <leader>s :set invlist<CR>

"search and replace the word under the cursor
:nnoremap <leader>r :%s/\<<C-r><C-w>\>/

"adds comment header"
:nnoremap <leader>h :call Header()<CR>

"reload config
:nnoremap <leader>e :source ~/.vimrc<CR>

" Show trailing whitepace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

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


"Airline settings
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


"Assembler sections at new
autocmd BufNewFile *.asm read ~/.vim/yasm_new.txt

"Set syntax highlight on Xmobar (written in Haskell) config file
autocmd BufNewFile,BufRead .xmobarrc set syntax=haskell

"Default window split when using termdebug 
:packadd termdebug
let g:termdebug_wide=1

"For geant4 syntax highlighting
autocmd BufRead,BufNewFile *.hh,*.cc set filetype=cpp.geant4
"For ROOT syntax highlighting
""autocmd BufRead,BufNewFile *.cpp,*.h,*.C set syn+=.root
"2 spaces for tab in xml files
autocmd BufRead,BufNewFile *.xml,*.dtd,*.xsd,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

"Abbreviations
:iabbrev myemail paradox1859@gmail.com

function ChangeTab( from, to )
"Change tabs from <from> number of spaces to <to> number of spaces
    set expandtab
    retab
    let &tabstop=a:from 
    set noexpandtab
    %retab!
    let &tabstop=a:to
    set expandtab
    %retab!
endfunction

function RTS()
"Remove trailing spaces in every line"
    let nl = line('$')
    exe ":normal gg"
    for i in range(1, nl)
        exe ":normal 0d^j"
    endfor
endfunction

function Header()
    let header = input( "Header : " )
    let s   = " " . toupper( header ) . " "
    let bar = "/" . repeat( '*', 6 + len( s ) + 6 ) . "/"
    let m   = "/" . repeat( '*', 6 ) . s . repeat( '*', 6 ) . "/"
    exe ":normal o" . bar . "\e"
    exe ":normal o" . m . "\e"
    exe ":normal o" . bar . "\e"
endfunction
