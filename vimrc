" Set up Pathogen to install packages
call pathogen#infect()
call pathogen#helptags()                    " load plugin help files
 
" syntax highlighting
syntax on
filetype plugin indent on

if has('gui_running')
    set background=light
    colorscheme solarized
    set guioptions-=T
else
    set background=dark
endif

" Alternative to <ESC>
inoremap jk <Esc>
inoremap jj <Esc>

" Alternative to access Ex mode
nnoremap ;; : 
vnoremap ;; : 

" Make Y behave like other capitals
map Y y$

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Set up saving of settings to viminfo
set viminfo='100,f1

"" Save fold status between sessions
"au BufWinLeave ?* mkview
"au BufWinEnter ?* silent loadview

" Move between screen lines when wrapping lots of text
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Move easily between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Label the tabs with numbers
set guitablabel=%N:\ %t\ %M

" Set the font for the gui
set guifont=DejaVu\ Sans\ Mono\ 12

" Set line numbers to be on by default
set nu!

" Set the dictionary file
set dictionary+=/usr/share/dict/words
set dictionary+=/home/jsteven5/.vim/spell/en.utf-8.add

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
" nnoremap / /\v " Only use very magic for certain searches
" vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch " Highlight results

" Wipe the highighting on searches
"""""let mapleader = "\"
nnoremap <leader><space> :noh<cr>

" NERDTree easy access
map <silent> <leader>n :NERDTreeFocus<CR>

" Indentation and selecting
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
map <Leader>a ggVG  " select all
" Set default clipboard to plus register
set clipboard=unnamedplus

" Supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Flake 8
let g:flake8_ignore="E265" "Ignore comments with ## error

" Store backup and swap files in a central directory
set undofile
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Vim-IPython run cell change shortcut
map  <buffer> <silent> <S-F5>      <C-o><Plug>(IPython-RunCell)
imap  <buffer> <silent> <S-F5>      <C-o><Plug>(IPython-RunCell)

" Add thesaurus files
set thesaurus+=/home/jsteven5/dotfiles/vim/thesaurus/files/mthesaur.txt
set thesaurus+=/home/jsteven5/dotfiles/vim/thesaurus/files/roget13a.txt

" Settings for Syntastic code checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["ruby", "php"],
    \ "passive_filetypes": ["puppet"] }
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

