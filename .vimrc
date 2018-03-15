if has("syntax")
    syntax on
endif

set number
set title
set ambiwidth=double
set tabstop=4
set smartindent
set virtualedit=block
set cursorline
set list listchars=tab:\¦\ 

" ------ ステータスライン --------
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する

" ------ インデント --------
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar', 'unite']


" -------------- NeoBundle -------------"
" Note: Skip initialization for vim-tiny or vim-small.
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
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'junegunn/vim-easy-align'


" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'fatih/vim-go'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

