set nocompatible " disable vi compatability
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/

call vundle#begin()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" keep Plugin commands between vundle#begin/end
Bundle 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on

set number " show line numbers
set showmode "always show what mode we're currently editing in
set nowrap " don't wrap long lines
set ruler " display current cursor position in lower right corner:


syntax enable

" theme
set background=dark
colorscheme solarized
