" =============================
" Vundle Setup
" =============================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Colorscheme Plugin
Plugin 'nanotech/jellybeans.vim'

" Improvement Plugins
Plugin 'preservim/indent-guides'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" =============================
" General Settings
" =============================
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" =============================
" Colorscheme
" =============================
colorscheme jellybeans
