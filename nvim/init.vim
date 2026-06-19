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

" Load the vim-plug copy tracked with this Neovim config.
let s:plug_path = stdpath('config') . '/autoload/plug.vim'
if !empty(glob(s:plug_path))
  execute 'source' fnameescape(s:plug_path)
endif

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plugin-config.vim
source ~/.config/nvim/maps.vim

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_better_performance = 1
silent! colorscheme sonokai
if !exists('g:colors_name') || g:colors_name !=# 'sonokai'
  silent! colorscheme gruvbox
endif
highlight Normal ctermbg=NONE guibg=NONE
