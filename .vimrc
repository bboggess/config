runtime! debian.vim

set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set cursorline
set number
set ruler
set showcmd
set showmatch
set incsearch
set mouse=a
set showtabline=2

if has("autocmd")
    "For java files
    autocmd FileType java abbreviate psvm public static void main
    autocmd FileType java abbreviate sop System.out.println();
    autocmd FileType java nnoremap sop iSystem.out.println();<esc>hi

    "For c-style languages
    autocmd FileType java,c inoremap { {}<left><cr><cr><esc>==kA
    "autocmd FileType java,c,python inoremap ( ()<esc>i
    "autocmd FileType java,c,python inoremap () ()<esc>i
    "autocmd FileType java,c,python inoremap [ []<esc>i
    "autocmd FileType java,c,python inoremap [] []<esc>i

endif

inoremap jk <esc>
nnoremap <space> zz
nnoremap ; :
nnoremap QQ :tabdo :q!<cr>

colorscheme slate
syntax on

filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
