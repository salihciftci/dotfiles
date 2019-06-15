"-------------------------------------------------------------------------------
" Vim Settings
" @salihciftci
"-------------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'fatih/molokai'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'tmpl'] }
call plug#end()

"-------------------------------------------------------------------------------
" Settings
"-------------------------------------------------------------------------------

filetype off                    	" Reset filetype detection first ...
filetype plugin indent on       	" ... and enable filetype detection
set nocompatible                	" Enables us Vim specific features
set clipboard=unnamed			" Enable to copy to clipboard
set backspace=indent,eol,start  	" Makes backspace key more powerful.
set ttyfast                     	" Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             	" Indicate terminal type for mouse codes
set ttyscroll=3                 	" Speedup scrolling
set laststatus=2                	" Show status line always
set encoding=utf-8              	" Set default encoding to UTF-8
set autoread                    	" Automatically read changed files
set autoindent                  	" Enabile Autoindent
set incsearch                   	" Shows the match while typing
set hlsearch                    	" Highlight found searches
set noerrorbells                	" No beeps
set number                      	" Show line numbers
set showcmd                     	" Show me what I'm typing
set noswapfile                  	" Don't use swapfile
set nobackup                    	" Don't create annoying backup files
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
set updatetime=100
set expandtab ts=4 sw=4 ai
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
let g:airline_theme='minimalist'
colorscheme molokai
"-------------------------------------------------------------------------------
" Key Mapping
"-------------------------------------------------------------------------------

" Set leader shortcut to a comma ','. By default it's the backslash
let mapleader = ','

" Toggle NERDTree
map <Leader>n :NERDTreeToggle<CR>

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

"Binding F1 to ESC
"It's really ennoying to open help menu in touchbar
map <F1> <Esc>
imap <F1> <Esc>

"-------------------------------------------------------------------------------
" Plugin Settings
"-------------------------------------------------------------------------------

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

" Prettier
let g:prettier#config#tab_width = 4
