silent! call pathogen#runtime_append_all_bundles()

set nocompatible
set autoindent
set smartindent
set showmatch
set backspace=indent,eol,start
set nobackup
set noswapfile
set history=300
set ruler
set showcmd
set incsearch
set shiftwidth=2
set tabstop=2
set smarttab
set expandtab
set autoread
set autowrite
set title
set number
set nohlsearch
set ignorecase
tab all
set noerrorbells
set visualbell
set t_vb=
set cursorline
set nowrap

colorscheme railscasts

if has('mouse')
  set mouse=a
endif

if &t_Co > 2
  syntax on
endif

if has("autocmd")
  filetype plugin indent on

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif

  autocmd BufWritePost .vimrc source $MYVIMRC
endif
