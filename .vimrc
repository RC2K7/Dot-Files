set background=light
colorscheme solarized

map <c-n> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:airline#extensions#tabline#enabled = 1

set guifont=Consolas:h15
set number
set cc=80
set laststatus=2

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tmhedberg/simpylfold'
Plug 'chiel92/vim-autoformat'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
