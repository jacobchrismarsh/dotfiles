# Make sure that I own my home directory 🙄
sudo chown -R $(whoami) $HOME

# Shorten the key repeat time
defaults write -g KeyRepeat -int 2         # default is 2
defaults write -g InitialKeyRepeat -int 13 # Default is usually 15

# Set up the nvim settings
mkdir ~/.config/
ln -s $(pwd)/nvim ~/.config/nvim/
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

# Download homebrew and add it to PATH var
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
eval "$(/opt/homebrew/bin/brew shellenv)" >>/Users/jacobmarshall/.zprofile

brew install mackup
mackup restore

# Get github setup
brew install gh
gh auth login

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc # oh-my-zsh gets rid of the .zshrc you had, so I restore it
sudo git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH/custom/plugins/zsh-vi-mode
sudo git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH/custom/themes/powerlevel10k

# Download a version of Vim that is compiled with python3
brew install python3   # for vim
alias python="python3" # weird hack, got it from the internet
brew install vim
unalias python
source ~/.zshrc # .zshrc contains a line that points `vim` to the homebrew version

brew install zoxide # Smart `cd` replacement
brew install rg
brew install fd
brew install htop
brew install fzf && $(brew --prefix)/opt/fzf/install
brew install tmux
brew install lazygit
# Allows us to use plugins that require vim+python3
brew install neovim && python3 -m pip install --user --upgrade pynvim

brew install --cask iterm2
brew install --cask karabiner-elements
brew install --cask bettertouchtool
brew install --cask bartender  # menu bar manager
brew install --cask cleanshot  # screenshot tool
brew install --cask appcleaner # best tool for deleting apps and their related files

brew install mas       # Mac app store client for CLI
mas install 904280696  # Things 3
mas install 975937182  # Fantastical
mas install 1333542190 # 1Password
mas install 1569813296 # 1Password for Safari
mas install 430798174  # hazeover distraction dimmer
mas install 1480933944 # vimari safari extension

# Install Rust!
curl https://sh.rustup.rs -sSf | sh
