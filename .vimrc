set nocompatible

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
Plug 'tpope/vim-markdown'
Plug 'flazz/vim-colorschemes'
Plug 'pbondoer/vim-42header'
Plug 'w0rp/ale'
Plug 'justinmk/vim-syntax-extra'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()

filetype plugin on

" Prefer unix format for files
set fileformats=unix,dos

" Enable syntax highlighting
syntax on

" coloscheme
colorscheme badwolf

" Enable the status line at all times
set laststatus=2

" Enable 50 lines of command history
set history=50

" Enable the ruler
set ruler

" Set backspaces
set backspace=indent,eol,start

" Set tab width to 4
set tabstop=4
set shiftwidth=4

"Autoindent
set autoindent

" Make the relative path automatic
set autochdir

" Draw tabs and trailing spaces
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

" Automatically re-open files after they have changed without promping
set autoread

" Set the right margin
set colorcolumn=80

" Automatically split words at the margin
set wrap

" Disable automatic wrapping
set textwidth=0

" Make :Q and :W work like :q and :w
command! W w
command! Q q
command! Wq wq

" Make completion smarter
set ignorecase
set smartcase

" Do not echo the mode, ligthline will display it instead
set noshowmode

" set shortmess=filnxtToOc  ?

" Find search matcher as they are typed
set incsearch

" Configure the delay for custom chained keybinds
set timeoutlen=250

" Enable mouse
set mouse=a

" :Todo command
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

" --- rainbow parentheses settings ---

let g:rainbow_conf = {
\   'guifgs': ['#3b81e7', '#dccb3e', '#de2020', '#0bff22'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_'
\}

" Activate the plugin
let g:rainbow_active = 1

" --- Unite.vim plugin to consider --- 

" --- vim-lightline settings ---
let g:lightline = {
\   'mode_map': {
\       'n': 'N',
\       'i': 'I',
\       'R': 'R',
\       'v': 'V',
\       'V': 'V',
\       "\<C-v>": 'VV',
\       'c' : 'C',
\       's' : 'S',
\       'S' : 'S-LINE',
\       "\<C-s>": 'S-BLOCK',
\       't': 'TERMINAL',
\   },
\   'active': {
\       'left': [
\           ['mode', 'paste'],
\           ['readonly', 'filename', 'modified'],
\       ],
\       'right': [
\           ['lineinfo'],
\           ['python_status', 'vim_speech', 'filetype'],
\       ],
\   },
\   'component_function': {
\       'python_status': 'python_tools#statusline#GetStatus',
\       'vim_speech': 'vim_speech#statusline#GetStatus',
\   },
\}

" --- NerdTree settings ---

" Quit NERDTree automatically after opening a file with it
let g:NERDTreeQuitOnOpen = 1

let g:NERDTreeMouseMode = 3
let g:NERDTreeMapActivateNode = '<Space>'
map <C-o> :NERDTreeToggle<CR>

" --- ALE settings ---

let g:ale_warn_about_trainling_whitespace = 1
let g:ale_completion_enabled = 1
let g:ale_c_parse_makefile = 1

" --- Clang completion settings ---
"let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

