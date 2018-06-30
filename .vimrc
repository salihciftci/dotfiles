"-------------------------------------------------------------------------------
" Vim Settings
" @salihciftci
"-------------------------------------------------------------------------------

set timeoutlen=1000 ttimeoutlen=0 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'hdima/python-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'AndrewRadev/splitjoin.vim'

call vundle#end()          
filetype plugin indent on  

"-------------------------------------------------------------------------------
" Settings
"-------------------------------------------------------------------------------

set nocompatible                	" Enables us Vim specific features
filetype off                    	" Reset filetype detection first ...
filetype plugin indent on       	" ... and enable filetype detection
set ttyfast                     	" Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             	" Indicate terminal type for mouse codes
set ttyscroll=3                 	" Speedup scrolling
set laststatus=2                	" Show status line always
set encoding=utf-8              	" Set default encoding to UTF-8
set autoread                    	" Automatically read changed files
set autoindent                  	" Enabile Autoindent
set backspace=indent,eol,start  	" Makes backspace key more powerful.
set incsearch                   	" Shows the match while typing
set hlsearch                    	" Highlight found searches
set noerrorbells                	" No beeps
set number                      	" Show line numbers
set showcmd                     	" Show me what I'm typing
set noswapfile                  	" Don't use swapfile
set nobackup                    	" Don't create annoying backup files
set splitright                  	" Vertical windows should be split to right
set splitbelow                  	" Horizontal windows should split to bottom
set autowrite                   	" Automatically save before :next, :make etc.
set hidden                      	" Buffer should still exist if window is closed
set fileformats=unix,dos,mac    	" Prefer Unix over Windows over OS 9 formats
set noshowmatch                 	" Do not show matching brackets by flickering
set noshowmode                  	" We show the mode with airline or lightline
set ignorecase                  	" Search case insensitive...
set smartcase                   	" ... but not it begins with upper case
set completeopt=menu,menuone    	" Show popup menu, even if there is one entry
set pumheight=10                	" Completion window max size
set nocursorcolumn              	" Do not highlight column (speeds up highlighting)
set nocursorline                	" Do not highlight cursor (speeds up highlighting)
set lazyredraw                  	" Wait to redraw
set clipboard=unnamed			" Enable to copy to clipboard
setlocal omnifunc=go#complete#Complete	" Auto Complete 

" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif

"-------------------------------------------------------------------------------
" Colorscheme
"-------------------------------------------------------------------------------

syntax enable
set background=dark
set t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
let g:airline_theme='minimalist'

"-------------------------------------------------------------------------------
" Key Mapping
"-------------------------------------------------------------------------------

" Set leader shortcut to a comma ','. By default it's the backslash
let mapleader = ','

" Toggle NERDTree
map <Leader>n :NERDTreeToggle<CR>

" :GoRun, :GoTest, :GoBuild
autocmd FileType go nmap <silent> <leader>r <Plug>(go-run)
autocmd FileType go nmap <silent> <leader>t <Plug>(go-test)
autocmd FileType go nmap <silent> <leader>b <Plug>(go-build)

" Jump to next error with Ctrl-n and previous error with Ctrl-m. Close the
" quickfix window with <leader>a
map <C-n> :cn<CR>
map <C-m> :cp<CR>
nnoremap <leader>a :cclose<CR>

" Disable Arrow Keys
nnoremap <Left> :echoe "Use h"<CR>
noremap! <Left> <Esc>
nnoremap <Right> :echoe "Use l"<CR>
noremap! <Right> <Esc>
nnoremap <Up> :echoe "Use k"<CR>
noremap! <Up> <Esc>
nnoremap <Down> :echoe "Use j"<CR>
noremap! <Down> <Esc>

"-------------------------------------------------------------------------------
" Plugin Settings
"-------------------------------------------------------------------------------

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Vim-GO
let g:go_addtags_transform = "camelcase"
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
