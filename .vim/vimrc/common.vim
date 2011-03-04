function Save()
  if  !empty(@%) || !&modified
    if &modified
      write
      call MakeTags()
      call ShowErrors()
    endif
    return 1
  else
    echo 'E32: No file name'
  endif
  return 0
endfunction

function SaveAndOpen(openee)
  if Save()
    silent exec a:openee
  endif
endfunction

function ShowErrors()
  if !empty(b:syntastic_loclist)
    Errors
    ll
  endif
endfunction