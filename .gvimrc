set guifont=Bitstream\ Vera\ Sans\ Mono\ 12

" position
"winpos 533 685
"autocmd GUIEnter * winpos 533 685
"set lines=22
winpos 533 685
"set lines=54
set lines=22
set columns=85
autocmd GUIEnter * winpos 533 685
"autocmd GUIEnter * set lines=54
autocmd GUIEnter * set lines=22

" disable mouse
set mouse=""

" hide menu and tool bars
set guioptions-=m
set guioptions-=T

" hide left and right scrolls
set guioptions-=L
set guioptions-=r