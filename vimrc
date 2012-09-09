set nocompatible               " be iMproved
filetype off                   " required!
set encoding=utf-8
set fileencodings=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac


"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"====================================Bundles================================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github

 Bundle 'scrooloose/nerdtree'
 Bundle 'wookiehangover/jshint'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'feng92f/minibufexpl.vim'
 Bundle 'dterei/VimBookmarking'
 Bundle 'altercation/vim-colors-solarized'
 Bundle 'tomtom/tcomment_vim'
 Bundle 'vim-scripts/AutoComplPop'
 " vim-scripts repos

 " non github repos
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

"let mapleader = ","
"let g:mapleader = ","

"Ever notice a slight lag after typing the leader key + command? This lowers
"the timeout.
set timeoutlen=500

"Write the old file out when switching between files.
set autowrite
" Set to auto read when a file is changed from the outside
set autoread

"Display current cursor position in lower right corner.
set ruler

"Switch between buffers without saving
set hidden


"=====================================Colors & Fonts ==========================

syntax enable
set guifont=Andale\ Mono\ 11
colorscheme desert

if has('gui_running')
    set background=dark
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t 
    "Hide MacVim toolbar by default
    set go-=T
else
    colorscheme blue
    set background=light
endif


"=====================================Indenting==========================
"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Show command in bottom right portion of the screen
set showcmd

"Show lines numbers
set number

"Prefer relative line numbering?
"set relativenumber"

"Indent stuff
set smartindent
set autoindent

"Always show the status line
set et laststatus=2

"Prefer a slightly higher line height
set linespace=4

set list
set listchars=tab:>-,trail:.,extends:>,precedes:<,nbsp:_,eol:¬
"Invisible character colors
highlight NonText guibg=#2a2a39
highlight SpecialKey guibg=#4a4a59

"===================Searching====================
"Better line wrapping 
set wrap
set textwidth=79
set formatoptions=qrn1

"Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

" case insensitive search
set ignorecase
set smartcase


"Hard-wrap paragraphs of text
nnoremap <leader>q gqip
"=========================
"Shortcut for editing  vimrc file in a new tab
nmap ,ev :tabedit $MYVIMRC<cr>

"===========Spliting and Switching==========
"Opens a vertical split and switches over (\v)
nnoremap <leader>v <C-w>v<C-w>l

"Saves time; maps the spacebar to colon
nmap <space> :

" easier window navigation
nmap <C-Left> <C-w>h
nmap <C-Down> <C-w>j
nmap <C-Up> <C-w>k
nmap <C-Right> <C-w>l

"===========Buffers===================
"Automatically change current directory to that of the file in the buffer
autocmd BufEnter * cd %:p:h

"===========NERDTree=================
"Shortcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle<cr>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"===========Mapping=================

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file

"Faster shortcut for commenting. Requires T-Comment plugin
map ,c <c-_><c-_>

"Map code completion to , + tab
"imap <tab> <C-x><C-o>

"Map escape key to jj -- much faster
imap jj <esc>

"Bubble single lines (kicks butt)
"http://vimcasts.org/episodes/bubbling-text/
"nmap <C-Up> ddkP
"nmap <C-Down> ddp
" Fast saving
nmap <leader>w :w!<cr>


"====================================================
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'distinguished'
" let g:Powerline_segments['ctrlp'] = ['ctrlp:regexp', 'ctrlp:navigation', 'ctrlp:path']
" let g:Powerline_segments['default'] = ['mode_indicator',
"                                                            \  'git_branch',
"                                                            \  'filename',
"                                                            \  'syntastic',
"                                                            \  'separator',
"                                                            \  'fileformat', 'encoding', 'filetype']
