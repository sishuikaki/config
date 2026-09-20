syntax on
set number
set cindent
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4

set notimeout " 指令无超时时间 (默认超时时间为 1000 ms )
set scrolloff=10 " 设置在光标距离窗口顶部或底部一定行数时，开始滚动屏幕内容的行为
set incsearch " 启用增量搜索功能
set ignorecase " 在搜索时忽略大小写
set smartcase " 如果搜索内容有大写，则区分大小写
set hlsearch " 将搜索匹配的文本高亮显示

call plug#begin()
Plug 'machakann/vim-highlightedyank' " 高亮复制的内容
Plug 'tpope/vim-commentary' " 快速注释
Plug 'preservim/nerdtree' " 项目树插件
Plug 'tpope/vim-surround'
Plug 'dbakker/vim-paragraph-motion' " 更好的段落移动
Plug 'easymotion/vim-easymotion' " 光标快速跳转
Plug 'mg979/vim-visual-multi' " 多光标模式
Plug 'kana/vim-textobj-user' " 文本对象依赖
Plug 'kana/vim-textobj-entire' " 整个文件转为文本对象: ie, ae
Plug 'kana/vim-textobj-indent' " 缩进转为文本对象: ii, iI, ai, aI
Plug 'glts/vim-textobj-comment' " 注释转为文本对象: ic, ac
Plug 'sgur/vim-textobj-parameter' " 函数参数转为文本对象: ia, aa
call plug#end()

let mapleader = " "

" 普通模式下使用回车键，向下/向上 增加一行
" nnoremap <CR> o<Esc>
" nnoremap <S-Enter> O<Esc>
" 取消搜索高亮
noremap <C-h> :nohl<CR>
inoremap <C-h> :nohl<CR>

" H为行首，L为行尾，M为括号匹配
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $
" 更智能的匹配跳转，%跳转到匹配的括号
packadd! matchit
nnoremap M %
vnoremap M %

" 将 jj 和 jk 映射为 <Esc>
imap jj <Esc>
imap kk <Esc>
imap jk <Esc>
imap kj <Esc>

" 在普通、可视和插入模式下，向下交换行/向上交换行
nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>
xnoremap <C-j> :m '>+1<cr>gv=gv
xnoremap <C-k> :m '<-2<cr>gv=gv
inoremap <C-j> <Esc> :m +1<CR>gi
inoremap <C-k> <Esc> :m -2<CR>gi

" 窗口跳转
nmap <leader>h <c-w>h
nmap <leader>j <c-w>j
nmap <leader>k <c-w>k
nmap <leader>l <c-w>l

" 标签页跳转
nnoremap Q gT
nnoremap E gt

" 接入系统剪切板
vmap <leader>y "+y
nmap <leader>y "+yy
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

" 项目树快捷键
nnoremap <leader>nn :NERDTreeToggle<CR>

" EasyMotion
" - EasyMotion 开启大小写不敏感，取消默认快捷键
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
" - 单字符跳转
map f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
" - 双字符跳转
map <leader><leader>s <Plug>(easymotion-bd-f2)
nmap <leader><leader>s <Plug>(easymotion-overwin-f2)
" - 词首跳转
map <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)
" - 行首跳转
map <leader><leader>l <Plug>(easymotion-jk)
nmap <leader><leader>l <Plug>(easymotion-overwin-line)
" - 多字符跳转
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
