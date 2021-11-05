set nocompatible
filetype off

set number
syntax on
colorscheme hybrid

" press F2 to paste
set pastetoggle=<F2>

" highlight search
set hlsearch

" leader key
let mapleader=','

" quick save
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" jj instead Esc
inoremap jj <Esc>

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

au BufNewFile,BufRead *.py
    \ set tabstop=4     |
    \ set softtabstop=4 |
    \ set shiftwidth=4  |
    "\ set textwidth=79  |
    \ set expandtab     |
    \ set autoindent
    "\ set fileformat=unix

" indentLine
let g:indentLine_fileType = ['python', 'golang']
let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" nerdtree
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeSHowHidden = 1
let NERDTreeIgnore = [
                    \ '\.git$', '\.pyc$', '\.pyo$', '\.swp$',
                    \ '\.DS_Store$', '__pycache__$'
                    \ ]

" ctrlp.vim
let g:ctrlp_map = '<C-p>'

" easymotion
nmap ss <Plug>(easymotion-s2)

" vim-go
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" python-mod
let g:pymode_python = 'python3'
let g:pymode_trim_whitespace = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_options_max_line_length = 120



" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" color-scheme
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'


" Initialize plugin system
call plug#end()
