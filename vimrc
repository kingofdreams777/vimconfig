" My vimrc. Let's hope it works this time

set nocompatible

call plug#begin('~/.vim/plugged')

    Plug 'scrooloose/nerdtree'
    Plug 'dense-analysis/ale'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'jiangmiao/auto-pairs'
    Plug 'dracula/vim', {'as':'dracula'}
    Plug 'vim-syntastic/syntastic'
    Plug 'vim-airline/vim-airline'
call plug#end()

set encoding=UTF-8
set confirm
set number
set relativenumber
set expandtab
set nobackup
set nowrap
set incsearch
set showcmd
set showmode
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set backspace=indent,eol,start
set wildmenu
set belloff=all
colorscheme dracula

nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <space> :
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>


