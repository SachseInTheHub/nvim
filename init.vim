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
" utility functions and commands for programming in Vim.
Plugin 'L9'
" search keywords in current project
Plugin 'dyng/ctrlsf.vim'
" Perl module for vim (grep replacement)
Plugin 'mileszs/ack.vim'
" React module for vim
Plugin 'mxw/vim-jsx'
" Base16 for Vim
Plugin 'chriskempson/base16-vim'
" Airline theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
endfunction

au FileType javascript call JavaScriptFold()

syntax enable
colorscheme base16-railscasts

set background=dark
set t_Co=256
set tabstop=2 shiftwidth=2
set expandtab
set number
set mouse=a
set laststatus=2 " always display status line
set autoindent 
set incsearch
set clipboard=unnamed
set nobackup
set noswapfile
set hlsearch

let g:airline_powerline_fonts = 2

" NerdTree config
nmap <silent> <C-E> :NERDTreeToggle<CR>
nmap <silent> <C-x> :NERDTreeFind<CR>

" Close if the only thing left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-n> :CtrlPBuffer<CR> 	" buffer config
nnoremap <C-1> :CtrlSF<CR> 				" keyword search
