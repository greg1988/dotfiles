
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
" @todo-greg automate setup of silver searcher? https://github.com/ggreer/the_silver_searcher#installing
Plugin 'rking/ag.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()


" =============================== Plugin configuration ====================


" Color scheme config
let base16colorspace=256
colorscheme base16-default-dark

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

   " Search for the highlighted word
  vnoremap <leader>G "hy:Ag "<C-r>h"<CR>
endif

" ========================= Airline Config ==============================
" Displays buffer information
let g:airline#extensions#tabline#enabled = 1
" Disable whitespace checks to keep bar clean
let g:airline#extensions#whitespace#enabled = 0
