" 插件和快捷键说明 --start

" 插件: tpope/vim-surround 
" 成对编辑, 主要用来增加, 修改, 删除成对内容, 比如 'xxx' xxx的两边的单引号
" ds 删除成对内容, 如: ds '  删除xxx两边的单引号
" cs 修改成对内容, 如: cs " ' xxx 的两边的 双引号变成单引号, cs ( ] xxx 两边的圆括号变成方括号
" ys 添加成对内容, 如: ys iw " 给 xxx 添加双引号

" 插件: easymotion/vim-easymotion
" 可视区域文件定位
" ss 进入当前可视区搜索字符, 然后选择要跳转的到的字符

" 插件: junegunn/fzf,  
" 模糊搜索 
" Ag [PATTERN] 模糊搜索字符串, 依赖brew install the_silver_searcher
" Files [PATH] 模糊搜索目录
" Ag duck 搜索 duck Ctrl + [jk] 上下移动, 可以继续精准搜索
" Files . 搜索当前目录, 然后输入模糊匹配的字符串

" 插件: brooth/far.vim
" 多文件批量搜索替换 
" Far foo bar **/*.py  查找 ** 上级目录, *.py 当前目录下所有.py文件 中 foo 替换为 bar, 会有预览, 检查替换内容 [jk] 上下翻动, q 退出预览
" Fardo  执行替换

" 插件: kien/ctrlp.vim
" 超级搜索
" c-p查找, 然后ctrl + [jk] 上下移动, enter确认打开

" vim自带的查找
" :vim /patern/ ** | copen 当前目录下及子目录所有文件
" :vim /patern/ * | copen 当前目录下的
" :vim /patern/ ./ui/** | copen 当前目录下ui文件夹下及子目录的所有文件
" 当前目录下ui和test文件夹下及子目录的所有文件
" :vim /patern/ ./ui/** ./test/**| copen
" 查找替换 :%s/old/new/gc
"
" :ls 显示已经打开的文件, 会显示文件号，然后 :b文件号，就完成了文件切换, :b xxx , 直接输入名字 tab 补全也可以跳转文件
" 在文件之间切换 :bn	下一个文件, :bp	上一个文件

" 插件: lfv89/vim-interestingwords
" 高亮显示代码
"Highlight with <Leader>k
"Navigate highlighted words with n and N
"Clear every word highlight with <Leader>K throughout the buffer

" 插件: sbdchd/neoformat
" 代码格式化
" :Neoformat 就自动格式化文件

" 快速注释, 或可视化选择, 然后注释
" <leader> + c + i 快速注释和反注释

" 插件和快捷键说明 --end


" Plug 插件
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" vim 启动窗口
Plug 'mhinz/vim-startify'

" 目录树
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" 主题颜色
"Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 缩进线
Plug 'Yggdroot/indentLine'

" 代码折叠
Plug 'tmhedberg/SimpylFold'

" 可视区域文件定位
Plug 'easymotion/vim-easymotion'

" 成对编辑, 比如修改 'xxx' xxx 两边的单引号
Plug 'tpope/vim-surround'

" 模糊搜索
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" 多文件批量搜索替换
Plug 'brooth/far.vim'

" 超级搜索
Plug 'kien/ctrlp.vim'

" 语法补全, 跳转, 检查等功能
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 代码大纲
Plug 'preservim/tagbar'

" 高亮显示代码
Plug 'lfv89/vim-interestingwords'

" 代码格式化
Plug 'sbdchd/neoformat'


" 在此之前添加插件
call plug#end()

" 设置leader
let mapleader='\'
" \ + c + i 快速注释和反注释

" 主题
"set background=light
set background=dark
"colorscheme solarized
colorscheme gruvbox

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
set rnu 					" 设置相对行号
"set nowrap    				" 设置不折行
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
set tw=100					" 设置一行100个字符设置
set helplang=cn 			" 帮助系统设置为中文
set mouse=a 				" 开启鼠标模式

" NERDTree配置
" 开启和关闭树"
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
" <leader> f 找到文件在目录中的位置, <C-W> p 跳转回来
let NERDTreeChDirMode=1
" 显示书签"
let NERDTreeShowBookmarks=1
" 设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__', '.DS_Store', '\.vscode', '\.git', '\.pylintrc', '\.vim', '\.idea']
" 窗口大小"
let NERDTreeWinSize=30
" 显示隐藏文件
let NERDTreeShowHidden=1

" gt后一个标签 gT前一个标签
" ctrl + w + r 切换窗口顺序

"缩进指示线"
let g:indentLine_char='|'
let g:indentLine_enabled = 1

" 状态栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_theme='solarized'
let g:airline_theme='gruvbox'

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

" 记录上次打开的位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 工程管理 :mksession! xxx.vim
" vim -S .vim
" \-m 保存session到.vim中
" vim 离开也会自动保存.vim
" 在工程第一次创建保存使用 \-m 创建.vim文件，
" 之后会在vim关闭时自动保存当前状态到.vim文件中
"nnoremap <leader>m :exe "mksession! .vim"<CR>
"function SaveSession()
	"if v:this_session != ""
		"exe "mksession! .vim"
	"endif
"endfunction
"au VimLeavePre * call SaveSession()


" vim 将当前行置为屏幕首行，中行，尾行的方法分别为：
" normal模式: zt, zz, zb

" 文件定位 easymotion
" ss 进入当前可视区搜索字符, 然后选择要跳转的到的字符
nmap ss <Plug>(easymotion-s2)

" coc 配置
set hidden
set updatetime=100
set shortmess+=c
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <leader>h to show documentation in preview window.
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" tagbar 代码大纲
nnoremap <leader>t :TagbarToggle<CR>







