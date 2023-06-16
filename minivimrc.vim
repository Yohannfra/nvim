" Use this instead of vim -u NONE for opening large files
" USAGE:
" $ vim -u minivimrc.vim
"
" Or create a shell alias:
" alias mvim='nvim -u ~/.config/nvim/minivimrc.vim'

" set numbers
set nu

nnoremap L $
vnoremap L $

nnoremap H 0
vnoremap H 0

nnoremap gr gT

inoremap jk <Esc>l

nnoremap <Enter> O<Esc>j

nnoremap ; :
vnoremap ; :
nnoremap " :

ccabrev tn tabnew
