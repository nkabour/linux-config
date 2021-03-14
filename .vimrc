" Plugin Manager Configs 
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/pack/plugins/start')

 " " Make sure you use single quotes
 
 " " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'
 " 
 " " Any valid git URL is allowed
 " Plug 'https://github.com/junegunn/vim-github-dashboard.git'
 " 
 " " Multiple Plug commands can be written in a single line using | separators
 " Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
 " 
 " " On-demand loading
 " Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 " Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
 " 
 " " Using a non-default branch
 " Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
 " 
 " " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
 " Plug 'fatih/vim-go', { 'tag': '*' }
 " 
 " " Plugin options
 " Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
 " 
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"https://github.com/itchyny/lightline.vim

" Color Scheme 
Plug 'ghifarit53/tokyonight-vim'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()



" editor configrations

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


