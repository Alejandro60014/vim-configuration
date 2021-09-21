set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
"Plugins
call plug#begin('~/.vim/plugged')
"Temas
Plug 'morhetz/gruvbox'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'spf13/vim-autoclose'
call plug#end()
"Configuración plugs
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [], ['relativepath', 'modified']],
      \   'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'component_function': {
      \   'gitbranch':'fugitive#head' 
      \}
      \}
"Shortcuts plugins
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <C-t> :FloatermNew --position=topright<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Git commit -m
inoremap <silent><expr> <c-space> coc#refresh()
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
"Personal Shorcuts
nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq!<CR>
nnoremap <Leader>q :q<CR>
inoremap ii <Esc>
