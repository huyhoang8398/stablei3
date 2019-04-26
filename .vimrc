set nocompatible              " be iMproved, required
filetype off                  " required <<========== We can turn it on later

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Bundle 'Valloric/YouCompleteMe'
" <============================================>
" Specify the plugins you want to install here.
" We'll come on that later
" <============================================>
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Put the rest of your .vimrc file here

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'itchyny/lightline.vim'
let g:vim_markdown_folding_disabled = 1

"panthogen vim
execute pathogen#infect()
"set ctrl + c, ctrl +v copy paste
vnoremap <C-c> "+y
map <C-p> "+p

filetype on
syntax on
set cursorline
hi clear CursorLine
hi CursorLine gui=underline term=bold cterm=underline guibg=Grey40 
set number	
set linebreak		
set showbreak=+++	
set textwidth=100	
set showmatch		
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
 
set autoindent	
set shiftwidth=2	
set smartindent	
set smarttab	
set softtabstop=2

" git time delay
set updatetime=100

" Always show statusline
set laststatus=2
set relativenumber
set ruler	
set noshowmode
let g:lightline = {
  \	'colorscheme': 'seoul256',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'
"switch tab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

