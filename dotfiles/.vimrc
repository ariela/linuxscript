" vim: set ts=4 sw=4 sts=0:

"---------------------------------------------------------------------------------------------------
" Šî–{İ’è
"---------------------------------------------------------------------------------------------------
set nocompatible                 " viŒİŠ·‚È‚µ
let mapleader = ","              " ƒL[ƒ}ƒbƒvƒŠ[ƒ_[
set scrolloff=5                  " ƒXƒNƒ[ƒ‹‚Ì—]”’Šm•Û
set textwidth=0                  " ˆês‚É’·‚¢•¶Í‚ğ‘‚¢‚Ä‚¢‚Ä‚à©“®Ü‚è•Ô‚µ‚ğ‚µ‚È‚¢
set nobackup                     " ƒoƒbƒNƒAƒbƒvæ‚ç‚È‚¢
set autoread                     " ‘¼‚Å‘‚«Š·‚¦‚ç‚ê‚½‚ç©“®‚Å“Ç‚İ’¼‚·
set noswapfile                   " ƒXƒƒbƒvƒtƒ@ƒCƒ‹ì‚ç‚È‚¢
set hidden                       " •ÒW’†‚Å‚à‘¼‚Ìƒtƒ@ƒCƒ‹‚ğŠJ‚¯‚é‚æ‚¤‚É‚·‚é
set backspace=indent,eol,start   " ƒoƒbƒNƒXƒy[ƒX‚Å‚È‚ñ‚Å‚àÁ‚¹‚é‚æ‚¤‚É
set formatoptions=lmoq           " ƒeƒLƒXƒg®Œ`ƒIƒvƒVƒ‡ƒ“Cƒ}ƒ‹ƒ`ƒoƒCƒgŒn‚ğ’Ç‰Á
set vb t_vb=                     " ƒr[ƒv‚ğ‚È‚ç‚³‚È‚¢
set browsedir=buffer             " Explore‚Ì‰ŠúƒfƒBƒŒƒNƒgƒŠ
set whichwrap=b,s,h,l,<,>,[,]    " ƒJ[ƒ\ƒ‹‚ğs“ªAs––‚Å~‚Ü‚ç‚È‚¢‚æ‚¤‚É‚·‚é
set showcmd                      " ƒRƒ}ƒ“ƒh‚ğƒXƒe[ƒ^ƒXs‚É•\¦
set showmode                     " Œ»İ‚Ìƒ‚[ƒh‚ğ•\¦
set viminfo='50,<1000,s100,\"50  " viminfoƒtƒ@ƒCƒ‹‚Ìİ’è
set modelines=0                  " ƒ‚[ƒhƒ‰ƒCƒ“‚Í–³Œø

" OS‚ÌƒNƒŠƒbƒvƒ{[ƒh‚ğg—p‚·‚é
set clipboard+=unnamed

"ƒ„ƒ“ƒN‚µ‚½•¶š‚ÍAƒVƒXƒeƒ€‚ÌƒNƒŠƒbƒvƒ{[ƒh‚É“ü‚ê‚é"
set clipboard=unnamed
" ‘}“üƒ‚[ƒh‚ÅCtrl+k‚ğ‰Ÿ‚·‚ÆƒNƒŠƒbƒvƒ{[ƒh‚Ì“à—e‚ğ“\‚è•t‚¯‚ç‚ê‚é‚æ‚¤‚É‚·‚é "
imap <C-V>  <ESC>"*pa


"---------------------------------------------------------------------------------------------------
" ƒXƒe[ƒ^ƒXƒ‰ƒCƒ“İ’è
"---------------------------------------------------------------------------------------------------
"ƒXƒe[ƒ^ƒXƒ‰ƒCƒ“‚ğí‚É•\¦i2sj
set laststatus=2

"ƒJ[ƒ\ƒ‹‚ª‰½s–Ú‚Ì‰½—ñ–Ú‚É’u‚©‚ê‚Ä‚¢‚é‚©‚ğ•\¦‚·‚é
set ruler

"ƒXƒe[ƒ^ƒXƒ‰ƒCƒ“‚É•¶šƒR[ƒh‚Æ‰üs•¶š‚ğ•\¦‚·‚é
if winwidth(0) >= 120
  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=[%{GetB()}]\ %l,%c%V%8P
else
  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %f%=[%{GetB()}]\ %l,%c%V%8P
endif

"“ü—Íƒ‚[ƒhAƒXƒe[ƒ^ƒXƒ‰ƒCƒ“‚ÌƒJƒ‰[‚ğ•ÏX
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"“ü—Í’†‚ÌƒRƒ}ƒ“ƒh‚ğƒXƒe[ƒ^ƒX‚É•\¦‚·‚é
set showcmd

"---------------------------------------------------------------------------------------------------
" •\¦İ’è
"---------------------------------------------------------------------------------------------------
set showmatch       "Š‡ŒÊ“ü—Í‚Ì‘Î‰‚·‚éŠ‡ŒÊ‚ğ•\¦
set number          "s”Ô†‚ğ•\¦‚·‚é
set list            "•s‰Â‹•¶š•\¦
"•s‰Â‹•¶š•\¦•û–@
set listchars=eol:\ ,tab:>.,trail:_,extends:>,precedes:< " •s‰Â‹•¶š‚Ì•\¦Œ`®
set display=uhex    "ˆóš•s‰Â”\•¶š‚ğ16i”‚Å•\¦

" ‘SŠpƒXƒy[ƒX‚Ì•\¦
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /@/

"ƒ^ƒu‚Ì¶‘¤‚ÉƒJ[ƒ\ƒ‹•\¦
highlight SpecialKey cterm=underline ctermfg=gray guifg=gray

" ƒJ[ƒ\ƒ‹s‚ğƒnƒCƒ‰ƒCƒg
set cursorline
" ƒJƒŒƒ“ƒgƒEƒBƒ“ƒhƒE‚É‚Ì‚İŒrü‚ğˆø‚­
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

:set lazyredraw " ƒRƒ}ƒ“ƒhÀs’†‚ÍÄ•`‰æ‚µ‚È‚¢
:set ttyfast    " ‚‘¬ƒ^[ƒ~ƒiƒ‹Ú‘±‚ğs‚¤


"---------------------------------------------------------------------------------------------------
" ƒCƒ“ƒfƒ“ƒgİ’è
"---------------------------------------------------------------------------------------------------
set autoindent  "ƒI[ƒgƒCƒ“ƒfƒ“ƒg‚·‚é
set paste       "ƒy[ƒXƒg‚Éautoindent‚ğ–³Œø‚É(on‚É‚·‚é‚Æautocomplpop.vim‚ª“®‚©‚È‚¢)
set smartindent " V‚µ‚¢s‚ğŠJn‚µ‚½‚Æ‚«‚ÉAV‚µ‚¢s‚ÌƒCƒ“ƒfƒ“ƒg‚ğŒ»İs‚Æ“¯‚¶—Ê‚É‚·‚éB
set cindent     "CƒvƒƒOƒ‰ƒ€ƒtƒ@ƒCƒ‹‚Ì©“®ƒCƒ“ƒfƒ“ƒg‚ğn‚ß‚é

"ƒ^ƒu•‚ğİ’è‚·‚é
set tabstop=4
set shiftwidth=4
set softtabstop=0

if has("autocmd")
  "ƒtƒ@ƒCƒ‹ƒ^ƒCƒv‚ÌŒŸõ‚ğ—LŒø‚É‚·‚é
  filetype plugin on
  "‚»‚Ìƒtƒ@ƒCƒ‹ƒ^ƒCƒv‚É‚ ‚í‚¹‚½ƒCƒ“ƒfƒ“ƒg‚ğ—˜—p‚·‚é
  filetype indent on
  " ‚±‚ê‚ç‚Ìft‚Å‚ÍƒCƒ“ƒfƒ“ƒg‚ğ–³Œø‚É
  "autocmd FileType php filetype indent off

  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif


"---------------------------------------------------------------------------------------------------
" —š—ğE•âŠ®İ’è
"---------------------------------------------------------------------------------------------------
set wildmenu            " ƒRƒ}ƒ“ƒh•âŠ®‚ğ‹­‰»
set wildchar=<tab>      " ƒRƒ}ƒ“ƒh•âŠ®‚ğŠJn‚·‚éƒL[
set wildmode=list:full  " ƒŠƒXƒg•\¦CÅ’·ƒ}ƒbƒ`
set history=1000        " ƒRƒ}ƒ“ƒhEŒŸõƒpƒ^[ƒ“‚Ì—š—ğ”
set complete+=k         " •âŠ®‚É«‘ƒtƒ@ƒCƒ‹’Ç‰Á
"tab‚ÅƒIƒ€ƒj•âŠ®
inoremap <tab> <c-r>=InsertTabWrapper()<cr>


"---------------------------------------------------------------------------------------------------
" ŒŸõİ’è
"---------------------------------------------------------------------------------------------------
set wrapscan   " ÅŒã‚Ü‚ÅŒŸõ‚µ‚½‚çæ“ª‚Ö–ß‚é
set ignorecase " ‘å•¶š¬•¶š–³‹
set smartcase  " ŒŸõ•¶š—ñ‚É‘å•¶š‚ªŠÜ‚Ü‚ê‚Ä‚¢‚éê‡‚Í‹æ•Ê‚µ‚ÄŒŸõ‚·‚é
set incsearch  " ƒCƒ“ƒNƒŠƒƒ“ƒ^ƒ‹ƒT[ƒ`
set hlsearch   " ŒŸõ•¶š‚ğƒnƒCƒ‰ƒCƒg
"Esc‚Ì2‰ñ‰Ÿ‚µ‚ÅƒnƒCƒ‰ƒCƒgÁ‹
nmap <ESC><ESC> :nohlsearch<CR><ESC>


"---------------------------------------------------------------------------------------------------
" ƒGƒ“ƒR[ƒhİ’è
"---------------------------------------------------------------------------------------------------
if &encoding !=# 'utf-8'
    set encoding=japan
    set fileencoding=japan
endif
if has('iconv')
    let s:enc_euc = 'euc-jp'
    let s:enc_jis = 'iso-2022-jp'
    " iconv‚ªeucJP-ms‚É‘Î‰‚µ‚Ä‚¢‚é‚©‚ğƒ`ƒFƒbƒN
    if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
        let s:enc_euc = 'eucjp-ms'
        let s:enc_jis = 'iso-2022-jp-3'
    " iconv‚ªJISX0213‚É‘Î‰‚µ‚Ä‚¢‚é‚©‚ğƒ`ƒFƒbƒN
    elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
        let s:enc_euc = 'euc-jisx0213'
        let s:enc_jis = 'iso-2022-jp-3'
    endif
    " fileencodings‚ğ\’z
    if &encoding ==# 'utf-8'
        let s:fileencodings_default = &fileencodings
        let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
        let &fileencodings = &fileencodings .','. s:fileencodings_default
        unlet s:fileencodings_default
    else
        let &fileencodings = &fileencodings .','. s:enc_jis
        set fileencodings+=utf-8,ucs-2le,ucs-2
        if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
            set fileencodings+=cp932
            set fileencodings-=euc-jp
            set fileencodings-=euc-jisx0213
            set fileencodings-=eucjp-ms
            let &encoding = s:enc_euc
            let &fileencoding = s:enc_euc
        else
            let &fileencodings = &fileencodings .','. s:enc_euc
        endif
    endif
    " ’è”‚ğˆ•ª
    unlet s:enc_euc
    unlet s:enc_jis
endif
" “ú–{Œê‚ğŠÜ‚Ü‚È‚¢ê‡‚Í fileencoding ‚É encoding ‚ğg‚¤‚æ‚¤‚É‚·‚é
if has('autocmd')
    function! AU_ReCheck_FENC()
        if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
            let &fileencoding=&encoding
        endif
    endfunction
    autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" ‰üsƒR[ƒh‚Ì©“®”F¯
set fileformats=unix,dos,mac
"  ‚Æ‚©›‚Ì•¶š‚ª‚ ‚Á‚Ä‚àƒJ[ƒ\ƒ‹ˆÊ’u‚ª‚¸‚ê‚È‚¢‚æ‚¤‚É‚·‚é
if exists('&ambiwidth')
    set ambiwidth=double
endif


"---------------------------------------------------------------------------------------------------
" ƒJƒ‰[ƒŠƒ“ƒOİ’è
"---------------------------------------------------------------------------------------------------
" ƒ^[ƒ~ƒiƒ‹ƒ^ƒCƒv‚É‚æ‚éƒJƒ‰[İ’è
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86" || &term =~ "xterm-256color"
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
elseif &term =~ "xterm-color"
    set t_Co=8
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

"ƒ|ƒbƒvƒAƒbƒvƒƒjƒ…[‚ÌƒJƒ‰[‚ğİ’è
"hi Pmenu guibg=#666666
"hi PmenuSel guibg=#8cd0d3 guifg=#666666
"hi PmenuSbar guibg=#333333

" ƒnƒCƒ‰ƒCƒg on
syntax enable

" •âŠ®Œó•â‚ÌF‚Ã‚¯ for vim7
hi Pmenu ctermbg=white ctermfg=darkgray
hi PmenuSel ctermbg=blue ctermfg=white
hi PmenuSbar ctermbg=0 ctermfg=9


"---------------------------------------------------------------------------------------------------
" ƒJƒ‰[ƒŠƒ“ƒOİ’è
"---------------------------------------------------------------------------------------------------
set expandtab   " TabƒL[‚ğ‹ó”’‚É•ÏŠ·


"---------------------------------------------------------------------------------------------------
" ƒL[ƒoƒCƒ“ƒhİ’è
"---------------------------------------------------------------------------------------------------
nnoremap <C-j> ;<C-w>j
nnoremap <C-k> :<C-w>k
nnoremap <C-l> ;<C-w>l
nnoremap <C-h> ;<C-w>h


"***************************************************************************************************
" ŠÖ”’è‹`
"***************************************************************************************************
function! GetB()
  let c = matchstr(getline('.'), '.', col('.') - 1)
  let c = iconv(c, &enc, &fenc)
  return String2Hex(c)
endfunction
" help eval-examples
" The function Nr2Hex() returns the Hex string of a number.
func! Nr2Hex(nr)
  let n = a:nr
  let r = ""
  while n
    let r = '0123456789ABCDEF'[n % 16] . r
    let n = n / 16
  endwhile
  return r
endfunc
" The function String2Hex() converts each character in a string to a two
" character Hex string.
func! String2Hex(str)
  let out = ''
  let ix = 0
  while ix < strlen(a:str)
    let out = out . Nr2Hex(char2nr(a:str[ix]))
    let ix = ix + 1
  endwhile
  return out
endfunc

" -- tab‚ÅƒIƒ€ƒj•âŠ®
function! InsertTabWrapper()
  if pumvisible()
    return "\<c-n>"
  endif
  let col = col('.') - 1
  if !col || getline('.')[col -1] !~ '\k\|<\|/'
    return "\<tab>"
  elseif exists('&omnifunc') && &omnifunc == ''
    return "\<c-n>"
  else
    return "\<c-x>\<c-o>"
  endif
endfunction