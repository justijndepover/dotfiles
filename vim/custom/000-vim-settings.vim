" set leader key
" map <space> <Leader>
let mapleader = ","

" show line numbers
set number relativenumber

" show current position
set ruler

" enable wildmenu (tab completion in command line)
set wildmenu
set wildmode=longest:full,full

" enable mouse support
if has('mouse')
    set mouse=a
endif

" Ignore case when searching
set ignorecase

" When searchterm contains uppercase letters, search case sensitive
set smartcase

" Highlight search results
set hlsearch

" Automatically highlight search while still typing
set incsearch

" Delete highlighted text when pressing esc
" nnoremap <esc> :noh<return><esc>

" Use spaces instead of tabs
set expandtab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Enable syntax highlighting
syntax enable
syntax on

" set utf 8 as standard encoding
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set noswapfile

" Map capital S to replace all
nnoremap S :%s//g<left><left>
