set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Bling/vim-airline'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

set t_Co=256
if has('gui_running')
	colorscheme molokai
	set guifont=Liberation\ Mono\ 13
endif
set tabstop=2 shiftwidth=2 expandtab nu foldenable tw=80 formatoptions+=t wrap linebreak nolist colorcolumn=80 cursorline

syntax on
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
imap <C-Space> <C-X><C-O>
