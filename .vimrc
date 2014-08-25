" ===================== VUNDLE ===================== "

filetype off                    " required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/

call vundle#begin()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" keep Plugin commands between vundle#begin/end
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()

" ===================== COLOURS ===================== "

syntax enable                   " enable syntax processing
colorscheme solarized           " use solarized colour scheme
set background=dark             " use solarized dark

" ===================== UI ===================== "

set number                      " show line numbers
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap long lines
set ruler                       " display current cursor position in lower right corner
set cursorline                  " highlight current line
set showmatch                   " highlight matching [{()}]
set scrolloff=5                 " keep at least 5 lines around the cursor
set list                        " show invisible characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " invisible characters list
set cmdheight=1                 " explicitly set the height of the command line
set laststatus=2                " always show statusline
set foldcolumn=1                " add a bit extra margin to the left
set showcmd                     " show the (partial) command as it’s being typed
set showmode                    " show the current mode
set title                       " show the filename in the window titlebar

" ===================== TABS ===================== "

set autoindent                  " set the cursor at same indent as line above
set smartindent                 " try to be smart about indenting (C-style)
set expandtab                   " tabs are spaces
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " spaces for each step of (auto)indent
filetype plugin indent on       " load filetype plugins and indent settings

" ===================== TEXT ===================== "

set encoding=utf8 nobomb        " use UTF-8 without BOM
set nohlsearch                  " turn off highlighting for searched expressions
set incsearch                   " highlight as we search however
set matchtime=5                 " blink matching chars for x seconds
set ignorecase                  " set case insensitivity
set smartcase                   " unless there's a capital letter

" ===================== BACKUPS ===================== "

set nobackup                    " dont create backup files
set nowritebackup               " dont create backup files while editing
set noswapfile                  " dont create swapfiles

" ===================== MISC ===================== "

set nocompatible                " disable vi compatability
set ttyfast                     " optimize for fast terminal connections
set nostartofline               " dont reset cursor to start of line when moving around
set modeline                    " respect modeline in files
set modelines=4                 " number of lines to check for initialization
