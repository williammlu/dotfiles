filetype plugin indent on
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
Plugin 'scrooloose/nerdcommenter'

call vundle#end()

""" PLUGIN SPECIFICS

"Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='dark'
set t_Co=256

"Easymotion
map ff <Plug>(easymotion-s)

"YouCompleteMe
let g:ycm_python_binary_path = 'python2.7'

"Nerdcommenter
vnoremap <leader><Space> :call NERDComment(0,"toggle")<cr>
nnoremap <leader><Space> :call NERDComment(0,"toggle")<cr>
"Latex changes
autocmd BufNewFile,BufRead *.tex LLPStartPreview
