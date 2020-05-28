" All the colors are taken from the VIM's colorscheme dracula
"
" Mode (starting) identifiers :
" N - normal, I - insert, V - visual, RE - replace, IA - inactive
" Letter "M" after mode identifier stands for "modified" 
"
" Digits at the end :
" 1 - section A (leftmost section)
" 2 - section B (next to A)
" 3 -  section C (next to B)
" Other sections' colors are mirrored

" Normal mode
"            guibg       guifg       ctermfg    ctermbg
let s:N1 = [ '#21222c' , '#bd93f9' , 235 ,      141 ]
let s:N2 = [ '#bd93f9' , '#424450' , 141 ,      238 ]
let s:N3 = [ '#bd93f9' , '#21222c' , 141 ,      235 ]
let s:NM2 = [ '#21222c', '#8be9fd' , 235 ,      117 ]

" Insert mode
let s:I1 = [ '#21222c' , '#50fa7b' , 235 , 84 ]
let s:I2 = [ '#50fa7b' , '#424450' , 84 , 238 ]
let s:I3 = [ '#50fa7b' , '#21222c' , 84 , 235 ]
let s:IM2 = [ '#21222c', '#f1fa8c' , 235, 228 ]

" Visual mode
let s:V1 = [ '#21222c' , '#ff79c6' , 235 , 212 ]
let s:V2 = [ '#ff79c6' , '#424450' , 212 , 238 ]
let s:V3 = [ '#ff79c6' , '#21222c' , 212 , 235 ]
let s:VM2 = [ '#21222c', '#8be9fd' , 235 , 117 ]

" Replace mode
let s:RE1 = [ '#f8f8f2' , '#ff5555' , 235 , 203 ]
let s:RE2 = [ '#ff5555' , '#424450' , 203 , 238 ]
let s:RE3 = [ '#ff5555' , '#21222c' , 203 , 235 ]
let s:REM2 = [ '#21222c', '#f1fa8c' , 235 , 228 ]

"Inactive mode
let s:IA1 = [ '#f8f8f2' , '#ff5555' , 235 , 183 ]
let s:IA2 = [ '#bd93f9' , '#424450' , 141 , 238 ]
let s:IA3 = [ '#bd93f9' , '#21222c' , 141 , 235 ]


let g:airline#themes#dracula#palette = {}

" Normal mode
let g:airline#themes#dracula#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#dracula#palette.normal_modified = airline#themes#generate_color_map(s:N1, s:NM2, s:N3)


" Insert mode
let g:airline#themes#dracula#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dracula#palette.insert_modified = airline#themes#generate_color_map(s:I1, s:IM2, s:I3)

" Visual mode
let g:airline#themes#dracula#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dracula#palette.visual_modified = airline#themes#generate_color_map(s:V1, s:VM2, s:V3)

" Replace mode
let g:airline#themes#dracula#palette.replace = airline#themes#generate_color_map(s:RE1, s:RE2, s:RE3)
let g:airline#themes#dracula#palette.replace_modified = airline#themes#generate_color_map(s:RE1, s:REM2, s:RE3)

" Inactive mode
let g:airline#themes#dracula#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
