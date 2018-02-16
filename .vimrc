set mouse=a

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
"filetype plugin on
"filetype indent on

" Display line numbers
set number

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Autoindent & Smartindent
"set ai
"set si

" Always show status line
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" Use the OS clipboard by default
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case and use smart casing when searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" Show command in status line
set showcmd

" Enable syntax highlighting
syntax enable

" Use desert color scheme
colorscheme elflord

" Use Unix as the standard file type
set ffs=unix,dos,mac

" utf8 as a default encoding
set encoding=utf8

" Use 4 spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
    map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
execute pathogen#infect()
call pathogen#helptags()
