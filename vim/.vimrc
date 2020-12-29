for f in split(glob('~/.dotfiles/vim/custom/*.vim'), '\n')
  exe 'source' f
endfor
