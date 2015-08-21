set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'

" ############################################################################
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

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
Bundle "flazz/vim-colorschemes"
 
" ############################################################################
Bundle 'davidhalter/jedi-vim'
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#goto_definitions_command = "<C-]>"

" ############################################################################
Bundle 'scrooloose/syntastic'
let g:syntastic_python_checkers=['flake8']

" ############################################################################
Bundle 'ervandew/supertab'
Bundle 'humiaozuzu/TabBar'

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
nmap <silent> <F8> :TagbarToggle<CR>
nmap <silent> <C-q> :qa<CR>
nmap <silent> <C-s> :w<CR>
inoremap <C-s> <c-o>:w<CR>
inoremap <c-w> <c-g>u<c-w>
command! Vimrc e $HOME/.vim/vimrc
command! Ctags !ctags -R .. -f .tags
set tags=.tags

" Color scheme
set t_Co=256
syntax on
set background=light
colorscheme Tomorrow
highlight Normal ctermbg=white

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
    set lines=50 columns=200
    set guitablabel=%N/\ %t\ %M
    map  <silent> <C-Tab>      :tabnext<CR>
    imap <silent> <C-Tab>      <C-O>:tabnext<CR>
    map  <silent> <C-S-Tab>    :tabprev<CR>
    imap <silent> <C-S-Tab>    <C-O>:tabprev<CR>
    nmap <silent> <C-PageDown> :tabnext<CR>
    nmap <silent> <C-PageUp>   :tabprevious<CR>
    nmap <silent> <C-c>        :tabclose<CR>
    map <silent> <M-1> :tabn 1<CR>
    map <silent> <M-2> :tabn 2<CR>
    map <silent> <M-3> :tabn 3<CR>
    map <silent> <M-4> :tabn 4<CR>
    map <silent> <M-5> :tabn 5<CR>
    map <silent> <M-6> :tabn 6<CR>
    map <silent> <M-7> :tabn 7<CR>
    map <silent> <M-8> :tabn 8<CR>
    map <silent> <M-9> :tabn 9<CR>
    map <silent> <M-0> :tabn 10<CR>
else
    map  <silent> <C-Tab>      :Tbbn<CR>
    imap <silent> <C-Tab>      <C-O>:Tbbn<CR>
    map  <silent> <C-S-Tab>    :Tbbp<CR>
    imap <silent> <C-S-Tab>    <C-O>:Tbbp<CR>
    nmap <silent> <C-PageDown> :Tbbn<CR>
    nmap <silent> <C-PageUp>   :Tbbp<CR>
    nmap <silent> <C-c>        :Tbbd<CR>
endif

Bundle 'airblade/vim-rooter'

execute "silent! source $HOME/.vim/local.vim"
execute "silent! source .local.vim"
