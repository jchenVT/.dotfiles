set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
" Plugin for youcomplete me
Plugin 'rdnetto/YCM-Generator'
"ycm extra conf geneator
"added a alias command to autogenerate when cmakefiles exist
Plugin 'airblade/vim-gitgutter'
"this shows removals, additiosn and changes in a git repo.
Plugin 'nathanaelkane/vim-indent-guides'
"indents and shit
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"===========================================================
"youcompleteme stuff here 
"this tells YCM to use the c++ version of YCM when editing any file
"but only uses when ycm cant find extra conf in current directroy
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_complete_in_comments=1
let g:ycm_key_list_select_completion=['<TAB>', '<Enter>']
let g:ycm_autoclose_preview_window_after_insertion=1

"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]

"===============================================================================
"vim only stuff here
set autoindent
"this broken idk why maybe this'll fix it
"somehow smartidnent is even mroe fucked
"set smartindent
set tabstop=4 "number of VISUAL spaces
set shiftwidth=4
set number "show line numbers
set showcmd "show command in bottomr bar
set cursorline "highlight current line
set wildmenu "visual autocompelete for command
set lazyredraw "redraw screen less often
set showmatch "highlight something lol
set incsearch "search as characters are etnered
set hlsearch "highlights matches
"so backspace is weird and this fixes taht? idk
set backspace=indent,eol,start

" jk is escape
" escape is jk
" jk is wavy
inoremap jk <esc>
inoremap JK <esc>
inoremap kj <esc>
colorscheme jellybeans "shits amazing
set nowrap
syntax enable  " enable syntax processing
