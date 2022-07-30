"remember last position
source $VIMRUNTIME/vimrc_example.vim

syntax on
colo default


"syntax off
"set hlsearch

"set text color
"highlight Normal ctermbg=Black ctermfg=Gray
"
"set font
set gfn=Monospace\ 13

"relative line numbering
set number
set rnu
highlight LineNr ctermfg=Grey
hi CursorLineNr ctermfg=White

"hi current line
set cursorline
highlight Cursorline cterm=bold

"no linebreaks
set nowrap

hi CursorLine gui=underline cterm=underline

"Turned off because it interferes with paste mode
"set mouse=a

" enables powerline-vim, a nice bottom bar
set laststatus=2

" allows python scripts to be executed with F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
