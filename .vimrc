
" NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible
endif

"  " Required:
set runtimepath+=/home/shuhala/.vim/bundle/neobundle.vim/

"  " Required:
call neobundle#begin(expand('/home/shuhala/.vim/bundle'))

"  " Let NeoBundle manage NeoBundle
"  " Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"  " Bundles
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'		" :GEdit, :Gsplit, :Gvsplit, :Gtabedit, :Gstatus, :Gcommit, :Gblame
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'airblade/vim-gitgutter'	" It shows whether each line has been added, modified, and where lines have been removed.
NeoBundle 'vim-scripts/Emmet.vim'


"  " Revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

"  " Required:
call neobundle#end()

"  " Required:
filetype plugin indent on

syntax on
colorscheme Monokai

set number
set encoding=utf8
set smarttab
set shiftwidth=4
set tabstop=4
set number
set term=screen-256color
set clipboard+=unnamed " use the clipboards of vim and win
set paste " Paste from a windows or from vim
set go+=a " Visual selection automatically copied to the clipboard

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

