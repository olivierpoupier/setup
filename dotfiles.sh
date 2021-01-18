### Environment
# brew
if ! [ -x "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew doctor

brew tap caskroom/cask
#divvy
brew install mas
mas install 413857545
#slack
mas install 618783545
#discord
mas install 985746746
#teams
mas install 1113153706
#excel
mas install 462058435
#word
mas install 462054704
#powerpoint
mas install 462062816
#outlook
mas install 985367838
# npm & packages
brew install node
npm install -g @angular/cli
#python
brew install python
#.net core
brew install --cask dotnet
# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if test "$SHELL" != "/bin/zsh"; then
  chsh -s /bin/zsh
fi

### Dev tools
# iTerm2
brew install --cask iterm2
# postman
brew install --cask postman
# vs code
brew install --cask visual-studio-code

cat << EOF >> ~/.zprofile
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

code --install-extension ormulahendry.dotnet-test-explorer
code --install-extension ms-dotnettools.csharp
code --install-extension mikestead.dotenv
code --install-extension editorconfig.editorconfig
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension davidanson.vscode-markdownlint
code --install-extension ms-python.python
code --install-extension syler.sass-indented
code --install-extension robbowen.synthwave-vscode
# visual studio
brew install --cask visual-studio
# Unity hub
brew install --cask unity-hub

### Dock
# Set smaller icon size
defaults write com.apple.dock tilesize -int 40
# Speed up mission control animations
defaults write com.apple.dock expose-animation-duration -float 0.1
# Set persistent apps in dock
## do that

### Finder
# Show extensions
defaults write -g AppleShowAllExtensions -bool true
# Show hidden files
defaults write com.apple.finder AppleShowAllFiles true
# Search in current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

### I/O
# Disable autocorrect
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
# Enable "natural" scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

killall Dock &> /dev/null
killall Finder &> /dev/null

