function DK_Save()
  write
  call MakeTags()
  "silent exe 'TlistUpdate'
  TlistUpdate
  call ShowErrors()
  if (exists("b:ffr") && b:ffr)
    call RefreshFirefox()
  endif
endfunction
