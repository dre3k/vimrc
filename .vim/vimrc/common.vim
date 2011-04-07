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

function! MoveSelection(step)
  let lcount = line("$")
  let fline = line("'<")
  let lline = line("'>")
  let scount = lline - fline
  let direction = (a:step == -1) ? "k" : "j"
  if scount == 0
    let sel_move = ""
  else
    let sel_move = scount . "j"
  endif
  let restore_selection = "normal \<esc>gv"
  if ((lline == lcount) && (direction == "j")) || ((fline == 1) && (direction == "k"))
    silent exe restore_selection
    return 0
  endif
  if ((lline == (lcount - 1)) && (direction == "j"))
    silent exe restore_selection . "dpV" . sel_move
  else
    silent exe restore_selection . "d" . direction . "PV" . sel_move
  endif
endfunction
