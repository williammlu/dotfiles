git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export PATH=/usr/local/bin:$PATH
brew update
brew install vim && brew install macvim
brew link macvim


make clean
ruby extconf.rb
make


cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
