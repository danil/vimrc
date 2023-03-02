" This file is part of Danil <danil@kutkevich.org> home.

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Setting this option does not change the background color,
" it tells Vim what the background color looks like.
set background=dark

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Show the mode you are on the last line.
set showmode

" Incremental search.
set incsearch

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-W>a :ZoomToggle<CR>

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

     Plug 'ctrlpvim/ctrlp.vim'
     Plug 'dense-analysis/ale'
     Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
     Plug 'jlanzarotta/bufexplorer'
     Plug 'jparise/vim-graphql'
     Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
     Plug 'junegunn/fzf.vim'
     Plug 'kristijanhusak/vim-dadbod-ui'
     Plug 'lifepillar/pgsql.vim'
     Plug 'shougo/junkfile.vim'
     Plug 'tpope/vim-dadbod'
     Plug 'tpope/vim-fugitive'
     Plug 'tpope/vim-obsession'
     Plug 'vim-airline/vim-airline'

call plug#end()

" }}}

":hi CursorLine gui=underline cterm=underline
