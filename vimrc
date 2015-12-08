set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-rooter'

" ############################################################################
Bundle 'scrooloose/nerdtree'
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize = 40 

" ############################################################################
Bundle 'kien/ctrlp.vim'

set wildignore+=*.pyc
set wildignore+=*.jpg
"let g:ctrlp_extensions = ['tag' ]
nmap <C-e> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'
let mapleader=","


" ############################################################################
Bundle 'fisadev/vim-ctrlp-cmdpalette'
nmap <S-C-p> :CtrlPCmdPalette<CR>

" ############################################################################
Bundle "flazz/vim-colorschemes"

" ############################################################################
Bundle 'davidhalter/jedi-vim'

" ############################################################################
Bundle 'scrooloose/syntastic'
let g:syntastic_python_checkers=['flake8', 'python']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ############################################################################
Bundle 'ervandew/supertab'
Bundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline_powerline_fonts = 1

" ############################################################################
Bundle 'rking/ag.vim'
Bundle 'Chiel92/vim-autoformat'
Bundle 'Blackrush/vim-gocode'

" ############################################################################
" General configs
set nowrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set nonumber
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
set expandtab
set hidden
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>
"set mouse=a
set pastetoggle=<F2>
nmap <silent> <C-q> :qa<CR>
nmap <silent> <C-s> :w<CR>
inoremap <C-s> <c-o>:w<CR>
inoremap <c-w> <c-g>u<c-w>
command! Vimrc e $HOME/.vim/vimrc
command! Ctags !ctags -R .. -f .tags
set tags=.tags

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
set guifont=Hack\ 11

noremap <Leader>1  :b1<CR> 
noremap <Leader>2  :b2<CR> 
noremap <Leader>3  :b3<CR> 
noremap <Leader>4  :b4<CR> 
noremap <Leader>5  :b5<CR> 
noremap <Leader>6  :b6<CR> 
noremap <Leader>w  :bdelete<CR> 
noremap <Leader>,  :bprevious<CR> 
noremap <Leader>.  :bnext<CR> 

nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>

noremap <leader>d :NERDTreeToggle<CR>
noremap <leader>s :NERDTreeFind<CR>

let NERDChristmasTree = 1
let NERDTreeMinimalUI = 1

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Color scheme
set t_Co=256
syntax on
colorscheme Tomorrow
"set background=light
" highlight! Normal ctermbg=white
" highlight! VertSplit ctermbg=white ctermfg=darkgray

" invisible charts
set list
set listchars=tab:▸\ ,eol:¬,trail:.,extends:#,nbsp:.

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <silent> > :5wincmd ><CR>
nnoremap <silent> < :5wincmd <<CR>
noremap <leader>f :Autoformat<CR>

execute "silent! source $HOME/.vim/vim.local"
execute "silent! source .vim.local"
