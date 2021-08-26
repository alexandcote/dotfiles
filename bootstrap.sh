#!/bin/sh 

# Installing Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Generate SSH key
ssh-keygen -o -a 100 -t ed25519

cd ~

ln -sf ~/.dotfiles/Brewfile ~/Brewfile
brew bundle

# ZSH
ln -sfn ~/.dotfiles/zsh ~/.zsh
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/zprofile ~/.zprofile

chsh -s /bin/zsh
zplug install

# Git
ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/git/gitconfig.work ~/.gitconfig.work
ln -sf ~/.dotfiles/git/gitignore_global ~/.gitignore_global

# Tmux
ln -sfn ~/.dotfiles/tmux ~/.tmux
ln -sf ~/.tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.tmux/tmux-inactive.conf ~/.tmux-inactive.conf

# Misc
ln -sf ~/.dotfiles/misc/inputrc ~/.inputrc

# Alacritty
mkdir -p ~/.config
rm -rf ~/.config/alacritty
ln -sfn ~/.dotfiles/alacritty/ ~/.config/alacritty

# iterm
plutil -convert binary1 ~/.dotfiles/iterm/com.googlecode.iterm2.xml -o ~/.dotfiles/iterm/com.googlecode.iterm2.plist
ln -sf ~/.dotfiles/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# Karabiner
ln -sfn ~/.dotfiles/karabiner ~/.config/karabiner

# Irb
ln -sf ~/.dotfiles/irc/irbrc ~/.irbrc

# Elixir
ln -sf ~/.dotfiles/iex/iex.exs ~/.iex.exs

# Vim
ln -sfn ~/.dotfiles/vim ~/.vim
ln -sf ~/.vim/vimrc ~/.vimrc

rm -rf ~/.config/nvim
mkdir -p ~/.config/nvim
ln -sf ~/.vim/vimrc ~/.config/nvim/init.vim
ln -sfn ~/.dotfiles/vim/autoload ~/.config/nvim/autoload

# GPG
ln -sfn ~/.dotfiles/gnupg ~/.gnupg

./.dotfiles/.macos
