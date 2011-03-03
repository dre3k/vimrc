function! SaveAndOpen(openee)
  if !&modified || !empty(@%)
    if &modified
      write
    endif
    silent exec a:openee
  else
    echo 'Unsaved file!'
  endif
endfunction
