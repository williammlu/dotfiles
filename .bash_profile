export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "
set -o vi # edits in vi style if you press esc 
# set -o noclobber #no override with >, must use >> instead
set -o ignoreeof

bind Space:magic-space
# alias vim='mvim -v'

alias ocf='ssh -2 -p 22 wml@tempest.ocf.io'
alias speed='python ~/Desktop/Practice/speedtest-cli/speedtest_cli.py'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export CS61B_LIB_DIR="~/61b/apx/javalib/*"
export CLASSPATH="$CLASSPATH:$CS61B_LIB_DIR:./"
# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

# Git branch in prompt.

export CLICOLOR=1

export LSCOLORS=ExFxBxDxCxegedabagacad

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch) $"

parse_git_branch() {

git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK=~/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# added by Anaconda3 4.2.0 installer
export PATH="$PATH:~/anaconda/bin"

# added by Anaconda3 5.0.1 installer
export PATH="$PATH:/Users/wml/anaconda3/bin"

source ~/.profile
export PYTHONPATH=/Library/Frameworks/Python.framework/Versions/3.5/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
