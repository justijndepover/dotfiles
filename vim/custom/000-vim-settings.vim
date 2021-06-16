if has('nvim')
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
endif

" set leader key
" map <space> <Leader>
let mapleader = " "

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

" Stop highlight after search results
set nohlsearch

" Automatically highlight search while still typing
set incsearch

" Use spaces instead of tabs
set expandtab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" auto indent smartly
set smartindent

" don't auto wrap text
set nowrap

" Enable syntax highlighting
syntax enable
syntax on
filetype plugin indent on

" set utf 8 as standard encoding
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git etc anyway...
set nobackup
set nowritebackup
set noswapfile

" set a scrolling offset
set scrolloff=8

" add extra column for editor, linting, ...
set signcolumn=yes

" make vim refresh more often
set updatetime=50

" Map capital S to replace all
nnoremap S :%s//g<left><left>

" make the clipboard the same as the mac clipboard
set clipboard=unnamed

" keep buffer state
" set hidden

" split open at bottom or right
set splitbelow splitright

" Navigate splits
nnoremap <leader>fj <C-W><C-J>
nnoremap <leader>fk <C-W><C-K>
nnoremap <leader>fl <C-W><C-L>
nnoremap <leader>fh <C-W><C-H>

" Navigate buffers
nnoremap <leader>tl :bnext<CR>
nnoremap <leader>tj :bnext<CR>
nnoremap <leader>th :bprev<CR>
nnoremap <leader>tk :bprev<CR>

" redo
nnoremap <leader>r <C-R>

" indenting doesn't exit visual mode
" vnoremap < <gv
" vnoremap > >gv

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set foldlevelstart=99

" show leading spaces
set list
set listchars=tab:→\ ,space:⋅

" set amount of time before keymapping completes
set timeoutlen=300
