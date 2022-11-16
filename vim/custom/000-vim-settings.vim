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
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" resize splits
nnoremap <c-j> :resize -2<CR>
nnoremap <c-k> :resize +2<CR>
nnoremap <c-l> :vertical resize -2<CR>
nnoremap <c-h> :vertical resize +2<CR>

" Navigate buffers with tab and shift tab in normal mode
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>

" indenting doesn't exit visual mode
vnoremap < <gv
vnoremap > >gv

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

" faster scrolling
nnoremap J 10j
nnoremap K 10k

" search the current selected text
vnoremap <leader>f y/\V<C-R>=escape(@",'/\')<CR><CR>

" move lines up and down with Alt + vim keys
" Ï => Alt + j
" È => Alt + k
nnoremap Ï :m .+1<CR>==
nnoremap È :m .-2<CR>==
inoremap Ï <Esc>:m .+1<CR>==gi
inoremap È <Esc>:m .-2<CR>==gi
vnoremap Ï :m '>+1<CR>gv=gv
vnoremap È :m '<-2<CR>gv=gv
