call plug#begin('~/.local/share/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'chaoren/vim-wordmotion'
call plug#end()

" colorscheme
colorscheme nord
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1


" powerline config
let g:lightline = {
  \ 'colorscheme': 'nord',
  \ }

let g:tmuxline_powerline_separators = 0

set timeoutlen=500 ttimeoutlen=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set mouse=a

set number relativenumber

set clipboard=unnamedplus


