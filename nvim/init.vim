" 令编辑器显示行号
set nu

" 要安装的插件列表
call plug#begin('~/.vim/plugged')
" tab键补全功能插件
Plug 'ervandew/supertab'
" Coc 智能补全插件引擎
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" vim-airline 标签栏插件
Plug 'Vim-airline/vim-airline'
" vim-airline 标签栏插件的主题插件
Plug 'Vim-airline/vim-airline-themes'  
" vim-startify 插件
Plug 'mhinz/vim-startify'
" vim-snazzy 主题插件
Plug 'connorholyday/vim-snazzy'
" markdown 预览插件
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" rnvimr 文件管理插件
Plug 'kevinhwang91/rnvimr'
call plug#end()

" 配置 vim-airline 标签栏插件
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
" 配置 ranger 文件浏览器插件
let g:rnvimr_ex_enable = 1   
" Alt+o 打开 ranger                                       
nnoremap <silent> <M-o> :RnvimrToggle<CR>
"Alt+加号 切换至下一个标签，减号则是切换回上一个
nnoremap <M-+> :bp<CR> 
nnoremap <M--> :bn<CR>
" 配置 vim-snazzy 主题插件
colorscheme snazzy
let g:SnazzyTransparent = 1
" 指定浏览器路径
let g:mkdp_browser = "/opt/microsoft/msedge/microsoft-edge-stable"
" 指定预览主题，默认Github
let g:mkdp_markdown_css=''
