" Load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible
set showcmd
set path+=**
set wildmenu
set mouse=a
set number

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround

call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dag/vim-fish'
Plug 'pearofducks/ansible-vim'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
" Settings
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme solarized8_dark
filetype plugin on
