set rtp+=~/.vim/bundle/awesome-vim-colorschemes
set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme badwolf
"colorscheme deus
" highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=white guibg=steelblue
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10


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
" hi Visual term=reverse cterm=reverse guibg=white

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

" set relativenumber
set scrolloff=7
set shiftwidth=4
set smartcase
set tabstop=4
set title
set undolevels=1000
set wildmenu
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

highlight Cursor guifg=black guibg=black
highlight iCursor guifg=black guibg=black
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait1
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
   let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
   let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
hi MatchParen cterm=bold ctermbg=white ctermfg=magenta
