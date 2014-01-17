set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'jordanchen/tabbar.vim'
Bundle 'vim-scripts/SearchComplete'

" ############################################################################
Bundle 'scrooloose/nerdtree'

autocmd VimEnter * if !argc() | NERDTree | endif
let NERDTreeIgnore = ['\.pyc$']
nmap <F7> :NERDTreeToggle<CR>


" ############################################################################
Bundle 'kien/ctrlp.vim'

set wildignore+=*.pyc
set wildignore+=*.jpg
"let g:ctrlp_extensions = ['tag' ]
nmap <C-b> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" ############################################################################
Bundle 'fisadev/vim-ctrlp-cmdpalette'
nmap <S-C-p> :CtrlPCmdPalette<CR>

" ############################################################################
Bundle 'rbgrouleff/bclose.vim'
nmap <silent> <C-c> :Bclose<CR>

" ############################################################################
Bundle 'majutsushi/tagbar'
nmap <silent> <A-PageDown> :bn<CR>
nmap <silent> <A-PageUp> :bp<CR>

" ############################################################################
Bundle "flazz/vim-colorschemes"


" ############################################################################
Bundle 'davidhalter/jedi-vim'
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#goto_definitions_command = "<C-]>"

" ############################################################################
Bundle 'scrooloose/syntastic'
let g:syntastic_python_checkers=['flake8']

" ############################################################################
Bundle 'Lokaltog/vim-powerline'
Bundle "JarrodCTaylor/vim-python-test-runner"
Bundle 'ervandew/supertab'

" ############################################################################
Bundle 'junegunn/goyo.vim'

Bundle 'rking/ag.vim'

" ############################################################################
" General configs
set nowrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set nobackup
set noswapfile
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>
"set mouse=a
set pastetoggle=<F2>
nmap <silent> <F8> :TagbarToggle<CR>
nmap <silent> <C-q> :qa<CR>
nmap <silent> <C-m> :Goyo<CR>
nmap <silent> <C-s> :w<CR>
inoremap <C-s> <c-o>:w<CR>
inoremap <c-w> <c-g>u<c-w>
command! Vimrc e $HOME/.vim/vimrc
command! Ctags !ctags -R .. --total -f .tags
set tags=.tags

" Color scheme
set t_Co=256
colorscheme mustang
syntax on

filetype indent on
filetype on
filetype plugin on
let g:pymode_folding = 0

" menu for competition in command line
set wildchar=<Tab> wildmenu wildmode=full

" GVim options
set go-=T
set go-=L
set go-=r
set guifont=Droid\ Sans\ Mono\ 10 
if has("gui_running")
    set lines=40 columns=120
endif

source $HOME/.vim/projects.vim
execute "silent! source $HOME/.vim/local.vim"
execute "silent! source .local.vim"
