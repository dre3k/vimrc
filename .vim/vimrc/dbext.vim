let g:dbext_default_profile_usual = 'type=PGSQL:user=krg:dbname=bpsimple'
let g:dbext_default_profile = 'usual'

let g:dbext_default_window_use_horiz = 0
let g:dbext_default_window_use_right = 0
let g:dbext_default_window_width = 105
let g:dbext_default_prompt_for_parameters=0

autocmd FileType sql nnoremap <buffer> <silent> <m-a> :DBExecSQLUnderCursor<cr>
autocmd FileType sql inoremap <buffer> <silent> <m-a> <esc>:DBExecSQLUnderCursor<cr>
autocmd FileType sql vnoremap <buffer> <silent> <m-a> :DBExecVisualSQL<cr>

