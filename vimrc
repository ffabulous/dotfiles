" ==============================================================================
" plugins
" ==============================================================================
" vim
set nocompatible

" vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" plugins {{{
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'luochen1990/rainbow'
Plugin 'ciaranm/detectindent'
Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'    " snipmate
Plugin 'tomtom/tlib_vim'                 " snipmate
Plugin 'honza/vim-snippets'              " snipmate
Plugin 'garbas/vim-snipmate'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'autowitch/hive.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
Plugin 'tomasr/molokai'
Plugin 'dag/vim-fish'
Plugin 'junegunn/goyo.vim'
Plugin 'stephpy/vim-yaml'
" }}}
call vundle#end()

filetype plugin indent on

" Tagbar
let g:tagbar_sort=0

" NERD-tree
let g:NERDTreeDirArrows=0

" NERD-Commenter
let mapleader=","
let NERDSpaceDelims=1

" emmet-vim
" Ctrl y,
let g:user_emmet_install_global=0
autocmd FileType html,xml,javascript,css EmmetInstall

" vim-markdown
let g:vim_markdown_folding_disabled=1

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_min_count=2
let g:airline#extensions#tabline#show_buffers=0
" let g:airline#extensions#tabline#show_splits=0

" snipMate
inoremap <C-J> <C-R>=TriggerSnippet()<CR>
snoremap <C-J> <ESC>i<RIGHT><C-R>=TriggerSnippet()<CR>

" gitgutter
" let g:gitgutter_override_sign_column_highlight=0
set updatetime=500

" hive.vim
au BufNewFile,BufRead *.hql set filetype=hive expandtab

" rainbow_parentheses.vim
let g:rainbow_active=1
let g:rainbow_conf={
\	'ctermfgs': ['38', '175', '41', '136']
\}

" detectindent
autocmd BufReadPost * :DetectIndent


" ==============================================================================
" mappings
" ==============================================================================
map ,tb :TagbarToggle<CR>
map ,nt :NERDTreeToggle<CR>
nmap ,nb :set number!<CR>
nmap ,wr :set wrap!<CR>
nmap ,ls :set list!<CR>
nmap ,ps :set paste!<CR>
nmap ,hs :set hlsearch!<CR>
nmap ,ic :set ignorecase!<CR>
nmap ,ac :set autochdir<CR>
nmap ,wi :wviminfo!<CR>
nmap ,ri :rviminfo!<CR>
nmap ,tw :set tw=0<CR>


" ==============================================================================
" basic setting
" ==============================================================================
" encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" syntax
syntax on

" tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"set smarttab
autocmd Filetype javascript,html,css setlocal ts=2 sw=2 sts=2

" textwidth
set textwidth=0    " 78

" indent
"set autoindent
"set cindent
"set smartindent

" backspace
set backspace=indent,eol,start

" line number
set number

" ruler
set ruler

" cursorline
set cursorline
"set cursorcolumn

" wrap, margin
set nowrap

" command history
set history=100

" wildmenu
set wildmenu
set wildmode=longest:full,full

" mouse
"set mouse=a

" command
"set showcmd

" speller
"set nowrapscan

" switch buffer while changes are unsaved
"set hidden

" search
set hlsearch			" highlight matches
set incsearch			" show matches during search

" remember cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal! g'\"" |
\ endif

" xml folding
let g:xml_syntax_folding=1

" max tabs
set tabpagemax=100

" viminfo
set viminfo=

" colorscheme
set t_ut=
let g:rehash256=1
colorscheme molokai
