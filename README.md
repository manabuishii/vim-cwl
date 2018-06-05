# vim-cwl

> Syntax for [Common Workflow Language](http://www.commonwl.org/)

## Install

### vim-plug

```vim
Plug 'manabuishii/vim-cwl'
```

### pathogen

```sh
git clone https://github.com/manabuishii/vim-cwl ~/.vim/bundle/vim-cwl
```

### Manual installation

First if you don't have following directory, create those.

```
mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/ftdetect
mkdir -p ~/.vim/ftplugin
```

After that (or already have), `git clone` and `cp`

```sh
git clone https://github.com/manabuishii/vim-cwl /tmp/vim-cwl
cp /tmp/vim-cwl/syntax/cwl.vim ~/.vim/syntax
cp /tmp/vim-cwl/ftdetect/cwl.vim ~/.vim/ftdetect
cp /tmp/vim-cwl/ftplugin/cwl.vim ~/.vim/ftplugin
```
