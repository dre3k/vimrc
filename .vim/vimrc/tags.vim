" TagList
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Inc_Winwidth = 0
"let Tlist_WinWidth = 40

" MakeTags
function MakeTags()
  if (&filetype == 'ruby') && exists('b:rails_root')
    silent exe 'Rtags'
    TlistUpdate
  endif
endfunction