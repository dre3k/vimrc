" Vim color scheme
" Name:         vividchalk.vim
" Author:       Tim Pope <vimNOSPAM@tpope.info>
" Version:      2.0
" GetLatestVimScripts: 1891 1 :AutoInstall: vividchalk.vim

" Based on the Vibrank Ink theme for TextMate
" Distributable under the same terms as Vim itself (see :help license)

if has("gui_running")
    set background=dark
endif
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "vividchalk"

" First two functions adapted from inkpot.vim

" map a urxvt cube number to an xterm-256 cube number
fun! s:M(a)
    return strpart("0245", a:a, 1) + 0
endfun

" map a urxvt colour to an xterm-256 colour
fun! s:X(a)
    if &t_Co == 88
        return a:a
    else
        if a:a == 8
            return 237
        elseif a:a < 16
            return a:a
        elseif a:a > 79
            return 232 + (3 * (a:a - 80))
        else
            let l:b = a:a - 16
            let l:x = l:b % 4
            let l:y = (l:b / 4) % 4
            let l:z = (l:b / 16)
            return 16 + s:M(l:x) + (6 * s:M(l:y)) + (36 * s:M(l:z))
        endif
    endif
endfun

function! E2T(a)
    return s:X(a:a)
endfunction

function! s:choose(mediocre,good)
    if &t_Co != 88 && &t_Co != 256
        return a:mediocre
    else
        return s:X(a:good)
    endif
endfunction

function! s:hifg(group,guifg,first,second,...)
    if a:0 && &t_Co == 256
        let ctermfg = a:1
    else
        let ctermfg = s:choose(a:first,a:second)
    endif
    exe "highlight ".a:group." guifg=".a:guifg." ctermfg=".ctermfg
endfunction

function! s:hibg(group,guibg,first,second)
    let ctermbg = s:choose(a:first,a:second)
    exe "highlight ".a:group." guibg=".a:guibg." ctermbg=".ctermbg
endfunction

hi link railsMethod         PreProc
hi link rubyDefine          Keyword
hi link rubySymbol          Constant
hi link rubyAccess          rubyMethod
hi link rubyAttribute       rubyMethod
hi link rubyEval            rubyMethod
hi link rubyException       rubyMethod
hi link rubyInclude         rubyMethod
hi link rubyStringDelimiter rubyString
hi link rubyRegexp          Regexp
hi link rubyRegexpDelimiter rubyRegexp
"hi link rubyConstant        Variable
"hi link rubyGlobalVariable  Variable
"hi link rubyClassVariable   Variable
"hi link rubyInstanceVariable Variable
hi link javascriptRegexpString  Regexp
hi link javascriptNumber        Number
hi link javascriptNull          Constant
highlight link diffAdded        String
highlight link diffRemoved      Statement
highlight link diffLine         PreProc
highlight link diffSubname      Comment

"call s:hifg("Normal","#CCCCCC","White",87)
call s:hifg("Normal","#bbbbbb","White",87)
if &background == "light" || has("gui_running")
    hi Normal guibg=#1c1c1c ctermbg=Black
else
    hi Normal guibg=#1c1c1c ctermbg=NONE
endif
highlight StatusLine    guifg=#1c1c1c guibg=#aabbee gui=bold ctermfg=234 ctermbg=253 cterm=bold
highlight StatusLineNC  guifg=#444444 guibg=#aaaaaa gui=none ctermfg=Black ctermbg=Grey cterm=none
"if &t_Co == 256
    "highlight StatusLine ctermbg=245
"else
    "highlight StatusLine ctermbg=59
"endif

highlight Ignore        ctermfg=Black
highlight WildMenu      guifg=#1c1c1c   guibg=#ffff00 gui=bold ctermfg=Black ctermbg=Yellow cterm=bold
highlight Cursor        guifg=#1c1c1c guibg=White ctermfg=Black ctermbg=White
highlight CursorLine    guibg=#333333 guifg=NONE
highlight CursorColumn  guibg=#333333 guifg=NONE
highlight NonText       guifg=#404040 ctermfg=8
highlight SpecialKey    guifg=#404040 ctermfg=8
highlight Directory     none
high link Directory     Identifier
highlight ErrorMsg      guibg=Red ctermbg=DarkRed guifg=NONE ctermfg=NONE
highlight Search        guifg=NONE ctermfg=NONE gui=none cterm=none
call s:hibg("Search"    ,"#555555","DarkBlue",81)
highlight IncSearch     guifg=White guibg=#1c1c1c ctermfg=White ctermbg=Black
highlight MoreMsg       guifg=#00AA00 ctermfg=Green
" Line Numbers
highlight LineNr        guifg=#3d3d3d ctermfg=238
call s:hibg("LineNr"    ,"#1c1c1c","DarkGrey",234)
" Color Column
highlight ColorColumn   guibg=#1f1f1f ctermbg=235
highlight Question      none
high link Question      MoreMsg
"highlight Title         guifg=Magenta ctermfg=Magenta
highlight Title         guifg=White ctermfg=White
highlight VisualNOS     gui=none cterm=none
call s:hibg("Visual"    ,"#555577","LightBlue",83)
call s:hibg("VisualNOS" ,"#444444","DarkBlue",81)
call s:hibg("MatchParen","#1100AA","DarkBlue",18)
highlight WarningMsg    guifg=Red ctermfg=Red
highlight Error         ctermbg=DarkRed
highlight SpellBad      ctermbg=DarkRed
" FIXME: Comments
highlight SpellRare     ctermbg=DarkMagenta
highlight SpellCap      ctermbg=DarkBlue
highlight SpellLocal    ctermbg=DarkCyan

call s:hibg("Folded"    ,"#1c1c1c","DarkBlue",200)
call s:hifg("Folded"    ,"#3d3d3d","LightCyan",82)
highlight FoldColumn    none
high link FoldColumn    Folded
highlight DiffAdd       ctermbg=4 guibg=DarkBlue
highlight DiffChange    ctermbg=5 guibg=DarkMagenta
highlight DiffDelete    ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
highlight DiffText      ctermbg=DarkRed
highlight DiffText      cterm=bold ctermbg=9 gui=bold guibg=Red

" Completetion
highlight Pmenu         guifg=#d0d0d0 ctermfg=252 gui=bold cterm=bold
highlight PmenuSel      guifg=#d0d0d0 ctermfg=252 gui=bold cterm=bold
"call s:hibg("Pmenu"     ,"#000099","Blue",18)
"call s:hibg("PmenuSel"  ,"#5555ff","DarkCyan",39)
highlight Pmenu         guibg=#3d3d3d ctermbg=237
highlight PmenuSel      guibg=#808080 ctermbg=244
highlight PmenuSbar     guibg=Grey ctermbg=Grey
highlight PmenuThumb    guibg=White ctermbg=White
highlight TabLine       gui=underline cterm=underline
call s:hifg("TabLine"   ,"#bbbbbb","LightGrey",85)
call s:hibg("TabLine"   ,"#333333","DarkGrey",80)
highlight TabLineSel    guifg=White guibg=#1c1c1c ctermfg=White ctermbg=Black
highlight TabLineFill   gui=underline cterm=underline
call s:hifg("TabLineFill","#bbbbbb","LightGrey",85)
call s:hibg("TabLineFill","#808080","Grey",83)

hi Type gui=none
hi Statement gui=none
if !has("gui_mac")
    " Mac GUI degrades italics to ugly underlining.
    hi Comment gui=italic
    hi railsUserClass  gui=italic
    hi railsUserMethod gui=italic
endif
hi Identifier cterm=none
" Commented numbers at the end are *old* 256 color values
"highlight PreProc       guifg=#EDF8F9
call s:hifg("Comment"        ,"#808080","Grey",37) " 92
highlight Comment        guifg=#3d3d3d ctermfg=238
" 26 instead?
"call s:hifg("Constant"       ,"#339999","DarkCyan",21) " 30
call s:hifg("Constant"       ,"#7795a2","DarkCyan",21) " 30
call s:hifg("rubyNumber"     ,"#CCFF33","Yellow",60) " 190
"call s:hifg("String"         ,"#66FF00","LightGreen",44,82) " 82
"call s:hifg("String"         ,"#A4C258","LightGreen",44,82) " 82
call s:hifg("String"         ,"#96C25d","LightGreen",44,82) " 82
"call s:hifg("Identifier"     ,"#FFCC00","Yellow",72) " 220
"call s:hifg("Identifier"     ,"#d9d153","Yellow",72) " 220
call s:hifg("Identifier"     ,"#bbb43e","Yellow",72) " 220
"call s:hifg("Statement"      ,"#FF6600","Brown",68) " 202
"call s:hifg("Statement"      ,"#CB7832","Brown",68) " 202
call s:hifg("Statement"      ,"#ba7135","Brown",68) " 202
"call s:hifg("PreProc"        ,"#AAFFFF","LightCyan",47) " 213
"call s:hifg("PreProc"        ,"#339999","DarkCyan",21) " 30
call s:hifg("PreProc"        ,"#7795a2","DarkCyan",21) " 30

call s:hifg("railsUserMethod","#AACCFF","LightCyan",27)
"call s:hifg("Type"           ,"#AAAA77","Grey",57) " 101
call s:hifg("Type"           ,"#808c5b","Grey",57) " 101
"call s:hifg("railsUserClass" ,"#AAAAAA","Grey",7) " 101
"call s:hifg("railsUserClass" ,"#999999","Grey",7) " 101
call s:hifg("railsUserClass" ,"#808c5b","Grey",7) " 101
"call s:hifg("Special"        ,"#33AA00","DarkGreen",24) " 7
call s:hifg("Special"        ,"#5AA65A","DarkGreen",24) " 7
call s:hifg("Regexp"         ,"#44B4CC","DarkCyan",21) " 74
"call s:hifg("rubyMethod"     ,"#DDE93D","Yellow",77) " 191
"call s:hifg("rubyMethod"     ,"#EEBB00","Yellow",77) " 191
call s:hifg("rubyMethod"     ,"#D2bb7D","Yellow",77) " 191
"highlight railsMethod   guifg=#A64C47 ctermfg=1
highlight railsMethod   guifg=#D2bb7D ctermfg=1
"highlight rubyPseudoVariable   guifg=#7a88b5 ctermfg=1
"highlight rubyConstant   guifg=#999999 ctermfg=1

" taglist
highlight MyTagListFileName guibg=#1c1c1c ctermbg=234
