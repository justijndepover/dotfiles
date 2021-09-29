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
" colorscheme nord

" light - mirage - dark
set termguicolors
let ayucolor="mirage" 
colorscheme ayu

nnoremap <leader>o :GFiles --cached --others<CR>
nnoremap <leader>c :Commits<CR>

" remap gitgutter
let g:gitgutter_map_keys = 0
nnoremap <leader>gs :GitGutterStageHunk<CR>
nnoremap <leader>gu :GitGutterUndoHunk<CR>
nnoremap <leader>gp :GitGutterPreviewHunk<CR>

