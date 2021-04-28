" Airline theme
let g:airline_theme='base16_nord'
let g:airline_powerline_fonts = 1

" Goyo Zen mode
nnoremap <leader>z :Goyo<CR>

" Nerdtree
nnoremap <leader>b :NERDTreeToggle<CR>

" override vim commentary comment types
autocmd FileType php setlocal commentstring=//\ %s "php = //

" set the nord color scheme
colorscheme nord