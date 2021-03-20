" Plugin Manager Configs 
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/pack/plugins/start')
 
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
  
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"fzf version not compatible with fzf-vim ;(
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'


Plug 'itchyny/lightline.vim'

" Color Scheme 
Plug 'ghifarit53/tokyonight-vim'


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

" Ez Align Config
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"fzf configs
"let g:fzf_preview_window = ['right:30%', 'ctrl-/']


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
