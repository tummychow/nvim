call plug#begin('~/.config/nvim/plugged')

Plug 'gerw/vim-HiLinkTrace', { 'on': ['HLT', '<Plug>HiLinkTrace'] }
Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'

call plug#end()

" print cursor position
set ruler
" print line numbers
set number
" show partial commands
set showcmd
" highlight the cursor's current visual line
set cursorline
" enable syntax highlighting
syntax on
" enable mouse in all modes
set mouse=a
" disable visual linewrap by default
set nowrap
" enable filetype detection, indent and type-specific plugins
filetype plugin indent on
" create vertical splits to the right
set splitright

colorscheme pallor

" remap f/t to sneak
nmap f <Plug>Sneak_s
xmap f <Plug>Sneak_s
omap f <Plug>Sneak_s
nmap t <Plug>Sneak_S
xmap t <Plug>Sneak_S
omap t <Plug>Sneak_S
" allow repeated f/t taps to iterate through matches
let g:sneak#s_next = 1
" f always goes forward, t always goes backward
let g:sneak#absolute_dir = 1
" prompt when you enter sneak
let g:sneak#prompt = 'sneak >'
" always streak
let g:sneak#streak = 1
" exit streak mode by pressing escape
let g:sneak#streak_esc = "\<esc>"
" do not special-case in file manager buffers
let g:sneak#map_netrw = 0
" remove sneak z text object
let g:sneak#textobject_z = 0
