set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/taglist.vim'
Bundle 'altercation/vim-colors-solarized'
" Plugin 'bling/vim-airline'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'moll/vim-bbye'

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


"--------------
"" Color Scheme
"--------------
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"----------------
"" 編輯器基本設定
"----------------

" 文件類型自動識別, Vundle要求必須為off
" filetype on
filetype plugin on
filetype plugin indent on

" 默認顯示行號
set nu

" 設置（軟）製表符寬度為4：
set tabstop=4
set softtabstop=4
   
" 設置自動縮進：即每行的縮進值與上一行相等；使用 noautoindent 取消設置：
set autoindent
   
" 設置（自動）縮進的空格數為4
set shiftwidth=4
     
" 設置 使用 C/C++ 語言的自動縮進方式：
set cindent
     
" 智能縮進
set smartindent

"在狀態欄顯示正在輸入的命令
set showcmd
 
"為方便複製，用<F2>開啟/關閉行號顯示:
nnoremap <F2> :set nonumber!<CR>

"搜索的時候即時顯示結果
set incsearch
 
" 高亮搜索結果
set hlsearch
   
" 禁止循環查找
set nowrapscan
    
"  設置匹配模式，顯示匹配的括號
set showmatch

" 智能補全
set completeopt=longest,menu
  
" 設置歷史記錄為100條
set history=100

" 標尺，用於顯示光標位置的行號和列號，逗號分隔。每個窗口都有自己的標尺。如果窗口有狀態行，標尺在那裡顯示。否則，它顯示在屏幕的最後一行上。
set ruler
  
" 括號引號補全
:inoremap ( ()<ESC>i
:inoremap { {<CR>}<ESC>O
:inoremap [ []<ESC>i
   
" 摺疊設置
set foldmethod=syntax " 用語法高亮來定義摺疊
set foldlevel=100 " 啟動vim時不要自動摺疊代碼

" WinManager设置
" " NERD_Tree集成到WinManager
let g:NERDTree_title="[NERDTree]" 
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" 键盘映射，同时加入防止因winmanager和nerdtree冲突而导致空白页的语句
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
" 设置winmanager的宽度，默认为25
let g:winManagerWidth=30 
" 窗口布局
let g:winManagerWindowLayout='NERDTree|TagList'
" 如果所有编辑文件都关闭了，退出vim
let g:persistentBehaviour=0
