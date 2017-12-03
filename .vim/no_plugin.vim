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

