#!/bin/sh 

# Installing Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Generate SSH key
ssh-keygen -o -a 100 -t ed25519

cd ~

ln -sf ~/.dotfiles/Brewfile ~/Brewfile
brew bundle

# ZSH
ln -sf ~/.dotfiles/zsh ~/.zsh
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc

chsh -s /bin/zsh
zplug install

# Git
ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/git/gitignore_global ~/.gitignore_global

# Tmux
ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# Misc
ln -sf ~/.dotfiles/misc/inputrc ~/.inputrc

# Irb
ln -sf ~/.dotfiles/irc/irbrc ~/.irbrc

# Elixir
ln -sf ~/.dotfiles/iex/iex.exs ~/.iex.exs

# Vim
ln -sf ~/.dotfiles/vim ~/.vim
ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc

# GPG
ln -sf ~/.dotfiles/gnupg ~/.gnupg

./.dotfiles/.macos
