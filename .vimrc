:syntax on
filetype off
:set rtp+=~/.vim/bundle/Vundle.vim
:nmap end o}<esc>
:autocmd FileType *      set formatoptions=tcql nocindent comments&
:autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
:set autoindent
:set smartindent
:set expandtab
:set shiftwidth=4
:set tabstop=4
:set backspace=2
:set autowrite
:set nocompatible
:set autochdir
:ab #d #define
:ab #i #include
:set sw=4
:set notextmode
:set noshowmode
:set notextauto
:set hlsearch
:set incsearch
:set relativenumber
:imap jk <Esc>
call vundle#begin()
"plugins
:Plugin 'vim-airline/vim-airline'
:Plugin 'mattn/emmet-vim'
:Plugin 'gmarik/vundle'
:Plugin 'ap/vim-buftabline'
:Plugin 'flazz/vim-colorschemes'
:Plugin 'scrooloose/nerdtree'
:Plugin 'nathanaelkane/vim-indent-guides'
:Plugin 'vim-airline/vim-airline-themes'
:Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'lervag/vimtex'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
:set laststatus=2
:set wrap
:set linebreak
:set nolist
:let g:airline#extensions#tabline#enabled = 1
:let g:airline_powerline_fonts = 1
:let g:airline_theme="bubblegum"
:let g:NERDSpaceDelims = 1
:let g:NERDCompactSexyComs = 1
:let g:NERDDefaultAlign = 'left'
:let g:indent_guides_guide_size = 1
:let g:tex_flavor = 'latex'
set guifont=Source\ Code\ Pro\ for\ Powerline:h14 
set guicursor=n-v-c-i:block-Cursor

command! NT NERDTree


:colorscheme monokai
highlight TabLineFill ctermbg=darkgray ctermfg=darkgray
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd ctermbg=235
hi IndentGuidesEven ctermbg=236
