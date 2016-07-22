set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'vim-scripts/ScrollColors'
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'petdance/ack2'
Plugin 'ggreer/the_silver_searcher'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
"vim-scripts/taglist.vim config
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
Plugin 'vim-scripts/winmanager'
"vim-scripts/winmanager config
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
Plugin 'vim-scripts/cscope.vim'
Plugin 'vim-scripts/minibufexplorerpp'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
" Plugin ''
" vim-scripts repos

" non github repos
"Plugin 'git://git.wincent.com/command-t.git'
call vundle#end()
filetype plugin indent on     " required!
" 禁止生成临时文件
set noswapfile
" 设置编码  
set enc=utf-8  
" 设置文件编码  
set fenc=utf-8  
" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  
" 设置开启语法高亮  
syntax enable  
syntax on
set background=dark
" 显示行号  
set number  
" 高亮显示匹配的括号
set showmatch
" 搜索忽略大小写
set ignorecase  
" 查找结果高亮度显示  
set hlsearch
set incsearch
" tab宽度  
set tabstop=4  
set cindent shiftwidth=4  
set autoindent shiftwidth=4  
" 命令行下按tab键自动完成
set wildmode=list:full
set wildmenu
" 设置默认的颜色
colorscheme solarized
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 通过使用:commands命令，告诉我们文件的哪一行被改变过
set report=0
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 设置自动保存
imap <F9> <Esc>:up<cr>  
" 把 F8 映射到启动NERDTree插件
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
map <F8> :NERDTree<CR>  
"在不同的窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"设置FuzzyFinder
let mapleader = "\\"
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>g :FufTag<CR>
map <leader>b :FufBuffer<CR>
"设置Color-Sample
map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>
"设置Rubytest
let g:rubytest_cmd_spec = "rspec -fd %p"
let g:SuperTabRetainCompletionType="context"
"YouCompleteMe config
"自动补全配置
set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '<CR>'CR' '回车即选中当前上下左右键的行为 会显示其他信息'
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Down>     pumvisible() ? '<C-n>' : '<Down>'
inoremap <expr> <Up>       pumvisible() ? '<C-p>' : '<Up>'
inoremap <expr> <PageDown> pumvisible() ? '<PageDown><C-p><C-n>' : '<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '<PageUp><C-p><C-n>' : '<PageUp>'

"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 "从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>CR "force recomile with syntastic
nnoremap <leader>lo :lopen<CR>CR 'open locationlist'
nnoremap <leader>lc :lclose<CR>CR 'close locationlist'
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> ' 跳转到定义处
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
let g:ycm_global_ycm_extra_conf='./.ycm_extra_conf.py'
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_default_root = 'project'
set t_Co=256
map <C-f> :CtrlSF
map <C-c> :CtrlSFClose <CR>
map <F5> :CtrlSFOpen <CR>
