" set shell
set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required


call plug#begin()


" code complete
" Plug 'Valloric/YouCompleteMe'
" Plug 'davidhalter/jedi-vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" template
Plug 'aperezdc/vim-template'

" write
Plug 'junegunn/goyo.vim'

" code
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" find
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'

" tag
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'

" comment
Plug 'tpope/vim-commentary'

" paste
Plug 'roxma/vim-paste-easy'

" debug
" Plug 'joonty/vdebug'
" Plug 'jaredly/vim-debug'

" test
Plug 'janko-m/vim-test'

" ui 
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-buftabline'
Plug 'ryanoasis/vim-devicons'

" align
Plug 'junegunn/vim-easy-align'

" mark
Plug 'kshenoy/vim-signature'

" check
Plug 'scrooloose/syntastic'

" file
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

" bazel
Plug 'google/vim-maktaba'
Plug 'bazelbuild/vim-bazel'

" docker
Plug 'ekalinin/Dockerfile.vim'
" Plug 'docker/docker'

" git
Plug 'tpope/vim-fugitive'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" makrdown
Plug 'plasticboy/vim-markdown'

" xml
Plug 'othree/xml.vim'


" php
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'kristijanhusak/deoplete-phpactor'

" html
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'

" javascipt
Plug 'pangloss/vim-javascript'

" golang
Plug 'fatih/vim-go'
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
" go 中的代码追踪，输入 gd 就可以自动跳转
Plug 'dgryski/vim-godef'
" go get -u github.com/stamblerre/gocode
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

" json
Plug 'elzr/vim-json'

" brower
" Plug 'yuratomo/w3m.vim'

Plug 'sheerun/vim-polyglot'

" fold
Plug 'tmhedberg/simpylfold'

" rust
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'timonv/vim-cargo'


" shell
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'shougo/vimshell.vim'
Plug 'metakirby5/codi.vim'

" python
Plug 'heavenshell/vim-pydocstring'
Plug 'python-mode/python-mode'
Plug 'plytophogy/vim-virtualenv'
Plug 'ivanov/vim-ipython'
Plug 'deoplete-plugins/deoplete-jedi'

" type
Plug 'Raimondi/delimitMate'


call plug#end()            " required
filetype plugin indent on    " required



"Set mapleader
let mapleader = ","

" user plugin config
" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:go_autodetect_gopath = 1
let g:go_auto_type_info = 1
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

" phpactor
" let g:phpactorPhpBin="/opt/php/bin/php"
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
" auto vimrc
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost $HOME/.vim/.vimrc source $MYVIMRC


" noremap <c-w> :w<CR>

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

" 退出插入模式指定类型的文件自动保存
au InsertLeave *.go,*.sh,*.php,*.py write


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
set number

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

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

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

let g:syntastic_c_config_file = '.syntastic_c_config'

filetype on

set autowrite
