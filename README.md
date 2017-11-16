# vim-cwl

# Download

```
mkdir -p ~/.vim/syntax
curl -o ~/.vim/syntax/cwl.vim https://raw.githubusercontent.com/manabuishii/vim-cwl/master/cwl.vim
```

# Add .vimrc

```
autocmd FileType cwl set iskeyword+=-
autocmd FileType cwl set iskeyword+=.
au BufRead,BufNewFile *.cwl set filetype=cwl
```
