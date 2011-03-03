function ZenExp()
  let pos = line('.')
  call zencoding#expandAbbr(0)
  if (&filetype == 'haml')
    silent exe 'delete'
    silent exe pos
  endif
endfunction

let g:user_zen_expandabbr_key = '<c-k>'
let g:user_zen_settings = {'haml':{'extends':'html', 'filters':'haml'},
                          \'scss':{'extends':'css', 'filters':'css'}}
"let g:user_zen_leader_key = '<c-k>'
"let g:use_zen_complete_tag = 1
