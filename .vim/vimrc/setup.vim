" colors(without vibrantink colors ain't consistent in terminal)
colorscheme vibrantink
colorscheme vividchalk

" misc
set nocompatible
syntax on
filetype plugin indent on
set nowrap

" backspace over start of insert
set backspace=2

" show line numbers and limit column
set number
set colorcolumn=80

" left-right scroll
set sidescroll=1

" load .exrc in current directory
set exrc

" status line always visible
set laststatus=2

" statusline format
    "set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
    "set statusline=%<%t%h%m%r\ \ %a\ %{strftime(\"%c\")}%=0x%B\ line:%l,\ \ col:%c%V\ %P
set statusline=%F%m%r%h%w\ [%Y]%=[%03l:%02v\|%p%%\|%L]

" indentetion
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" keep 3 lines when scrolling
set scrolloff=3

" display incomplete commands
set showcmd

" Move to previous position
if has("autocmd")
 autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
endif
