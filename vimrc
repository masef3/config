call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/dense-analysis/ale.git'

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
syntax on
set background=dark
