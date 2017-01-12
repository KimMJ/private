" Vundle plugin
set nocompatible
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

cal vundle#begin()
	"alternatively, pass a path where Vundel should install plugins
	"call vundle#begin('~/some/path/here')
	"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
	"The following are examples of different formats supported.
	"Keep Plugin commands between vundle#begin/end.
	"plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
	"plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
	"Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
	"git repos on your local machine (i.e. when working on your own plugin
"Plugin 'file:///home/gmarik/path/to/plugin'
	"The sparkup vim script is in a subdirectory of this repo called vim.
	"Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	"All of your Plugins must be added before the following line

"Plugin 'The-NERD-Tree' "NERD-Tree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"	auto completion interface
Plugin 'Valloric/YouCompleteMe', { 'do': '.install.py --clang-completer' }
Plugin 'rdnetto/YCM-Generator', {'branch': 'stable'}

call vundle#end()	"required
filetype plugin indent on "required
	"To ignore plugin indent changes, instead use :
	"filetype plugin on
	"
	"Brief help
	":PluginList	- lists configured plugins
	":PluginInstall	- installs plugins; append '!' to update or just
	":PluginUpdate
	":PluginSearch foo	- searches for foo; append '!' to refresh local cache
	":PluginClean	- confirm removal of unused plugins; append '!' to auto-approve removal
	"
	"see :h vundle for more details or wiki for FAQ

" Syntax Highlighting
if has("syntax")
	syntax on
endif


if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif

" Indentations
set autoindent
set cindent
set smartindent
set smarttab
set expandtab

set nobackup "no backup file

set shiftwidth=2 "auto indent size
set ts=2 "tab size

set nu

set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set ruler

set title
set bs=indent,eol,start

set showcmd

" =================
"	General Settings
" =================

" use ctrl to move

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"don't use shift
map ; :

"	ctag setting
"set tags

" Key mappings
nnoremap <F9> :tabnew<CR>
nnoremap <F10> :tabclose<CR>
nnoremap <tab> :tabnext<CR>
nnoremap <S-tab> :tabprevious<CR>
nnoremap - :vertical res -5<CR>
nnoremap = :vertical res +5<CR>
nnoremap _ :res -10<CR>
nnoremap + :res +10<CR>


"	YouCompleteMe
" let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py'

" Nerdtree setting
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autoclose = 1
map <C-u> :NERDTreeTabsToggle<CR>

colorscheme jellybeans
