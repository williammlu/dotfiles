colorscheme badwolf
set nocompatible              " be iMproved, required
filetype off                  " required

highlight Cursor guifg=orange guibg=white
highlight iCursor guifg=white guibg=red

""" COPY AND PASTE

" Maps F1 to paste, F2 to copy
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

if $TMUX == ''
    set clipboard+=unnamed
endif
set pastetoggle=<F3> " Press F3 to toggle paste


""" VISUALS AND BEHAVIOR


filetype plugin indent on

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
set undolevels=100
syntax on

let g:livepreview_previewer = 'open -a Preview' "For Latex live previewing https://github.com/xuhdev/vim-latex-live-preview
autocmd BufNewFile,BufRead *.tex LLPStartPreview

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"


""" COPY AND PASTE


" For pasting without needing to set paste all the time
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction


""" COMMENTING


let s:comment_map = { 
    \   "ahk": ';',
    \   "bash_profile": '#',
    \   "bashrc": '#',
    \   "bat": 'REM',
    \   "c": '\/\/',
    \   "conf": '#',
    \   "cpp": '\/\/',
    \   "desktop": '#',
    \   "eml": '>',
    \   "fstab": '#',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "mail": '>',
    \   "matlab": '%',
    \   "php": '\/\/',
    \   "profile": '#',
    \   "python": '#',
    \   "ruby": '#',
    \   "s": '#',
    \   "scala": '\/\/',
    \   "sh": '#',
    \   "sql": '--',
    \   "tex": '%',
    \   "vim": '"',
    \ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
    if getline('.') =~ "^\\s*" . comment_leader . " " 
        " Uncomment the line
        execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
    else 
        if getline('.') =~ "^\\s*" . comment_leader
            " Uncomment the line
            execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
        else
            " Comment the line
            execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
        end
    end
    else
        echo "No comment leader found for filetype"
    end
endfunction

nnoremap <leader><Space> :call ToggleComment()<cr>
vnoremap <leader><Space> :call ToggleComment()<cr>



""" VUNDLE

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'wincent/command-t'
Plugin 'lervag/vimtex'
Plugin 'itchyny/vim-cursorword'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""" PLUGIN SPECIFICS

"Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='dark'
set t_Co=256

"Easymotion
map f <Plug>(easymotion-prefix)
" easymotion so you press ff to easymotion it!

"YouCompleteMe
let g:ycm_python_binary_path = 'python2.7'

execute pathogen#infect()
