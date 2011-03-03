function Save()
  write
  call MakeTags()
  TlistUpdate
  call ShowErrors()
  "if (exists("b:ffr") && b:ffr)
    "call RefreshFirefox()
  "endif
endfunction

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
