" Plugin Manager Configs 
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible
call plug#begin('~/.vim/pack/plugins/start')
 
Plug 'honza/vim-snippets' "another sinppet engine might remove eventually
Plug 'sheerun/vim-polyglot' "helps in autocompeletion for multiple languages
Plug 'dense-analysis/ale' "async lint engine    
Plug 'rhysd/vim-clang-format' "autoformat for c++ & other langs
"editor hacks
Plug 'terryma/vim-multiple-cursors'
"async lint enigine

"file tree window
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"fzf version not compatible with fzf-vim ;(
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'



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
      \ 'json': ['prettier'] ,
      \ } 
let g:ale_linters = {
      \ 'javascript': ['eslint'] ,
      \ 'html': ['eslint'] ,
      \ 'css': ['eslint'] ,
      \ 'json': ['eslint'] 
      \ } 
let g:ale_fix_on_save=1

"Clang fromatter configs
"let g:clang_format#style_options = {
            "\ "AccessModifierOffset" : -4,
            "\ "AllowShortIfStatementsOnASingleLine" : "true",
            "\ "AlwaysBreakTemplateDeclarations" : "true",
            "\ "Standard" : "C++11",
            "\ "BreakBeforeBraces" : "Stroustrup"}

"let g:clang_format#auto_format=1

" map to <leader>cf in c++ code
"autocmd filetype c,cc,cpp,objc nnoremap <buffer><leader>cf :<c-u>clangformat<cr>
"autocmd filetype c,cc,cpp,objc vnoremap <buffer><leader>cf :clangformat<cr>
"map <leader>c :clangformatautotoggle<cr>


"Mapping nerdtree keys
nnoremap <A-f> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle <CR>

"Mapping FZF keys 

nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>


autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror


"Remaping weird default navigation 
map <C-h> <c-w>h
map <C-l> <c-w>l
map <C-j> <c-w>j
map <C-k> <c-w>k

"Mapping for arabic/english switchers 
nnoremap <leader>a :set rl <CR>
nnoremap <leader>e :set norl <CR>

"Mapping for auto closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<left>
