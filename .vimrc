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

" code complete
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'davidhalter/jedi-vim'
Plugin 'shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
" user plugin

" template
Plugin 'aperezdc/vim-template'

" code
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" find
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'

" tag
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

" comment
Plugin 'tpope/vim-commentary'

" paste
Plugin 'roxma/vim-paste-easy'

" debug
" Plugin 'joonty/vdebug'
" Plugin 'jaredly/vim-debug'

" test
Plugin 'janko-m/vim-test'

" ui 
Plugin 'vim-airline/vim-airline'
Plugin 'ap/vim-buftabline'

" mark
Plugin 'kshenoy/vim-signature'

" check
Plugin 'scrooloose/syntastic'

" file
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

" docker
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'docker/docker'

" git
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'

" makrdown
Plugin 'plasticboy/vim-markdown'

" html
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'

" javascipt
Plugin 'pangloss/vim-javascript'

" golang
Plugin 'fatih/vim-go'

" json
Plugin 'elzr/vim-json'

" brower
Plugin 'yuratomo/w3m.vim'

Plugin 'sheerun/vim-polyglot'
Plugin 'shougo/vimproc.vim'

" fold
Plugin 'tmhedberg/simpylfold'

" rust
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Plugin 'timonv/vim-cargo'


" shell
Plugin 'shougo/vimshell.vim'

" python
Plugin 'heavenshell/vim-pydocstring'
Plugin 'python-mode/python-mode'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'ivanov/vim-ipython'

" type
Plugin 'Raimondi/delimitMate'


call vundle#end()            " required
filetype plugin indent on    " required

" auto vimrc
autocmd BufWritePost $MYVIMRC source $MYVIMRC

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
" let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_path_to_python_interpreter='/usr/bin/python2.7'



"Set mapleader
let mapleader = ","


" user plugin config
" deoplete
" Use deoplete.
let g:deoplete#enable_at_startup = 1

" python-mode
let g:pymode_trim_whitespaces = 1
let g:pymode_lint_checkers = ['pylint']
" let g:pymode_python = 'python3'
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_rope = 1
let g:pymode_trim_whitespaces = 1

" LanguageClient
set hidden
let g:LanguageClient_serverCommands = {
   \ 'python':['pyls'],
 \ }
noremap <F5> :call LanguageClient_contextMenu()<CR>

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

" ctrlp
nmap <Leader>p :CtrlP<CR>

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
" fast esc
inoremap ;; <Esc>

" set paste
set pastetoggle=<leader>p

" ctags
set tags=tags

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 

" 设置标签子窗口的宽度 
let tagbar_width=32 

" tagbar 子窗口中不显示冗余帮助信息 
nnoremap <Leader>ct  :TagbarClose<CR>
let g:tagbar_compact=1

" set tagbar map
nnoremap <Leader>to :TagbarToggle<CR> 

filetype on

set autowrite
