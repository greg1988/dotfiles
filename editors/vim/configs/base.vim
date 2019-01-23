" --- UI Config ---

set number     " show current line number
set rnu        " show relative line numbers
set cursorline " highlight current line
set wildmenu   " visual autocomplete for commmand menu
set lazyredraw " redraw only when we need to
set showmatch  " highlight matching [{()}]
set splitbelow " open new vertical split to the bottom
set nowrap     " no wordwrap
set tabstop=4  " cannot stand too much padding
set shiftwidth=4
set showcmd    " show the current command as it is being built

" --- Searching ---

set path=$PWD/**
set incsearch " search as characters are entered
set hlsearch  " highlight matches
set ignorecase " ignore case
set smartcase " but respect any upper case chars that are entered

" --- Advanced Configs ---

" Remove tailing space from lines on save
autocmd BufWritePre * %s/\s\+$//e

" Allow project specific vimrc files
set exrc
set secure

" Centralize vim swapfiles
set directory=~/.vim/swap,.
