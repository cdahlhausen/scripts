set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

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


" All of your Plugins must be added before the following line
call vundle#end()            " required



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
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
