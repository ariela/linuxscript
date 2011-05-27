" vim: set ts=4 sw=4 sts=0:

"---------------------------------------------------------------------------------------------------
" ��{�ݒ�
"---------------------------------------------------------------------------------------------------
set nocompatible                 " vi�݊��Ȃ�
let mapleader = ","              " �L�[�}�b�v���[�_�[
set scrolloff=5                  " �X�N���[�����̗]���m��
set textwidth=0                  " ��s�ɒ������͂������Ă��Ă������܂�Ԃ������Ȃ�
set nobackup                     " �o�b�N�A�b�v���Ȃ�
set autoread                     " ���ŏ���������ꂽ�玩���œǂݒ���
set noswapfile                   " �X���b�v�t�@�C�����Ȃ�
set hidden                       " �ҏW���ł����̃t�@�C�����J����悤�ɂ���
set backspace=indent,eol,start   " �o�b�N�X�y�[�X�łȂ�ł�������悤��
set formatoptions=lmoq           " �e�L�X�g���`�I�v�V�����C�}���`�o�C�g�n��ǉ�
set vb t_vb=                     " �r�[�v���Ȃ炳�Ȃ�
set browsedir=buffer             " Explore�̏����f�B���N�g��
set whichwrap=b,s,h,l,<,>,[,]    " �J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���
set showcmd                      " �R�}���h���X�e�[�^�X�s�ɕ\��
set showmode                     " ���݂̃��[�h��\��
set viminfo='50,<1000,s100,\"50  " viminfo�t�@�C���̐ݒ�
set modelines=0                  " ���[�h���C���͖���

" OS�̃N���b�v�{�[�h���g�p����
set clipboard+=unnamed

"�����N���������́A�V�X�e���̃N���b�v�{�[�h�ɓ����"
set clipboard=unnamed
" �}�����[�h��Ctrl+k�������ƃN���b�v�{�[�h�̓��e��\��t������悤�ɂ��� "
imap <C-V>  <ESC>"*pa


"---------------------------------------------------------------------------------------------------
" �X�e�[�^�X���C���ݒ�
"---------------------------------------------------------------------------------------------------
"�X�e�[�^�X���C������ɕ\���i2�s�j
set laststatus=2

"�J�[�\�������s�ڂ̉���ڂɒu����Ă��邩��\������
set ruler

"�X�e�[�^�X���C���ɕ����R�[�h�Ɖ��s������\������
if winwidth(0) >= 120
  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=[%{GetB()}]\ %l,%c%V%8P
else
  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %f%=[%{GetB()}]\ %l,%c%V%8P
endif

"���̓��[�h���A�X�e�[�^�X���C���̃J���[��ύX
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"���͒��̃R�}���h���X�e�[�^�X�ɕ\������
set showcmd

"---------------------------------------------------------------------------------------------------
" �\���ݒ�
"---------------------------------------------------------------------------------------------------
set showmatch       "���ʓ��͎��̑Ή����銇�ʂ�\��
set number          "�s�ԍ���\������
set list            "�s�������\��
"�s�������\�����@
set listchars=eol:\ ,tab:>.,trail:_,extends:>,precedes:< " �s�������̕\���`��
set display=uhex    "�󎚕s�\������16�i���ŕ\��

" �S�p�X�y�[�X�̕\��
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /�@/

"�^�u�̍����ɃJ�[�\���\��
highlight SpecialKey cterm=underline ctermfg=gray guifg=gray

" �J�[�\���s���n�C���C�g
set cursorline
" �J�����g�E�B���h�E�ɂ̂݌r��������
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

:set lazyredraw " �R�}���h���s���͍ĕ`�悵�Ȃ�
:set ttyfast    " �����^�[�~�i���ڑ����s��


"---------------------------------------------------------------------------------------------------
" �C���f���g�ݒ�
"---------------------------------------------------------------------------------------------------
set autoindent  "�I�[�g�C���f���g����
set paste       "�y�[�X�g����autoindent�𖳌���(on�ɂ����autocomplpop.vim�������Ȃ�)
set smartindent " �V�����s���J�n�����Ƃ��ɁA�V�����s�̃C���f���g�����ݍs�Ɠ����ʂɂ���B
set cindent     "C�v���O�����t�@�C���̎����C���f���g���n�߂�

"�^�u����ݒ肷��
set tabstop=4
set shiftwidth=4
set softtabstop=0

if has("autocmd")
  "�t�@�C���^�C�v�̌�����L���ɂ���
  filetype plugin on
  "���̃t�@�C���^�C�v�ɂ��킹���C���f���g�𗘗p����
  filetype indent on
  " ������ft�ł̓C���f���g�𖳌���
  "autocmd FileType php filetype indent off

  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif


"---------------------------------------------------------------------------------------------------
" �����E�⊮�ݒ�
"---------------------------------------------------------------------------------------------------
set wildmenu            " �R�}���h�⊮������
set wildchar=<tab>      " �R�}���h�⊮���J�n����L�[
set wildmode=list:full  " ���X�g�\���C�Œ��}�b�`
set history=1000        " �R�}���h�E�����p�^�[���̗���
set complete+=k         " �⊮�Ɏ����t�@�C���ǉ�
"tab�ŃI���j�⊮
inoremap <tab> <c-r>=InsertTabWrapper()<cr>


"---------------------------------------------------------------------------------------------------
" �����ݒ�
"---------------------------------------------------------------------------------------------------
set wrapscan   " �Ō�܂Ō���������擪�֖߂�
set ignorecase " �啶������������
set smartcase  " ����������ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set incsearch  " �C���N�������^���T�[�`
set hlsearch   " �����������n�C���C�g
"Esc��2�񉟂��Ńn�C���C�g����
nmap <ESC><ESC> :nohlsearch<CR><ESC>


"---------------------------------------------------------------------------------------------------
" �G���R�[�h�ݒ�
"---------------------------------------------------------------------------------------------------
if &encoding !=# 'utf-8'
    set encoding=japan
    set fileencoding=japan
endif
if has('iconv')
    let s:enc_euc = 'euc-jp'
    let s:enc_jis = 'iso-2022-jp'
    " iconv��eucJP-ms�ɑΉ����Ă��邩���`�F�b�N
    if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
        let s:enc_euc = 'eucjp-ms'
        let s:enc_jis = 'iso-2022-jp-3'
    " iconv��JISX0213�ɑΉ����Ă��邩���`�F�b�N
    elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
        let s:enc_euc = 'euc-jisx0213'
        let s:enc_jis = 'iso-2022-jp-3'
    endif
    " fileencodings���\�z
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
    " �萔������
    unlet s:enc_euc
    unlet s:enc_jis
endif
" ���{����܂܂Ȃ��ꍇ�� fileencoding �� encoding ���g���悤�ɂ���
if has('autocmd')
    function! AU_ReCheck_FENC()
        if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
            let &fileencoding=&encoding
        endif
    endfunction
    autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" ���s�R�[�h�̎����F��
set fileformats=unix,dos,mac
" ���Ƃ����̕����������Ă��J�[�\���ʒu������Ȃ��悤�ɂ���
if exists('&ambiwidth')
    set ambiwidth=double
endif


"---------------------------------------------------------------------------------------------------
" �J���[�����O�ݒ�
"---------------------------------------------------------------------------------------------------
" �^�[�~�i���^�C�v�ɂ��J���[�ݒ�
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86" || &term =~ "xterm-256color"
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
elseif &term =~ "xterm-color"
    set t_Co=8
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

"�|�b�v�A�b�v���j���[�̃J���[��ݒ�
"hi Pmenu guibg=#666666
"hi PmenuSel guibg=#8cd0d3 guifg=#666666
"hi PmenuSbar guibg=#333333

" �n�C���C�g on
syntax enable

" �⊮���̐F�Â� for vim7
hi Pmenu ctermbg=white ctermfg=darkgray
hi PmenuSel ctermbg=blue ctermfg=white
hi PmenuSbar ctermbg=0 ctermfg=9


"---------------------------------------------------------------------------------------------------
" �J���[�����O�ݒ�
"---------------------------------------------------------------------------------------------------
set expandtab   " Tab�L�[���󔒂ɕϊ�


"---------------------------------------------------------------------------------------------------
" �L�[�o�C���h�ݒ�
"---------------------------------------------------------------------------------------------------
nnoremap <C-j> ;<C-w>j
nnoremap <C-k> :<C-w>k
nnoremap <C-l> ;<C-w>l
nnoremap <C-h> ;<C-w>h


"***************************************************************************************************
" �֐���`
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

" -- tab�ŃI���j�⊮
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