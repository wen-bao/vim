set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'brookhong/cscope.vim'

Bundle 'davidhalter/jedi-vim'
Bundle 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

" jedi
let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0

" cscope
map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>

set guifont=Courier_New:h10:cANSI
set shiftwidth=4
set nu
set cc=80
set ruler
set backspace=indent,eol,start

set cursorline

autocmd FileType python set tabstop=4 | set expandtab | set autoindent
