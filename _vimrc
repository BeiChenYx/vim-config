" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'  }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*'  }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'"

" vim 中文帮助文档
"Plugin 'yianwillis/vimcdoc'

" 目录树
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" qml
Plug 'crucerucalin/qml.vim'

" 主题颜色
Plug 'altercation/vim-colors-solarized'

" 缩进线
Plug 'Yggdroot/indentLine'

" 括号匹配
Plug 'jiangmiao/auto-pairs'

" 补全跳转
Plug 'Valloric/YouCompleteMe'
" 预览窗口管理
Plug 'skywind3000/vim-preview'

" html
Plug 'mattn/emmet-vim'

" 代码折叠
Plug 'tmhedberg/SimpylFold'

" pep8缩进
Plug 'vim-scripts/indentpython.vim'


" 超级搜索
Plug 'kien/ctrlp.vim'
" c-p查找
" vim自带的查找
" :vim /patern/ ** | copen 当前目录下及子目录所有文件
" :vim /patern/ * | copen 当前目录下的
" :vim /patern/ ./ui/** | copen 当前目录下ui文件夹下及子目录的所有文件
" 当前目录下ui和test文件夹下及子目录的所有文件
" :vim /patern/ ./ui/** ./test/**| copen 

" 在文件之间切换
" :bn	下一个文件
" :bp	上一个文件

" 在此之前添加插件
call plug#end()

" 设置leader
let mapleader='\'
" \ + c + i 快速注释和反注释

" 主题
set background=dark
colorscheme solarized
let g:airline_theme='solarized'

" 代码折叠用SimpylFold配合使用, za折叠和取消折叠
set foldmethod=indent
set foldlevel=99
" 折叠后能看到文档字符串
let g:SimpylFold_docstring_preview=1

filetype plugin indent on 	" 打开文件类型和缩进支持
syntax enable  				" 开启语法高亮
set encoding=utf-8			" 设置编码
set nocompatible        	" 去掉vi的一致性
set number   				" 显示行号
set nowrap    				" 设置不折行
set fileformat=unix     	" 设置以unix的格式保存文件
set smartindent    			" 智能选择对齐方式
set tabstop=4    			" 设置table长度
set shiftwidth=4 			" 设置当行之间交错时使用4个空格
set showmatch    			" 显示匹配的括号
set scrolloff=2         	" 距离顶部和底部2行
set laststatus=2        	" 命令行为两行
set backspace=2   			" 设置backspace为2个字符
set hlsearch            	" 高亮搜索项
set autoread				" 文件在vim之外修改过，自动重新读入
set cursorline          	" 突出显示当前行
set cursorcolumn        	" 突出显示当前列
set autoindent          	" 自动缩进
"set tw=80					" 设置一行80个字符设置
set helplang=cn 			" 帮助系统设置为中文

" NERDTree配置
" 开启和关闭树"
map <C-\> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
" 显示书签"
let NERDTreeShowBookmarks=1
" 设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__']
" 窗口大小"
let NERDTreeWinSize=30
" gt后一个标签 gT前一个标签
" ctrl + w + r 切换窗口顺序

"缩进指示线"
let g:indentLine_char='|'
let g:indentLine_enabled = 1

"autopep8设置"
let g:autopep8_disable_show_diff=1

" 窗口移动
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
" 分屏窗口大小调整, 调节的是分割线上下左右对应wsad方位键
nnoremap <leader>d :vertical resize +5<CR>
nnoremap <leader>a :vertical resize -5<CR>
nnoremap <leader>w :resize +5<CR>
nnoremap <leader>s :resize -5<CR>
" 默认的窗口快捷方式
" <C-w>=    均分窗口
" <C-w>|	垂直分屏的最大化窗口
" <C-w>_	水平分屏的最大化窗口

" 配置emmet
let g:user_emmet_leader_key = '<leader>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" YouCompleteeMe的配置
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = ['']
let g:ycm_extra_conf_vim_data = [
	\ 'g:ycm_python_interpreter_path',
	\ 'g:ycm_python_sys_path'
	\]
let g:ycm_gloabal_ycm_extra_conf = '/root/.global_extra_conf.py'
nnoremap <leader>i :YcmCompleter GoToInclude<CR>
nnoremap <leader>g :YcmCompleter GoToDefinition<CR>
nnoremap <leader>c :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>
nnoremap <leader>o :YcmCompleter GetDoc<CR>
" 关闭 GetDoc的窗口
nnoremap <leader>q :PreviewClose<CR>

" 状态栏设置
set statusline=%1*%t%m%r%h%w%=\ [%Y]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).
			\((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}
			\[%l,%v][%p%%]
hi User1 ctermbg=black  ctermfg=243

" 记录上次打开的位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 工程管理 :mksession! xxx.vim
" vim -S xxx.vim
nnoremap <leader>m :mksession!

