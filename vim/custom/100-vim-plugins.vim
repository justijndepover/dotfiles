" vim plug
" to install run: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" add plugins by adding them in the list and run :PlugInstall
" update plugins by running :PlugUpdate <?pluginname>

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'folke/which-key.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
