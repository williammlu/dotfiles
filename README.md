# Dotfiles
Personal dotfiles and more in bare git repository to be used on MacOS with Iterm2.

## Quickstart:

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/williammlu/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
~/.
```

See more details about bare Git repos at https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
