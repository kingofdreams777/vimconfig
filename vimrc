" My vimrc. Let's hope it works this time
"

" Automate Installation of Vim Plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible


call plug#begin('~/.vim/plugged')

    Plug 'scrooloose/nerdtree'
    Plug 'dense-analysis/ale'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'jiangmiao/auto-pairs'
    Plug 'dracula/vim', {'as':'dracula'}
    Plug 'vim-syntastic/syntastic'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-fugitive'

call plug#end()

let g:dracula_colorterm = 0

" General Text Settings
set encoding=UTF-8
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
set autoindent
set smartindent
" UI and Nice to haves
set confirm
set number
set relativenumber
set nobackup
set nowrap
set showcmd
set showmode
set wildmenu
set wildmode=list:longest
set belloff=all
colorscheme dracula
" Searching
set incsearch
set showmatch


nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <space> :
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>


