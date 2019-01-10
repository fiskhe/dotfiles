"THESE ARE THE EDITS I HAVE MADE
set term=xterm-256color	"This is sooo needed for my eyes!
set number
set ruler
set foldmethod=indent
set softtabstop=4
set shiftwidth=4
set expandtab
set scrolloff=10
set sidescrolloff=5
set noerrorbells
set ignorecase
set hlsearch


set list
" Shows dots for spaces and triangles for tabs
set listchars=tab:▸\ ,trail:·,precedes:←,extends:→
" 
" Shows dots for spaces and double arrows for tabs
" set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
" 
" set showbreak=\\ " [bonus]
" set listchars=tab:..,trail:_,extends:>,precedes:<,nbsp:~
" 
" set showbreak=↪\ 
" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
"
" set listchars=tab:»-,trail:·,eol:¶,extends:>,precedes:<

" Because I use the same commands a lot sometimes
nnoremap :: :<Up>

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

" Syntax checker
" Plugin 'scrooloose/syntastic'

" Shortcuts for commenting.
Plugin 'tomtom/tcomment_vim'

" <tab> completion
Plugin 'ervandew/supertab'

" LaTeX plugin
Plugin 'LaTeX-Box-Team/LaTeX-Box' " All of your Plugins must be added before the following line

" All the colorschemes pls
Plugin 'flazz/vim-colorschemes'

" gruvbox
Plugin 'morhetz/gruvbox'

" Vim airline
Plugin 'vim-airline/vim-airline'

" Moves through camelcased words n stuff
Plugin 'vim-scripts/camelcasemotion'

" Line indentation indicator (MWAH YES)
Plugin 'nathanaelkane/vim-indent-guides'

" Better Python syntax highlighting
Plugin 'hdima/python-syntax'

Plugin 'pangloss/vim-javascript'

" Python folding simply or sth!
" Plugin 'tmhedberg/SimpylFold'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" colorscheme molokai "Seriously though
colorscheme gruvbox
set bg=dark

let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
hi IndentGuidesEven ctermbg=240
hi IndentGuidesOdd ctermbg=237
" hi Number ctermfg=203
"https://alvinalexander.com/linux/vi-vim-editor-color-scheme-syntax
"
"PROPER SYNTAX HIGHLIGHTING
hi Argument ctermfg=36 cterm=italic
"Javscript
autocmd FileType javascript syn keyword Special console
autocmd FileType javascript syn match Number '\d'
autocmd FileType javascript syn match Special '[0-9a-zA-Z]' contained
autocmd FileType javascript syn match MethodCall '\.\([0-9a-zA-Z]\{-}\)(' contains=Special "MethodCall does not exist
autocmd FileType javascript syn match Operator '?\|:' contained
autocmd FileType javascript syn match TernaryOperator '?.\{-}:' contains=Operator "TernaryOperator does not exist
autocmd FileType javascript syn match Operator '&\|<\|>\||\|!\|+\|=\|-'
autocmd FileType javascript syn match Argument '\<.\{-}\>' contained
autocmd FileType javascript syn match ArgComma ',' contained
" autocmd FileType javascript syn keyword Number 'function' contained
autocmd FileType javascript syn match ArgumentsPlural '(\<.\{-}\>\{-})\s\{-}{' contains=ALL,Number
autocmd FileType javascript syn match Number '\d'

" Python
autocmd FileType Python syn keyword Special print

" Common abbreviation
abbr teh the
abbr ntr NERDTree
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
inoremap <F5> <C-w>
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
" Shortcut to show console
nnoremap <Leader>c :!<CR>

"LaTeX shortcuts
" Compile to pdf with latexmk
nnoremap <Leader>ll :Latexmk<CR>
" Beginsong shortcut for song package
inoremap beso \beginsong{}[]<CR><Backspace>\endsong<ESC>k$ba
" Beginverse shortcut for song package
inoremap beve \beginverse<CR><Backspace>\endverse<ESC>k
" Put in hymn index
inoremap hyen \indextitleentry[hymnidx]{}<ESC>i
" Put in modern index
inoremap moen \indextitleentry[modidx]{}<ESC>i

nnoremap <Leader>t gt
nnoremap <Leader>T gT

" Run python 3
autocmd FileType python nnoremap <Leader>r :exec '!python3' shellescape(@%, 1)<cr>

