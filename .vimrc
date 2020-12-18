"NeoBundle Scripts-----------------------------
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'dylanaraps/wal.vim'

"
"  " You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
"
"  " Required:
call neobundle#end()
"
"  " Required:
filetype plugin indent on
"
"  " If there are uninstalled bundles found on startup,
"  " this will conveniently prompt you to install them.
NeoBundleCheck
"  "End NeoBundle Scripts-------------------------
"

syntax on
colorscheme wal

set number
set encoding=utf8
set smarttab
set shiftwidth=4
set tabstop=4
set number
set term=screen-256color
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

