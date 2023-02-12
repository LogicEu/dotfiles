" This file is available at https://github.com/LogicEu/dotfiles.git

" Main defaults
set t_Co=256
colorscheme default
syntax on

" Sometimes I uncomment this line to highlight typedefs in C
" syn match cType "[a-zA-Z_][a-zA-Z0-9_]*_[ft]" 

" Main wrapping and formatting behavior
set modelines=0
set wrap
set textwidth=84
set formatoptions=tcqrn1
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Indentantion features
"set autoindent
set smartindent
set cindent

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
set backspace=indent,eol,start
set ttyfast
set laststatus=2
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Show line numbers
set number
set relativenumber

" Mouse settings
set ttymouse=xterm2
set mouse=a

" Status bar
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

set encoding=utf-8

" Smart search
set hlsearch
set incsearch

set ignorecase
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" Recognize file extensions 
autocmd BufEnter *.frag :setlocal filetype=cpp
autocmd BufEnter *.glsl :setlocal filetype=cpp
autocmd BufEnter *.vert :setlocal filetype=cpp
autocmd BufEnter *.m :setlocal filetype=cpp

