" be iMproved
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git wrapper 
Plugin 'tpope/vim-fugitive'

" A tree explorer
Plugin 'scrooloose/nerdtree'

" Open NERDTree when there is no files
autocmd VimEnter * if !argc() | NERDTree | endif

let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize = 40 
let NERDChristmasTree = 1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Fuzzy file, buffer, mru, tag, etc finder. 
Plugin 'kien/ctrlp.vim'
set wildignore+=*.pyc
set wildignore+=*.jpg
nmap <C-e> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" Extension for ctrlp.vim, to have a command palette like sublime text 2 
Plugin 'fisadev/vim-ctrlp-cmdpalette'
nmap <S-C-p> :CtrlPCmdPalette<CR>

" Color schemes
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" binding to the autocompletion library Jedi.
Plugin 'davidhalter/jedi-vim'
let g:pymode_folding = 0

" Syntax checking hacks
Plugin 'scrooloose/syntastic'
let g:syntastic_python_checkers=['flake8', 'python']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Perform all your vim insert mode completions with Tab 
Plugin 'ervandew/supertab'

" lean & mean status/tabline for vim that's light as air 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'

" Vim plugin for the_silver_searcher, 'ag', a replacement for 'ack' 
Plugin 'rking/ag.vim'

" Provide easy code formatting in Vim by integrating existing code formatters. 
Plugin 'Chiel92/vim-autoformat'

" Go lang support
Plugin 'Blackrush/vim-gocode'

" Close buffers
Plugin 'moll/vim-bbye'

Plugin 'majutsushi/tagbar'
let g:tagbar_width = 40

" All of your Plugins must be added before the following line
call vundle#end()            
filetype plugin indent on    

" General configs
let mapleader=","
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
set expandtab
set hidden
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>
set mouse=a
set pastetoggle=<F2>
nmap <silent> <C-q> :qa<CR>
nmap <silent> <C-s> :w<CR>
inoremap <C-s> <c-o>:w<CR>
inoremap <c-w> <c-g>u<c-w>
set t_Co=256
set background=light
colorscheme Tomorrow

" menu for competition in command line
set wildchar=<Tab> wildmenu wildmode=full
syntax on

noremap <Leader>1  :b1<CR> 
noremap <Leader>2  :b2<CR> 
noremap <Leader>3  :b3<CR> 
noremap <Leader>4  :b4<CR> 
noremap <Leader>5  :b5<CR> 
noremap <Leader>6  :b6<CR> 
noremap <Leader>w  :Bdelete<CR> 
noremap <Leader>,  :bprevious<CR> 
noremap <Leader>.  :bnext<CR> 
nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>
noremap <leader>d :NERDTreeToggle<CR>
noremap <leader>s :NERDTreeFind<CR>
noremap <leader>t :TagbarToggle<CR>

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
