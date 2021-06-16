" Airline theme
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1

" override vim commentary comment types
autocmd FileType php setlocal commentstring=//\ %s "php = //

" set the nord color scheme
colorscheme nord

nnoremap <leader>o :GFiles<CR>
nnoremap <leader>c :Commits<CR>
