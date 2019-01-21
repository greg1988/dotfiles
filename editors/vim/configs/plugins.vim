
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
Plugin 'terryma/vim-smooth-scroll'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'vim-vdebug/vdebug'
Plugin 'idanarye/vim-merginal'
Plugin 'easymotion/vim-easymotion'


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

" Shortcuts for smooth scroll (Distance, Duration, Speed)
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.vim/ultisnips"
let g:UltiSnipsSnippetDirectories=["ultisnips"]

" Debuggin options
" Setup config defaults for more info see :help VdebugOptionsList
let g:vdebug_options = {}
" Only break at breakpoints
let g:vdebug_options.break_on_open=0
