set nocompatible
syntax on

"Autoupdate plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"256 colors
if !has('gui_running')
	set t_Co=256
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-markdown'
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/vim-gitbranch'
Plug 'pbondoer/vim-42header'
Plug 'airblade/vim-gitgutter'
Plug 'nightsense/cosmic_latte'

call plug#end()

" coloscheme

set background=dark
colorscheme cosmic_latte

"Basic configuration needed
set autoindent "Automatic indentation
set backspace=indent,eol,start "To make the delete keyword behave like it supposed to behave
set tabstop=4 "Set tab size to 4 spaces, but keeping it a tab
set shiftwidth=4
set incsearch "Incremental search, changes higlight on input
set nowrap "wrap the lines by a word
set linebreak
set noerrorbells "Disable beeping
set novb
set nolist "This toggles on and off the newline character at the end of the line
set noswapfile
set number "Set line number
"set relativenumber "set line number relative to the current line
set ruler
set scrolloff=5
set showmatch "highlight matching braces
set shortmess=I "Avoiding errors
set showcmd
set noshowmode
set laststatus=2 "Necessary for lightline
set mouse=a "Enable mouse
set updatetime=100
set termguicolors
"highlight ColorColum ctermbg=black
"set colorcolumn=80 "Set column at 80 char length

"NerdTree configuration
map <C-o> :NERDTreeToggle<CR>
"Airline
let g:airline_theme='cosmic_latte_dark'
let g:airline_powerline_foints=1

"Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_checkers = ['gcc']
let g:syntastic_c_gcc_args = "-Wall -Werror -Wextra"

"Generate vim help files
packloadall
silent! helptags ALL
