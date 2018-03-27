let mapleader=","
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" https://github.com/altercation/vim-colors-solarized/issues/72#issuecomment-292697052
" fix for vim-airline solarized theme
set t_Co=256
syntax enable
let g:solarized_termtrans=1
let g:solarized_termcolors=16
let g:solarized_visibility="normal"
let g:solarized_contrast="normal"
set background=dark
colorscheme solarized

set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set colorcolumn=120

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

inoremap jj <ESC>
map <C-n> :NERDTreeToggle<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  let g:ctrlp_use_caching = 0
endif
