
execute pathogen#infect()

syntax on

set nocompatible

set t_Co=256

colorscheme zenburn

" Enable filetype plugin
filetype plugin on
filetype indent on

set autoindent
set smartindent
set ttyfast

set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set vb t_vb=
set ruler
set incsearch

set tags=./tags;

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


