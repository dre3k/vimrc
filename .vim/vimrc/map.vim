" terminal meta setup
set <m-a>=a | set <m-A>=A | set <m-b>=b | set <m-B>=B
set <m-c>=c | set <m-C>=C | set <m-d>=d | set <m-D>=D
set <m-e>=e | set <m-E>=E | set <m-f>=f | set <m-F>=F
set <m-g>=g | set <m-G>=G | set <m-h>=h | set <m-H>=H
set <m-i>=i | set <m-I>=I | set <m-j>=j | set <m-J>=J
set <m-k>=k | set <m-K>=K | set <m-l>=l | set <m-L>=L
set <m-m>=m | set <m-M>=M | set <m-n>=n | set <m-N>=N
"set <m-o>=o | set <m-O>=O | set <m-p>=p | set <m-P>=P
set <m-p>=p | set <m-P>=P
set <m-q>=q | set <m-Q>=Q | set <m-r>=r | set <m-R>=R
set <m-s>=s | set <m-S>=S | set <m-t>=t | set <m-T>=T
set <m-u>=u | set <m-U>=U | set <m-v>=v | set <m-V>=V
set <m-w>=w | set <m-W>=W | set <m-x>=x | set <m-X>=X
set <m-y>=y | set <m-Y>=Y | set <m-z>=z | set <m-Z>=Z
set <m-1>=1
set <m-2>=2 | set <m-3>=3
set <m-4>=4 | set <m-$>=$
" <esc> and <cr>
cnoremap <m-d> <c-u><bs>
inoremap <silent> <m-d> <esc>
vnoremap <m-d> <esc>
nnoremap <silent> <m-a> <cr>
nnoremap <silent> <m-n> <cr>
cnoremap <silent> <m-a> <cr>
cnoremap <silent> <m-n> <cr>
cnoremap <silent> <m-o> <cr>
inoremap <silent> <m-a> <cr>
inoremap <silent> <m-n> <cr>
vnoremap <silent> <m-a> <cr>
vnoremap <silent> <m-n> <cr>
" switch to command mode
nnoremap <m-c> :
vnoremap <m-c> :
" hjkl and yui
nnoremap <silent> <m-h> b
nnoremap <silent> <m-l> w
nnoremap <silent> <m-H> db
nnoremap <silent> <m-L> dw
nnoremap <silent> <m-j> 
nnoremap <silent> <m-k> 
nnoremap <silent> <m-K> gg
nnoremap <silent> <m-J> G
nnoremap <silent> <m-y> 0
nnoremap <silent> <m-u> ^
nnoremap <silent> <m-i> $
nnoremap <silent> <m-4> $
nnoremap <silent> <m-U> d^
nnoremap <silent> <m-I> d$
vnoremap <silent> <m-h> b
vnoremap <silent> <m-l> w
vnoremap <silent> <m-H> db
vnoremap <silent> <m-L> dw
vnoremap <silent> <m-j> 
vnoremap <silent> <m-k> 
vnoremap <silent> <m-K> gg
vnoremap <silent> <m-J> G
vnoremap <silent> <m-y> 0
vnoremap <silent> <m-u> ^
vnoremap <silent> <m-i> $
vnoremap <silent> <m-4> $<left>
vnoremap <silent> <m-U> d^
vnoremap <silent> <m-I> d$
cnoremap <m-h> <left>
cnoremap <m-l> <right>
cnoremap <m-j> <down>
cnoremap <m-k> <up>
cnoremap <m-H> <backspace>
cnoremap <m-L> <delete>
cnoremap <m-u> <home>
cnoremap <m-i> <end>
cnoremap <m-U> 
inoremap <silent> <m-h> <Left>
inoremap <silent> <m-l> <Right>
inoremap <silent> <m-H> <bs>
inoremap <silent> <m-L> <delete>
inoremap <silent> <m-j> <Down>
inoremap <silent> <m-k> <Up>
inoremap <silent> <m-y> <esc>^i
inoremap <silent> <m-Y> <esc>d^xi
inoremap <silent> <m-4> <end>
inoremap <silent> <m-$> <esc>lc$
inoremap <silent> <m-u> <c-left>
inoremap <silent> <m-i> <c-right>
inoremap <silent> <m-U> <esc>dbxi<right>
inoremap <silent> <m-I> <esc>lcw
" deletes in insert mode
inoremap <silent> <c-d> <delete>
" window resize
nmap <silent> <c-w>a :resize +200<cr>
nmap <silent> <m-=> <c-w>+
nmap <silent> <m--> <c-w>-
nmap <silent> <m-+> <c-w>>
nmap <silent> <m-_> <c-w><
" save and save all
nmap <silent> <m-s> :call Save()<cr>
imap <silent> <m-s> <esc><m-s>
" exit
nmap <m-x> :wq<cr>
imap <m-x> <esc>:wq<cr>
" buffers
nnoremap <silent> <c-w>C :call BufferListClear()<cr>
" add new line
nmap <m-o> o<esc>
imap <m-o> <esc>o
nmap <m-O> O<esc>
imap <m-O> <esc>O
" add space in normal mode
nnoremap <silent> <space> i <esc>l
nnoremap <silent> <bs> hx
" folding
nnoremap <silent> <m-f>f :set foldenable<cr> :set foldmethod=syntax\|set foldcolumn=5<cr> :set foldlevel=1<cr>
nnoremap <silent> <m-F>  :set foldenable<cr> :set foldmethod=syntax\|set foldcolumn=5<cr> :set foldlevel=1<cr>
nnoremap <silent> <m-f>i :set foldenable<cr> :set foldmethod=indent\|set foldcolumn=5<cr> :set foldlevel=1<cr>
nnoremap <silent> <m-f>d :set nofoldenable\|set foldcolumn=0<cr>
nnoremap <silent> <m-f>0 :set foldlevel=0<cr>
nnoremap <silent> <m-f>1 :set foldlevel=1<cr>
nnoremap <silent> <m-f>2 :set foldlevel=2<cr>
nnoremap <silent> <m-f>3 :set foldlevel=3<cr>
nnoremap <silent> <m-f>4 :set foldlevel=4<cr>
nnoremap <silent> <m-f>5 :set foldlevel=5<cr>
nnoremap <silent> <m-f>6 :set foldlevel=6<cr>
" NERD_tree, BufferExplorer, FuzzyFinder
nnoremap <silent> <m-q>  :call SaveAndOpen('FufFile **/')<cr>
nnoremap <silent> <F12>r :FufRenewCache<cr>
nnoremap <silent> <m-1>  :NERDTreeToggle<cr>
"nnoremap <silent> <m-w>  :call OpenBufferExp()<cr>
nnoremap <silent> <m-w>  :call SaveAndOpen('BufExplorer')<cr>
" quickfix
nnoremap <silent> <m-r> :call ToggleQuickFixWindow()<cr>
nnoremap <silent> <m-.> :cnext<cr>
nnoremap <silent> <m-,> :cprev<cr>
nnoremap <silent> >   :clast<cr>
nnoremap <silent> <m->> :clast<cr>
nnoremap <silent> <   :cfirst<cr>
nnoremap <silent> <m-<> :cfirst<cr>
" taglist
nnoremap <silent> <m-e> :TlistToggle<cr>
" vimgrep
vnoremap <silent> <m-g> :call VimgrepSelection()<cr>
nnoremap <silent> <m-g> :call VimgrepWord()<cr>
nnoremap <silent> <m-G> :call VimgrepInput()<cr>
" substitute in selection
vnoremap <m-s> :s/
" NERD_commenter
nmap <m-2> ,cu
vmap <m-2> ,cu
nmap <m-3> ,cc
vmap <m-3> ,cc
" delete incidentally create new line
inoremap <silent> <m-bs>  <esc>kmljdd'lA
inoremap <silent> <m-K>   <esc>kmljdd'lA
" copy/past to/from x clipboard
cmap <s-insert>   <c-r>+
nmap <c-insert>   mm0"+y$`m
nmap <s-insert>   "+P
vmap <c-insert>   "+y
vmap <s-delete>   "+d
vmap <s-insert>   "+P
imap <c-insert>   <esc>mm0"+y$`m
imap <s-insert>   <esc>"+pi<right>
" select all; saves position in p
nmap <c-a>      mpggVG
imap <c-a>      <esc>mpggVG
" complition
inoremap <silent> <m-p>   <c-x><c-u>
inoremap <silent> <m-P>   <c-x><c-o>
" move current line to top of the screeen
inoremap <silent> <c-l>   <esc>mpz<cr>`pa
nnoremap <silent> <c-l>   mpz<cr>`p
nnoremap <silent> <c-z>   :redraw<cr>
" split line
nnoremap <silent> K       i<cr><esc>k$
" ZenCoding
inoremap <silent> <c-k>   <esc>:call ZenExp()<cr>
" cleaning up ruby code
nnoremap <silent> <F12>cc :call CleanupRubyComments()<cr>
nnoremap <silent> <F12>ce :call CleanupEmpty()<cr>
