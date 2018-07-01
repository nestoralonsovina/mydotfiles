set nocompatible
syntax on

" Vundle begins (install Vundle via brew install vundle)
" set the runtime path to include Vundle and initialize
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-markdown'
Plugin 'flazz/vim-colorschemes'

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on
"set colorscheme
set term=screen-256color
colorscheme Material

set autoindent
set bg=dark
set backspace=indent,eol,start
set expandtab
set incsearch
set laststatus=2
set linebreak
set noerrorbells
set nolist
set noswapfile
set novb
set nowrap
set number
set relativenumber
set ruler
set scrolloff=5
set showmatch
set shiftwidth=4
set shortmess=I
set showcmd
set showmode
set sidescrolloff=7
set smartcase
set softtabstop=4
set undolevels=1000
set nrformats-=octal

highlight ColorColumn ctermbg=black
set colorcolumn=80

"Airline
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts=1

"NERDTree

"toggle NERDTree with Ctrl+N
map <C-n> :NERDTreeToggle<CR>

"Gvim mods
set encoding=utf-8
set hidden
set history
set mouse=a

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=Lo

"Syntastic basic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
