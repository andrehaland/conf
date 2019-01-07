set nocompatible           
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" PLUGINS GO HERE 

"Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'

"Plugin 'scrooloose/syntastic'

" PLUGINS END

call vundle#end()       
filetype plugin indent on

set relativenumber
set shiftwidth=4
set softtabstop=4
set expandtab
syntax on
colorscheme delek

nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Go to next function
map fk [m

" Go to previous function
map fj ]m

" Go to function decleration under cursor
map gd <C-]>

" Pop out of tag jumping
map gb <C-T>

map td <C-w><C-]><C-w>T

" Switch between splits
map <C-v><C-v> <C-w>w
map <C-v>v <C-w>w

nnoremap B ^
nnoremap E $

" Store .swp and .swo files in tmp dir
set swapfile
set dir=~/.vimtmp

set mouse=a



map <C-n> :NERDTreeToggle<CR>
set shortmess=a
set cmdheight=2
