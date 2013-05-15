" Ignore case when searching:
set ic

" Autoindent:
set ai

" Search for the current word with *
set hlsearch

" Tabstop to 4:
set tabstop=4
set smarttab
set expandtab
set softtabstop=4

" Set >> and << to 4 spaces:
set shiftwidth=4

" Fold by indentation:
set foldmethod=indent
set foldlevel=0

" Color syntax:
syntax on

" Highlight search matches:
set hlsearch

" TODO file syntax
" enable with set syntax=plusminus
au Syntax todo runtime! syntax/plusminus.vim

" Command to enable plusminus highlighting
command PM :set syntax=plusminus

" 'Copy all' shortcut
map <C-c>a mc1GVG"+y'c<CR>

" colorscheme darkblue

"80 lines wordwrap:
map <C-W>w 080lBi<CR><Esc> 

map <C-c> :!ctags -R .<CR>

" Refresh:
map <F5>          :e<CR>
" Refresh and go to end of file:
map <F6>          :e<CR>G

" Ask to save on QA
map ZQ :conf qa<CR>
