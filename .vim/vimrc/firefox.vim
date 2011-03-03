"autocmd BufWriteCmd *.haml,*.css,*.scss :call RefreshFirefox()
function! RefreshFirefox()
"if &modified
    "write
"    call DK_Save()
    silent !echo  'vimYo = content.window.pageYOffset;
                 \ vimXo = content.window.pageXOffset;
                 \ BrowserReload();
                 \ content.window.scrollTo(vimXo,vimYo);
                 \ repl.quit();'  |
                 \ nc localhost 4242 2>&1 > /dev/null
"  endif
endfunction
