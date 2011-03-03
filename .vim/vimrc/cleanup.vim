" cleanup
function CleanupRubyComments()
  " silent exe '%g/^\([[:blank:]]*#\|\n\)/d'
  silent exe '%g/^[[:blank:]]*#/d'
endfunction

function CleanupEmpty()
  silent exe '%g/^\n/d'
endfunction