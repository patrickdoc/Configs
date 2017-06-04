" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype plugin indent on    " required

set grepprg=grep\ -nH\ $*

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartindent
set laststatus=2
syntax enable

" Hardmode, stop using single movement keys
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Right> <NOP>
nnoremap <Left> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Right> <NOP>
inoremap <Left> <NOP>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

let mapleader='\'

" Airline stuff
" This switches modes faster
set ttimeoutlen=10
let g:airline#extensions#tabline#enabled=1

" Recursively look for files
set path+=**
" Pop-up all options
set wildmenu

" Make tags
command! MakeTags !ctags -R .

"
" Buffer management
"
nnoremap <C-E> <NOP>
" Change buffers left
nnoremap <C-E>h :bp<CR>
nnoremap <C-E><C-h> :bp<CR>
" Change buffers right
nnoremap <C-E>l :bn<CR>
nnoremap <C-E><C-l> :bn<CR>
" Delete buffer
nnoremap <Leader>d :bdel<CR>

"
" Netrw
"
" Toggle netrw
nnoremap <Leader>n :Lexplore<CR>
" Remove banner
let g:netrw_banner = 0
" Open new files in vertical split
let g:netrw_browse_split = 2
" Open files on right instead of left
let g:netrw_altv = 1
" Open at a reasonable size
let g:netrw_winsize = 25

"
" Latex
"
let g:tex_flavor='latex'
let g:LatexBox_latexmk_preview_continuously=1
