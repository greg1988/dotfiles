" Allow project specific vimrc files
set exrc
set secure

" --- UI Config ---
set number     " show current line number
set rnu        " show relative line numbers
set cursorline " highlight current line
set wildmenu   " visual autocomplete for commmand menu
set lazyredraw " redraw only when we need to
set showmatch  " highlight matching [{()}]
set splitbelow " open new vertical split to the bottom
set nowrap     " no wordwrap

" --- Searching ---
set path=$PWD/**
set incsearch " search as characters are entered
set hlsearch  " highlight matches
set ignorecase " ignore case
set smartcase " but respect any upper case chars that are entered
