" syntax highlighting
syntax on
filetype plugin indent on

" Alternative to <ESC>
inoremap jk <Esc>
inoremap jj <Esc>

" Make Y behave like other capitals
map Y y$

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move between screen lines when wrapping lots of text
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Label the tabs with numbers
set guitablabel=%N:\ %t\ %M

" Set the font for the gui
set guifont=DejaVu\ Sans\ Mono\ 12

" Set line numbers to be on by default
set nu!

set nocompatible
set modelines=0

" indentation
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

" Set up word wrapping on individual words with nice settings
set wrap
set linebreak
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" 'Tame' searching and replacing
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch " Highlight results

" Wipe the highighting on searches
"""""let mapleader = "\"
nnoremap <leader><space> :noh<cr>


map <Leader>a ggVG  " select all
" Set default clipboard to plus register
set clipboard=unnamedplus
