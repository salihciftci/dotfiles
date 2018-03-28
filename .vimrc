"-------------------------------------------------------------------------------
" Vim Settings
" @salihciftci
"-------------------------------------------------------------------------------

set nocompatible
filetype off

"-------------------------------------------------------------------------------
" Plugins
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

call vundle#end()          
filetype plugin indent on   

"-------------------------------------------------------------------------------
" Key Mapping
"-------------------------------------------------------------------------------

let mapleader = ','
map <Leader>n :NERDTreeToggle<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

autocmd FileType go nmap <silent> <leader>r <Plug>(go-run)
autocmd FileType go nmap <silent> <leader>t <Plug>(go-test)
autocmd FileType go nmap <silent> <leader>b <Plug>(go-build)

map <C-n> :cn<CR>
map <C-m> :cp<CR>
nnoremap <leader>a :cclose<CR>

"Learning Vim - Disable Arrow Keys
nnoremap <Left> :echoe "Use h"<CR>
noremap! <Left> <Esc>
nnoremap <Right> :echoe "Use l"<CR>
noremap! <Right> <Esc>
nnoremap <Up> :echoe "Use k"<CR>
noremap! <Up> <Esc>
nnoremap <Down> :echoe "Use j"<CR>
noremap! <Down> <Esc>


"-------------------------------------------------------------------------------
" Settings
"-------------------------------------------------------------------------------

set number            " Enable line numbers
set scrolloff=5       " Leave 5 lines of buffer when scrolling
set sidescrolloff=10  " Leave 10 characters of horizontal buffer when scrolling
set encoding=utf-8    " Set default encoding to UTF-8
set autoread          " Automatically reread changed files without asking me anything
set noerrorbells      " No beeps
set noswapfile        " Don't use swapfile
set nobackup          " Don't create annoying backup files

syntax enable
set background=dark
set t_Co=256
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
let g:airline_theme='minimalist'
highlight QuickFixLine cterm=None ctermbg=256 guibg=#ffff00
highlight clear ErrorMsg

"-------------------------------------------------------------------------------
" Neovim-specific configurations
"-------------------------------------------------------------------------------

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif
