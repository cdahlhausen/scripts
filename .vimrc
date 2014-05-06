set selectmode=mouse
set backupdir=/tmp
set directory=/tmp
set guifont=Lucida_Console:h8
set guioptions-=T
set errorfile=/tmp/rutkowsk.errors.log
set autochdir
set ic
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