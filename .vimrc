set nocompatible               " Don't make vim vi-compatibile

syntax on                      " Enable syntax highlighting

if has("autocmd")
    filetype plugin indent on
    "           │     │    └──── Enable file type detection
    "           │     └───────── Enable loading of indent file
    "           └─────────────── Enable loading of plugin files
endif

set autoindent                 " Copy indent to the new line

set backspace=indent           " ┐
set backspace+=eol             " │ Allow `backspace`
set backspace+=start           " ┘ in insert mode

set backupdir=~/.vim/backups   " Set directory for backup files

set backupskip=/tmp/*          " ┐ Don't create backups
set backupskip+=/private/tmp/* " ┘ for certain files

set clipboard=unnamed          " ┐
                               " │ Use the system clipboard
if has("unnamedplus")          " │ as the default register
    set clipboard+=unnamedplus " │
endif                          " ┘

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<Leader>a "\a before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

set cpoptions+=$               " When making a change, don't
                               " redisplay the line, and instead,
                               " put a `$` sign at the end of
                               " the changed text

color desert
set cursorline                 " Highlight the current line  
set directory=~/.vim/swaps     " Set directory for swap files
set encoding=utf-8 nobomb      " Use UTF-8 without BOM
set history=5000               " Increase command line history
set hlsearch                   " Enable search highlighting
set ignorecase                 " Ignore case in search patterns

set incsearch                  " Highlight search pattern as
                               " it is being typed

set laststatus=2               " Always show the status line

set lazyredraw                 " Do not redraw the screen while
                               " executing macros, registers
                               " and other commands that have
                               " not been typed

set listchars=tab:▸\           " ┐
set listchars+=trail:·         " │ Use custom symbols to
set listchars+=eol:↴           " │ represent invisible characters
set listchars+=nbsp:_          " ┘

set magic                      " Enable extended regexp
set mousehide                  " Hide mouse pointer while typing
set noerrorbells               " Disable error bells

set nojoinspaces               " When using the join command,
                               " only insert a single space
                               " after a `.`, `?`, or `!`

set nostartofline              " Kept the cursor on the same column
set number                     " Show line number. Disable temp with :set nonu
set relativenumber             " Show line numbers relative to cursor position, this is useful to move between lines. Disable temp with :set nornu

set numberwidth=5              " Increase the minimal number of
                               " columns used for the `line number`

set report=0                   " Report the number of lines changed
set ruler                      " Show cursor position

set scrolloff=5                " When scrolling, keep the cursor
                               " 5 lines below the top and 5 lines
                               " above the bottom of the screen

set shortmess=aAItW            " Avoid all the hit-enter prompts
set showcmd                    " Show the command being typed
set showmode                   " Show current mode
set spelllang=en_us            " Set the spellchecking language

set smartcase                  " Override `ignorecase` option
                               " if the search pattern contains
                               " uppercase characters

set synmaxcol=2500             " Limit syntax highlighting (this
                               " avoids the very slow redrawing
                               " when files contain long lines)

set tabstop=4                  " ┐
set softtabstop=4              " │ Set global <TAB> settings
set shiftwidth=4               " │ http://vimcasts.org/e/2
set noexpandtab                  " ┘

set ttyfast                    " Enable fast terminal connection
set undodir=~/.vim/undos       " Set directory for undo files
set undofile                   " Automatically save undo history
"set virtualedit=all            " Allow cursor to be anywhere

set visualbell                 " ┐
set noerrorbells               " │ Disable beeping and window flashing
set t_vb=                      " ┘ https://vim.wikia.com/wiki/Disable_beeping

set wildmenu                   " Enable enhanced command-line
                               " completion (by hitting <TAB> in
                               " command mode, Vim will show the
                               " possible matches just above the
                               " command line with the first
                               " match highlighted)

set winminheight=0             " Allow windows to be squashed

set tags=tags

set wildignore+=*.o

" Change cursor on insert mode
let &t_SI = "\e[3 q"
let &t_EI = "\e[2 q"

" Change cursor on visual mode
let &t_SV = "\e[6 q"
let &t_EV = "\e[2 q"

" Quicker window movement
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Go to previous buffer
nnoremap :bp <C-b>

" Load up all of our plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Show syntax highlighting groups for word under cursor
nmap <C-S-S> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
