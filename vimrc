" enable all features
set nocompatible

" pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype indent on
filetype plugin on

" disable word wrap
set nowrap

" use tabs, tabsize 4 spaces
set tabstop=4
set smarttab
set shiftwidth=4
set autoindent

set backspace=start,indent

" ruby
autocmd FileType ruby,eruby,cucumber set expandtab tabstop=2 shiftwidth=2 tabstop=2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" line numbers
set number

" highlight the searchterms
set hlsearch

" jump to matches while typing
set incsearch

" ignore case while searching if all lowercase
set ignorecase
set smartcase

" don't wrap words
set textwidth=0

" history and undo
set history=1000
set undolevels=1000

" show matching braces
set showmatch

" enable syntax highlighting
syntax on
set bg=dark

" enable 256 color terminal
set t_Co=256

" always show the menu, insert longest match
set completeopt=menuone,longest

" bash-like tab completion
set wildmode=longest,list,full

" allows changing buffer with unsaved changes
set hidden

" colorscheme
colorscheme molokai

set grepprg=ack-grep
set grepformat=%f:%l:%m

" statusline
set statusline=%t%m%r\ %{fugitive#statusline()}%=[%{&ff}%Y]\ [%04l,%04v,%p%%]
set laststatus=2

" highlight current line
"set cursorline

" show command
set showcmd

" disable F1 key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" movement by screenline instead of file line
nnoremap j gj
nnoremap k gk

" next/prev tab
nnoremap <c-l> gt
nnoremap <c-h> gT

" set , as leader
let mapleader = ","

" toggle NERDTree with \d
nnoremap <leader>d :NERDTreeToggle<cr>

" NERDTree size
let NERDTreeWinSize = 40

" remove trailing white-spaces with \W
nnoremap <leader>W :%s/\s\+$//<cr>:noh<CR>

" toggle word wrap
nnoremap <leader>w :set wrap!<cr>

" remove highlight on \<space>
nnoremap <leader><space> :noh<cr>

compiler ruby

" open browser
:command -bar -nargs=1 OpenURL :!sensible-browser <args>

" change default filetype back to 'tex' for latex files
let g:tex_flavor='latex'

" snipMate
let g:snips_author = 'Joel Stemmer'

" disable indentation for pasting
nnoremap <F2> :set invpaste paste?<CR>

" bufexplorer: map b
nnoremap <silent> <unique> <leader>b :BufExplorer<CR>

" ignore files
set wildignore+=*.class,*.rbc

" command-t to <leader>v
nnoremap <silent> <leader>v :CommandT<CR>
nnoremap <F5> :CommandTFlush<CR>

" taglist
nnoremap <silent> <leader>t :TlistToggle<CR>

" taglist: focus window on open
let Tlist_GainFocus_On_ToggleOpen = 1

" taglist: taglist window on the right side
"let Tlist_Use_Right_Window = 1

" taglist: sort tags by name
let Tlist_Sort_Type = "name"

" taglist: increase window width
let Tlist_WinWidth = 40

" gitolite
autocmd FileType gitolite set expandtab tabstop=4 shiftwidth=4 tabstop=4

" tabular: align ruby symbols
nnoremap <leader>r: :Tabularize / :/l0<cr>

" enable matchit for vim-textobj-rubyblock plugin
runtime macros/matchit.vim

" fugitive mappings
nnoremap <leader>go :Gbrowse<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gw :Gwrite<cr>
