"set guifont=Monaco\ 11
set guifont=Inconsolata\ 13
set lines=40 columns=140

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
inoremap <C-Space> <C-n>
