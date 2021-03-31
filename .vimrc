" Plugin Manager Configs 
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible
call plug#begin('~/.vim/pack/plugins/start')


"snippets & auto completion 
Plug 'SirVer/ultisnips' "sinppet engine 
Plug 'honza/vim-snippets' "another sinppet engine might remove eventually
Plug 'sheerun/vim-polyglot' "helps in autocompeletion for multiple languages

"async lint enigine
Plug 'dense-analysis/ale' 

"file tree window
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"fuzzy finder 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"NERD commenter
Plug 'preservim/nerdcommenter'

Plug 'itchyny/lightline.vim'
" Color Scheme 
Plug 'ghifarit53/tokyonight-vim'
Plug 'ap/vim-css-color'

" Initialize plugin system
call plug#end()


" editor configrations

let mapleader=";"
set number
set autoindent
set tabstop=4
set expandtab 
set softtabstop=4
set laststatus=2
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background=1

colorscheme tokyonight

let g:lightline={'colorscheme': 'tokyonight'}

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
set ttymouse=sgr

"fzf configs
let g:fzf_preview_window = ['right:30%', 'ctrl-/']

"config ale to fix everything on autosave
let g:ale_fixers = { 
      \ 'javascript': ['prettier'] ,
      \ 'html': ['prettier'] ,
      \ 'css': ['prettier'] ,
      \ 'json': ['prettier'] 
      \ } 
let g:ale_linters = {
      \ 'javascript': ['eslint'] ,
      \ 'html': ['eslint'] ,
      \ 'css': ['eslint'] ,
      \ 'json': ['eslint'] 
      \ } 
let g:ale_fix_on_save=1

"Mapping nerdtree keys
nnoremap <A-f> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle <CR>


autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror


"Remaping weird default navigation 
map <C-h> <c-w>h
map <C-l> <c-w>l
map <C-j> <c-w>j
map <C-k> <c-w>k
