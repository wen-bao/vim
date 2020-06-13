set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'

Bundle 'davidhalter/jedi-vim'
Bundle 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0

set guifont=Courier_New:h10:cANSI
set shiftwidth=4
set nu
set cc=80
set ruler
set backspace=indent,eol,start

set cursorline

autocmd FileType python set tabstop=4 | set expandtab | set autoindent
