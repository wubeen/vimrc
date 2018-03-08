"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set nocompatible
set runtimepath+=~/.random/repos/github.com/Shougo/dein.vim " path to dein.vim

call dein#begin(expand('~/.vim/dein')) " plugins' root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('Shougo/unite.vim')
" lazy load on filetype
call dein#add('justmao945/vim-clang',
      \{'on_ft': ['c', 'cpp']})
" lazy load on command executed
call dein#add('scrooloose/nerdtree',
      \{'on_cmd': 'NERDTreeToggle'})
" lazy load on insert mode
call dein#add('Shougo/deoplete.nvim',
      \{'on_i': 1})
" lazy load on function call
call dein#add('othree/eregex.vim',
      \{'on_func': 'eregex#toggle'})
call dein#add('joshdick/onedark.vim')
call dein#end()
set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
colorscheme onedark
