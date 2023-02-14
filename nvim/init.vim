set nu

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Vim-airline/vim-airline'
Plug 'Vim-airline/vim-airline-themes'
Plug 'kevinhwang91/rnvimr'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:rnvimr_ex_enable = 1

nnoremap <silent> <M-o> :RnvimrToggle<CR>

nnoremap <M-+> :bp<CR>
nnoremap <M--> :bn<CR>
