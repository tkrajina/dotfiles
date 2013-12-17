" s to save file in command mode:
map s :w<CR>

" No swap files:
set noswapfile 

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
map ZQ :conf q<CR>

if has("gui_running")
    colorscheme koehler
else
    colorscheme koehler
endif

" Enumerate tabs in text mode (copy-paste from
" http://stackoverflow.com/questions/11366390/how-to-enumerate-tabs-in-vim
fu! MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    let string = fnamemodify(bufname(buflist[winnr - 1]), ':t')
    return empty(string) ? '[unnamed]' : string
endfu

fu! MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
    " select the highlighting
        if i + 1 == tabpagenr()
        let s .= '%#TabLineSel#'
        else
        let s .= '%#TabLine#'
        endif

        " set the tab page number (for mouse clicks)
        "let s .= '%' . (i + 1) . 'T'
        " display tabnumber (for use with <count>gt, etc)
        let s .= ' '. (i+1) . ' ' 

        " the label is made by MyTabLabel()
        let s .= ' %{MyTabLabel(' . (i + 1) . ')} '

        if i+1 < tabpagenr('$')
            let s .= ' |'
        endif
    endfor
    return s
endfu
set tabline=%!MyTabLine()

" Enumerate tabs for gvim:
set guitablabel=(%N)\ %t\ %M

