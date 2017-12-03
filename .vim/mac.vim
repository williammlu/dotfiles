" Maps F1 to paste, F2 to copy
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

""" COPY AND PASTE

let g:livepreview_previewer = 'open -a Preview' "For Latex live previewing https://github.com/xuhdev/vim-latex-live-preview
