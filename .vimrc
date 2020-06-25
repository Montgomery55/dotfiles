scriptencoding utf-8
set encoding=utf-8
set nocompatible
let g:sh_noisk = 1

"has to do with filetype-specific settings (e.g. how to indent or highlight
"python files)
filetype plugin indent on

"sets tabs/indents to 4 characters and expands tabs to 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

"lets vim know the (terminal) background is dark, so that it knows to avoid
"using overly dark colors for text
set background=dark

"ensures that syntax highlighting (e.g. functions are a different color) is
"on
syntax enable

"makes searching with / better
"vim will
" - highlight matches as you type
" - search case-insensitively if you only use lowercase
"   - if you use any uppercase in the search, then the whole search is
"     case-sensitive
set hlsearch incsearch ignorecase smartcase

"adds line numbers personally, I like relative numbering, so the current line
"shows the actual number and the other lines display how many lines away they
"are
set number
"shows your position (line:column) in the bottom right
set ruler

"sets different displays for characters that "look like whitespace"
"for example
"       this line starts with a tab
"   this line does not
set list
set listchars=tab:>-,trail:-,eol:¬

"an example of a mapping
"this particular mapping makes it so that you can type "jk" instead of escape
"to get out of insert mode (you can change the "jk" to "jj" or whatever you
"find most convenient)
inoremap jk <esc>

"does some stuff so that when you re-open files, you start on the line you
"were on when you closed it
augroup line_return
    au!
        au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif
augroup END
