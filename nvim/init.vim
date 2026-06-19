" Keep GitHub Copilot's optional pack/start install from loading unless enabled later.
let g:loaded_copilot = 1

set nocompatible
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
filetype plugin indent on
set termguicolors
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set noshowmode

" Use Neovim-local vim-plug files, not ~/.vim.
let s:plug_path = stdpath('data') . '/site/autoload/plug.vim'
if empty(glob(s:plug_path)) && !empty(glob(expand('~/.vim/autoload/plug.vim')))
  execute 'source' fnameescape(expand('~/.vim/autoload/plug.vim'))
endif

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plugin-config.vim
source ~/.config/nvim/maps.vim

silent! colorscheme gruvbox
highlight Normal ctermbg=NONE guibg=NONE
