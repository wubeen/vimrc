set enc=utf-8
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" YouCompleteMe
" Plug 'Vallocric/YouCompleteMe'

Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tell-k/vim-autopep8'
Plug 'scrooloose/nerdcommenter'


" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Initialize plugin system
call plug#end()

set number
autocmd VimEnter * NERDTree
silent! nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Nerdtree configuration
let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.swp', '\.pyc']

" Indent configuration
let g:indentLine_enable=1
let g:autopep8_disable_show_diff=1
let mapleader=','
set backspace=indent.sol.start
syntax on


" python style
set expandtab
set textwidth=120
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
