function VimgrepSelection()
  let reg = 'a'
  let orig = getreg(reg)
  silent exe 'norm! `<v`>"'.reg.'y'
  let result = getreg(reg)
  call setreg(reg, orig)
  silent exe 'vimgrep ' . result . ' %'
  copen 200
  "cfirst
endfunction

function GetActiveWord()
  let reg = 'a'
  let orig = getreg(reg)
  let save_cursor = getpos(".")
  silent exe 'norm! wb"'.reg.'yw'
  call setpos('.', save_cursor)
  let result = getreg(reg)
  call setreg(reg, orig)
  return result
endfunction

function VimgrepWord()
  let word = GetActiveWord()
  silent exe 'vimgrep ' . word . ' %'
  copen 200
  "cfirst
endfunction

function VimgrepInput()
  call inputsave()
  let user_input = input('vimgrep: ')
  call inputrestore()
  silent exe 'vimgrep ' . user_input . ' %'
  copen 200
  "vimgrep user_input %
endfunction