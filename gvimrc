"set guifont=Inconsolata\ 13
set guifont=Inconsolata\ for\ Powerline\ 13,Inconsolata\ 13
set lines=40 columns=145

" Use fancy symbols in statusline
let g:Powerline_symbols = "fancy"

" Use a different Powerline cache file for gvim
let g:Powerline_cache_file = "/tmp/Powerline-gvim.cache"

" remove menu etc
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=b

" disable mouse
set mouse-=a

" remove scrollbars
set guioptions-=L
set guioptions-=r

" use console dialog box instead of GUI
set guioptions+=c

" ctrl+space for autocompletion
inoremap <C-Space> <C-x><C-o>
"
" colorscheme
colorscheme solarized
