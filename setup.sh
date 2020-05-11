/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo chown -R $(whoami):admin /usr/local
brew update
brew install mas
mas install 1024640650 # CotEditor
# mas install 896624060 # Kobito
mas install 425424353 # The Unarchiver
mas install 539883307 # LINE
mas install 497799835 # Xcode

brew cask install alfred
brew cask install bettertouchtool
brew cask install iterm2
brew cask install google-japanese-ime
# brew cask install sourcetree
# brew cask install path-finder
# brew cask install skype
brew cask install google-chrome
# brew cask install battle-net
brew cask install steam

sudo xcode-select --install
brew install zsh
brew install wget
brew install curl
brew install tmux
brew install ag
brew install git
brew install python

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh
