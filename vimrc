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
Bundle 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore = ['\.pyc$']
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" ############################################################################
Bundle 'kien/ctrlp.vim'

set wildignore+=*.pyc
set wildignore+=*.jpg
"let g:ctrlp_extensions = ['tag' ]
nmap <C-b> :CtrlPBuffer<CR>
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
Bundle 'mkitt/tabline.vim'


" ############################################################################
Bundle 'rking/ag.vim'

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

noremap <Leader>1  :tabn 1<CR> 
noremap <Leader>2  :tabn 2<CR> 
noremap <Leader>3  :tabn 3<CR> 
noremap <Leader>4  :tabn 4<CR> 
noremap <Leader>5  :tabn 5<CR> 
noremap <Leader>6  :tabn 6<CR> 
noremap <Leader>w  :tabclose<CR> 
noremap <Leader>PageDown  :bprevious<CR> 
noremap <Leader>PageUp :bnext<CR> 

nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>

nmap <leader>d :NERDTreeTabsToggle<CR>
nmap <leader>s :NERDTreeTabsFind<CR>

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

execute "silent! source $HOME/.vim/vim.local"
execute "silent! source .vim.local"
