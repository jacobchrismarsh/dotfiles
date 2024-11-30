#!/bin/bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/powerlevel10k

# Set up the nvim settings
mkdir ~/.config/
ln -s $(pwd)/nvim ~/.config/nvim/
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

# for some reason the brew install doesn't work for the zsh zoxide plugin
cargo install zoxide
brew install rg
brew install fd
brew install htop
brew install fzf && $(brew --prefix)/opt/fzf/install
brew install tmux
brew install lazygit

# Allows us to use plugins that require vim+python3
brew install neovim && python3 -m pip install --user --upgrade pynvim

# Instal tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
