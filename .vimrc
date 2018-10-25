" set shell
set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
" user plugin
Plugin 'mattn/emmet-vim'
Plugin 'aperezdc/vim-template'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'tpope/vim-surround'
Plugin 'ap/vim-buftabline'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" python
au BufNewFile,BufRead *.py
            \set tabstop=4
            \set softtabstop=4
            \set shiftwidth=4
            \set textwidth=79
            \set expandtab
            \set autoindent
            \set fileformat=unix


" youcomplete 
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"Set mapleader
let mapleader = ","


" user plugin config
" vim-templete
let g:templates_directory = ["~/.templates/"]
let g:templates_name_prefix = "t."
let g:templates_no_builtin_templates = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Highlight 
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Normal Set
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype
filetype plugin on
filetype indent on

" autoread
set autoread

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

"Always show current position
set ruler

" 解决插入模式下delete/backspce键失效问题
set backspace=2

" A buffer becomes hidden when it is abandoned
set hidden

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

set lazyredraw 

set magic

set showmatch 

set mat=2

" file encode
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Enable syntax highlighting
syntax enable 

try
    colorscheme desert
catch
endtry

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary
