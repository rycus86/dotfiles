set number                      " Show line numbers
set noswapfile                  " Don't use swapfile
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

set autoindent
set complete-=i
set showmatch
set smarttab
set showcmd
set showmode

set et
set tabstop=4
set shiftwidth=4
set expandtab

set nrformats-=octal
set shiftround

set mouse-=a

" Persistent undo
silent !mkdir ~/.vim/undo > /dev/null 2>&1
set undodir=~/.vim/undo
set undofile

