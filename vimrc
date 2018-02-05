"THESE ARE THE EDITS I HAVE MADE
set term=xterm-256color	"This is sooo needed for my eyes!
colors molokai		"Seriously though
set number
set foldmethod=indent
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Because I use the same commands a lot sometimes
nnoremap : :<Up>
nnoremap :: :

" PLOOOOOGIIIINDSSS
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" PLUGINS GALORE BELOW!
Plugin 'scrooloose/nerdtree'	" A tree explorer plugin for vim

" Shortcuts for commenting.
Plugin 'tomtom/tcomment_vim'

" <tab> completion
Plugin 'ervandew/supertab'

" LaTeX plugin
Plugin 'LaTeX-Box-Team/LaTeX-Box'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Common abbreviation
abbr teh the
abbr ntree NERDTree
abbr desktop /cygdrive/c/users/fiskh/desktop 
abbr ret return

function s:Cursor_Moved()
    set cul
  " let cur_pos = winline()
  " if g:last_pos == 0
  "   set cul
  "   let g:last_pos = cur_pos
  "   return
  " endif
  " let diff = g:last_pos - cur_pos
  " if diff > 1 || diff < -1
  "   set cul
  " else
  "   set nocul
  " endif
  " let g:last_pos = cur_pos
endfunction
autocmd CursorMoved,CursorMovedI * call s:Cursor_Moved()
let g:last_pos = 0
"THESE ARE THE EDITS I HAVE MADE 

" Make <C-Backspace> map tp <C-w>
" inoremap <F5> <C-w>
inoremap <C-F5> <C-w>
inoremap <F17> <C-w>
inoremap <C-F17> <C-w>
nnoremap <C-F17> <C-w>



" 'jk' is escape
inoremap Jk <C-]><esc>
inoremap JK <C-]><esc>
inoremap jk x<Backspace><C-]><esc>
inoremap kj <C-]><esc>

" Remap common actions.
let mapleader = "\<Space>"

" Shortcut for write.
nnoremap <Leader>e :w<CR>

" Shortcut for close without writing.
nnoremap <Leader>f :q!<CR>

" Shortcut for moving to first char of line.
nnoremap B ^


"THESE ARE THE EDITS I HAVE MADE (TOO)
"LaTeX shortcuts
" Compile to pdf with latexmk
nnoremap <Leader>ll :Latexmk<CR>
" Beginsong shortcut for song package
inoremap beso \beginsong{}[]<CR><Backspace>\endsong<ESC>k$ba
" Beginverse shortcut for song package
inoremap beve \beginverse<CR><Backspace>\endverse<ESC>k



