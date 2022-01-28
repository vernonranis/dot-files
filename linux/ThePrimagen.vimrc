set nocompatible
filetype off
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'jremmen/vim-ripgrep'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'mbbill/undotree'
call vundle#end()
filetype plugin indent on

" Sets
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set nowrap
set textwidth=0
set wrapmargin=0
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set mouse=a
set colorcolumn=80
set rtp+=~/.vim/bundle/Vundle.vim
set background=dark
"set clipboard=unnamedplus

syntax enable

highlight ColorColumn ctermbg=0 guibg=lightgrey

colorscheme gruvbox

" this allows rg to always detect root and to search for the git root and use gitignore for faster searching
if executable('rg')
    let g:rg_derive_root='true'required
endif

" lets
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ctrlp_use_caching=0
 
" Mappings
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>r :set nu! rnu!<CR> "toggle relative numbering
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap <C-c> :w !xclip -i -sel c<CR><CR>
