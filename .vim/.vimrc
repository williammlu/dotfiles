set rtp+=~/.vim/bundle/awesome-vim-colorschemes


set nocompatible              " be iMproved, required
filetype off                  " required

highlight Cursor guifg=orange guibg=white
highlight iCursor guifg=white guibg=red

if $TMUX == ''
    set clipboard+=unnamed
endif


""" VISUALS AND BEHAVIOR

source ~/.vim/custom/statusline.vim
imap jj <Esc> " Remaps jj to esc
map <F7> mzgg=G`z " press f7 to indent all code

set hlsearch
set incsearch
hi Comment guifg=#32CD32
hi Visual term=reverse cterm=reverse guibg=white
highlight MatchParen ctermfg=blue ctermbg=208 "highlights matching parentheses in orange and makes text blue

let s:pairs={}
nnoremap ; :
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

set background=dark
set backspace=indent,eol,start
set copyindent
set autoindent
set cursorcolumn
set cursorline
set expandtab
set hidden
set history=1000
set ignorecase
set mouse=a
set number
set relativenumber
set scrolloff=7
set shiftwidth=4
set shiftwidth=4
set smartcase
set tabstop=4
set title
set undolevels=1000
set wildmenu
colorscheme badwolf
"colorscheme deus
syntax on



let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

" For pasting without needing to set paste all the time
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
