call plug#begin('~/.local/share/nvim/site/plugged')
    Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
    Plug 'rust-lang/rust.vim'
    Plug 'godlygeek/tabular'
    Plug 'itchyny/lightline.vim' 
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'mrk21/yaml-vim'
    Plug 'cespare/vim-toml'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'neoclide/coc-rls'
    Plug 'MaskRay/ccls'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'tibabit/vim-templates'
call plug#end()

filetype plugin indent on
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set noshowmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set relativenumber
set undofile
nnoremap / /\v
vnoremap / /\v
set smartcase
set incsearch
set showmatch
set hlsearch
set wrap
set textwidth=114
set formatoptions=qrn1
set colorcolumn=120

map <F2> :mksession! ~/vim_session <cr>
map <F3> :source ~/vim_session <cr>

let g:lightline = { 'colorscheme': 'darcula' }
colorscheme dracula

" coc stuff
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

set updatetime=300
set shortmess+=c
set signcolumn=yes

"deoplete
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

"nerdtree
nmap <C-n> :NERDTreeToggle<CR>

"netrw bs
let g:netrw_silent = 1
