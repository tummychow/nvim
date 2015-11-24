call plug#begin('~/.config/nvim/plugged')

Plug 'gerw/vim-HiLinkTrace', { 'on': ['HLT', '<Plug>HiLinkTrace'] }

call plug#end()

" disable vi compatibility
" note: neovim always sets this option
set nocompatible
" allow backspacing over eol, indents, and the start of insert
" note: this is the neovim default
set backspace=indent,eol,start
" print cursor position
set ruler
" print line numbers
set number
" show partial commands
set showcmd
" show matches as the pattern is typed
set incsearch
" show matches for the most recent pattern
set hlsearch
" highlight the cursor's current visual line
set cursorline
" enable syntax highlighting
syntax on
" enable mouse in all modes
set mouse=a
" enable filetype detection, indent and type-specific plugins
filetype plugin indent on
" always show status line
set laststatus=2 

colorscheme pallor
