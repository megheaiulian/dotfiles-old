" Load vim-plug
if &compatible
  set nocompatible
endif
let mapleader=','
set packpath^=~/.vim
silent! packadd minpac

if empty(glob('~/.vim/pack/minpac/opt/'))
  silent !git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac
endif

if exists('*minpac#init')
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  
  "Theme
  call minpac#add('lifepillar/vim-solarized8')
  
  "Tree/Files
  call minpac#add('scrooloose/nerdtree', {'type': 'opt'})
  call minpac#add('Xuyuanp/git-nerdtree', {'type': 'opt'})
  call minpac#add('ctrlpvim/ctrlp.vim')

  "Editing
  call minpac#add('sgur/vim-editorconfig', {'type': 'opt'})

  "Syntax
  call minpac#add('sheerun/vim-polyglot', {'type': 'opt'})
  call minpac#add('pearofducks/ansible-vim', {'type': 'opt'})
  call minpac#add('Glench/Vim-Jinja2-Syntax', {'type': 'opt'})
  call minpac#add('qbbr/vim-twig', {'type': 'opt'})
  call minpac#add('dag/vim-fish', {'type': 'opt'})
  "Git
  call minpac#add('tpope/vim-fugitive', {'type': 'opt'})
endif

filetype plugin indent on
syntax on
colorscheme solarized8_dark
set encoding=utf-8
set fileencoding=utf-8

set showcmd
set path+=**
set wildmenu
set wildmode=full
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end 
set number

"Editing
set backspace=indent,eol,start
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set showbreak=↪
" Settings
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"AutoGroup autocmd
augroup MyAutoCmd
  autocmd!
augroup END

autocmd MyAutoCmd VimEnter * packadd nerdtree
autocmd MyAutoCmd VimEnter * packadd git-nerdtree
autocmd MyAutoCmd VimEnter * packadd vim-editorconfig
autocmd MyAutoCmd VimEnter * packadd ansible-vim
autocmd MyAutoCmd VimEnter * packadd Vim-Jinja2-Syntax
autocmd MyAutoCmd VimEnter * packadd vim-twig
autocmd MyAutoCmd VimEnter * packadd vim-fish
autocmd MyAutoCmd VimEnter * packadd vim-fugitive

" NerdTree
nnoremap <S-Tab> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFind<CR>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMouseMode=3
let g:NERDTreeWinSize=25
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1
let g:NERDTreeKeepTreeInNewTab=1
let g:NERDTreeDirArrows=0
