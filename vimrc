call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/dense-analysis/ale.git'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/drsooch/gruber-darker-vim.git'
Plug 'metalelf0/base16-black-metal-scheme'
Plug 'r-bar/ebnf.vim'
Plug 'https://github.com/preservim/vim-markdown.git'
Plug 'https://github.com/godlygeek/tabular.git'

call plug#end()

" general
syntax on
set t_md=
set number
set relativenumber

" indentation
set smartindent
set autoindent

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" for showing errors in status bar
let g:airline#extensions#ale#enabled = 1

" for not showing error signs in columns
let g:ale_sign_column_always = 0
let g:ale_signs_enabled = 0
set signcolumn=no

" linters
let g:ale_linters = {
\   'c': ['gcc'],
\   'cpp': ['clang-tidy', 'clang'],
\   'python': ['flake8', 'mypy'],
\   'bash': ['shellcheck'],
\   'go': ['golangci-lint'],
\}

highlight ALEError ctermbg=none ctermfg=red cterm=underline
highlight ALEWarning ctermbg=none ctermfg=yellow cterm=underline

set t_Co=256
set background=dark
set termguicolors
"colorscheme masef

let g:ale_cpp_cc_options = '-std=c++23 -Wall'
let g:ale_cpp_clang_options = '-std=c++23 -Wall'

highlight LineNr guibg=NONE ctermbg=NONE
highlight CursorLineNr guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE

highlight ExtraWhitespace guibg=LightGreen ctermbg=LightGreen
match ExtraWhitespace /\s\+$/
