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
Plugin 'tpope/vim-surround'
Plugin 'ap/vim-buftabline'
Plugin 'tpope/vim-fugitive'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'docker/docker'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'elzr/vim-json'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'yuratomo/w3m.vim'
Plugin 'racer-rust/vim-racer'

Plugin 'mattn/webapi-vim'
Plugin 'thaerkh/vim-workspace'
Plugin 'mattn/gist-vim'
Plugin 'shougo/vimproc.vim'
Plugin 'tmhedberg/simpylfold'

" shell
Plugin 'shougo/vimshell.vim'

" python
" Plugin 'Vimjas/vim-python-pep8-indent'
" Plugin 'vim-scripts/indentpython.vim'
Plugin 'python-mode/python-mode'

" paste
Plugin 'roxma/vim-paste-easy'

call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=syntax
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
let g:templates_directory = ["~/.vim/templates/"]
let g:templates_name_prefix = "t."
let g:templates_no_builtin_templates = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['pylint']

" Highlight 
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif

" ultisnip
let g:UltiSnipsExpandTrigger="<c-s>"

" workspace
nnoremap <leader>s :ToggleWorkspace<CR>
" nerdtree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

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
syntax on

try
    set background=dark
catch
endtry

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary

" ex mode commands made easy 用于快速进入命令行
nnoremap ; :

" set paste
set pastetoggle=<leader>p

" ctags
set tags=tags

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 

" 设置标签子窗口的宽度 
let tagbar_width=32 

" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1

" set tagbar map
nnoremap <Leader>ilt :TagbarToggle<CR> 
nnoremap <Leader>ct  :TagbarClose<CR>

filetype on

set autowrite
