set nu
"set autoindent
"set ts=4
"set sw=4
set expandtab
set shiftwidth=2
set tabstop=4
set hlsearch
set laststatus=2
set statusline+=%F
let g:ycm_global_ycm_extra_conf = "~/Templates/.ycm_extra_conf.py"

"settings for standard-format
let g:syntastic_javascript_checkers = ['standard']
autocmd bufwritepost *.js silent !standard-format -w %
set autoread

"settings for syntastic starts
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"settings for syntastic ends

"Configuration to install Plugins on vim from github"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/syntastic'
"Plugin 'user/L9', {'name': 'newL9'}
call vundle#end()
filetype plugin indent on



"Colors Configuration
set t_Co=256
syntax on
set background=dark
colorscheme distinguished


Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
