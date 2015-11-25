set nocompatible               " be iMproved
filetype off                   " required!

execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" A parser for a condensed HTML format
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" rails.vim
Plugin 'tpope/vim-rails.git'
" Enhanced javascript syntax file for Vim
Plugin 'jelera/vim-javascript-syntax'
" Vastly improved Javascript indentation and syntax support in Vim.
Plugin 'pangloss/vim-javascript'
" auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'
" nerdtree
Plugin 'scrooloose/nerdtree'
" Yet Another Indent Finder
Plugin 'Raimondi/YAIFA'
" search files :CtrlP
Plugin 'kien/ctrlp.vim'
" airline powerbar
Plugin 'bling/vim-airline'
" utility functions and commands for programming in Vim.
Plugin 'L9'
" search keywords in current project
Plugin 'dyng/ctrlsf.vim'
" Perl module for vim (grep replacement)
Plugin 'mileszs/ack.vim'
" React module for vim
Plugin 'mxw/vim-jsx'
" You complete me
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
endfunction

au FileType javascript call JavaScriptFold()

syntax enable
colorscheme solarized

set background=dark
set t_Co=256
set tabstop=2
set shiftwidth=2
set number
set mouse=a
set laststatus=2 " always display status line
set autoindent 
set incsearch
set clipboard=unnamed
set nobackup
set noswapfile
set hlsearch

let g:jsx_ext_required = 0
let g:airline_powerline_fonts = 2
let g:airline_theme='murmur'

" NerdTree config
nmap <silent> <C-E> :NERDTreeToggle<CR>
" Close if the only thing left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-n> :CtrlPBuffer<CR> 	" buffer config
nnoremap <C-f> :CtrlSF<CR> 				" keyword search
