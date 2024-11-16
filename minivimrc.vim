" Minimal vim/neovim config

" USAGE:
" $ vim -u minivimrc.vim
"
" Or create a shell alias:
" alias mvim='nvim -u ~/.config/nvim/minivimrc.vim'

" show line numbers
set number

" enable syntax highlighting
syntax enable

" use system clipboard
set clipboard+=unnamedplus

" Navigation
nnoremap L $
vnoremap L $

nnoremap H 0
vnoremap H 0

nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

nnoremap gr gT

" Escape with jk
inoremap jk <Esc>l

" Typos
nnoremap ; :
vnoremap ; :
nnoremap " :

nnoremap J j
vnoremap J j

" abbrev
cabbrev tn tabnew
