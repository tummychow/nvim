call plug#begin('~/.config/nvim/plugged')

Plug 'gerw/vim-HiLinkTrace', { 'on': ['HLT', '<Plug>HiLinkTrace'] }
Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

Plug 'othree/html5.vim'
Plug 'fatih/vim-go'

call plug#end()

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

" markdown configuration tweaks
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown set wrap

" go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1

" print cursor position
set ruler
" print line numbers
set number
" wildmenu completion should use longest common prefix rather than
" first match
set wildmode=longest:full
" show partial commands
set showcmd
" highlight the cursor's current visual line
set cursorline
" enable syntax highlighting
syntax on
" enable mouse in all modes
set mouse=a
" set xterm title
set title
" disable visual linewrap by default
set nowrap
" but if we do use wrap, we probably want to break at a word boundary
set linebreak
" enable filetype detection, indent and type-specific plugins
filetype plugin indent on
" create vertical splits to the right
set splitright
" disable guicursor
" right now there is no way to restore guicursor to its "original" setting
" https://github.com/neovim/neovim/issues/4396#issuecomment-302945410
" this is an inherent limitation of the cursor escape code
" st doesn't support a reset-to-default extension for this escape code
" https://git.suckless.org/st/tree/st.c?id=c63a87cd936c1eeef14c4c21572e5b782d3df4bc#n2473
set guicursor=

" use visual jk, works more intuitively when wrap is on
nnoremap j gj
nnoremap k gk

colorscheme pallor
