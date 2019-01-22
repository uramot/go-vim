syntax on

set number
set smartindent
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'

call plug#end()

let g:go_fmt_command = "goimports"
