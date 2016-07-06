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
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'molokai'
Plugin 'snipMate'
Plugin 'Tagbar'
Plugin 'plasticboy/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'luochen1990/rainbow'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'autowitch/hive.vim'
Plugin 'ciaranm/detectindent'
" }}}
call vundle#end()

filetype plugin indent on

" Tagbar
let g:tagbar_sort = 0

" NERD-tree
let g:NERDTreeDirArrows=0

" NERD-Commenter
let mapleader=","
let NERDSpaceDelims=1

" emmet-vim
" Ctrl y,
let g:user_emmet_install_global=0
autocmd FileType html,javascript,css EmmetInstall

" molokai
colorscheme molokai
let g:molokai_original=1
set t_ut=

" vim-markdown
let g:vim_markdown_folding_disabled=1

" vim-powerline
set laststatus=2
let g:Powerline_symbols='compatible'
let g:Powerline_mode_V='V-LINE'
let g:Powerline_mode_cv='V|BLOCK'
"let g:Powerline_colorscheme='solarized256'

" snipMate
inoremap <C-J> <C-R>=TriggerSnippet()<CR>
snoremap <C-J> <ESC>i<RIGHT><C-R>=TriggerSnippet()<CR>

" hive.vim
au BufNewFile,BufRead *.hql set filetype=hive expandtab

" rainbow_parentheses.vim
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'ctermfgs': ['38', '175', '41', '136']
\}

" detectindent
autocmd BufReadPost * :DetectIndent


" ==============================================================================
" mappings
" ==============================================================================
map ,tb :TagbarToggle<CR>
map ,nt <Esc>:NERDTreeToggle<CR>
nmap ,nb :set number! <CR>
nmap ,wr :set wrap! <CR>
nmap ,ls :set list! <CR>
nmap ,ps :set paste! <CR>
nmap ,hs :set hlsearch! <CR>
nmap ,ic :set ignorecase! <CR>
nmap ,ac :set autochdir <CR>
nmap ,sv :source $MYVIMRC <CR>
nmap ,wi :wviminfo! <CR>
nmap ,ri :rviminfo! <CR>


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
set textwidth=80

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
