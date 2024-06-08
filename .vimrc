" 普通模式下使用回车键，向下/向上 增加一行
nmap <CR> o<Esc>
nmap <S-Enter> O<Esc>

" 取消搜索高亮
noremap <C-h> :nohl<CR>
inoremap <C-h> :nohl<CR>

" H为行首，L为行尾，M为括号匹配
nmap H ^
vmap H ^
nmap L $
vmap L $
nmap M %
vmap M %