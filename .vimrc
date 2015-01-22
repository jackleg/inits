set encoding=utf8
set fileencodings=utf8
set notitle
set noicon
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set background=dark
set showmatch
set novb           " visual bell.
set nocompatible " Use Vim defaults (much better!)
set ai           " always set autoindenting on
set cindent
set smartindent
set nobackup
set backup      " keep a backup file
set history=1000         " keep 100 lines of command line history
set ruler        " show the cursor position all the time
set ts=4
set shiftwidth=4
set softtabstop=4
set nu          " show line number
"set expandtab   " set expandtab
set hlsearch
set incsearch
set paste

map ,m :! make %<<CR>
map ,c :! gcc -Wall -o %< %<CR>
map ,C :! g++ -Wall -o %< %<CR>
map ,r :! ./%<<CR>

set tags=./tags,tags,../tags,../../tags,../../../tags

syntax on
filetype on
