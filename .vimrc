set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" " alternatively, pass a path where Vundle should install bundles
" "let path = '~/some/path/here'
" "call vundle#rc(path)
"
" " let Vundle manage Vundle, required
" Bundle 'gmarik/vundle'
"
" " Keep bundle commands between here and filetype plugin indent on.
" " For Ansible formatting
Bundle 'chase/vim-ansible-yaml'
Bundle 'tpope/vim-surround'
" " For Go Language formatting
" Bundle 'jnwhiteh/vim-golang'
" " For HTML/CSS formatting
" Bundle 'mattn/emmet-vim'
" " For Chef script formatting
" Bundle 't9md/vim-chef'
"
filetype plugin indent on     " required
"
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.
" " Put your stuff after this line

set selectmode=mouse
set backupdir=/tmp
set directory=/tmp
set guifont=Lucida_Console:h8
set guioptions-=T
set errorfile=/tmp/rutkowsk.errors.log
set autochdir
set ic
set title
highlight StatusLineNC guifg=#ff0000 guibg=#000000
highlight StatusLine guifg=#00ff00 guibg=#000000
set hls
hi Normal guibg=black guifg=white
hi Search guibg=white guifg=black
hi IncSearch guibg=white guifg=black
set tags=./tags
set mousef
set number
syntax on
set tabstop=2 softtabstop=4 shiftwidth=2 expandtab number ruler term=builtin_ansi title hlsearch
colorscheme koehler
set nocompatible
filetype plugin indent on
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue


" %F(Full file path)
" " %m(Shows + if modified - if not modifiable)
" " %r(Shows RO if readonly)
" " %<(Truncate here if necessary)
" " \ (Separator)
" " %=(Right align)
" " %l(Line number)
" " %v(Column number)
" " %L(Total number of lines)
" " %p(How far in file we are percentage wise)
" " %%(Percent sign)
set statusline=%F%m%r%<\ %=%l,%v\ [%L]\ %p%%
"
" " Change the highlighting so it stands out
hi statusline ctermbg=white ctermfg=black
"
" " Make sure it always shows
set laststatus=2
"
