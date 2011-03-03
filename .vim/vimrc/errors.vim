" ShowErrors
function! ShowErrors()
  if !empty(b:syntastic_loclist)
    Errors
    ll
  endif
endfunction