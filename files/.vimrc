"OPTIONS
set background=dark
set number
set relativenumber
syntax on
filetype plugin indent on
set tabstop=2
set softtabstop=2
set nobackup
set noswapfile
set noundofile
let mapleader = " "

autocmd TextChanged,TextChangedI *.vue silent write

"MAPPINGS
"nnoremap <leader>ev :tabedit $HOME/.vimrc<CR>
"nnoremap <leader>rv :source %<CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gt

inoremap kj <Esc><Esc>
vnoremap kj <Esc><Esc>

