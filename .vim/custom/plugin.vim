filetype plugin indent on
""" VUNDLE

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'wincent/command-t'
Plugin 'lervag/vimtex'
Plugin 'itchyny/vim-cursorword'
Plugin 'scrooloose/nerdcommenter'
Plugin 'arcticicestudio/nord-vim'
" Plugin 'rafi/awesome-vim-colorschemes'

call vundle#end()

""" PLUGIN SPECIFICS

"Easymotion
map ff <Plug>(easymotion-s)

"YouCompleteMe
let g:ycm_python_binary_path = 'python2.7'

"Nerdcommenter
vnoremap <leader><Space> :call NERDComment(0,"toggle")<cr>
nnoremap <leader><Space> :call NERDComment(0,"toggle")<cr>
"Latex changes
autocmd BufNewFile,BufRead *.tex LLPStartPreview
