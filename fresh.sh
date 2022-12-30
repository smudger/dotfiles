#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Rosetta 2 for Apple Silicon support
# sudo softwareupdate --install-rosetta

# Update Homebrew recipes
# brew update

# Install all our dependencies with bundle (See Brewfile)
# brew tap homebrew/bundle
# brew bundle

# Set default MySQL root password and auth type
# mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"

# Install PHP extensions with PECL
# pecl install imagick memcached redis swoole

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
# $HOME/.composer/vendor/bin/valet install

# Create a Code directory
# mkdir $HOME/Code

# Get the absolute path to this repo
DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
# rm -rf $HOME/.zshrc
# ln -s $DOTFILES/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
# ln -s $DOTFILES/.mackup.cfg $HOME/.mackup.cfg

# Removes any existing kitty config and symlinks our config
rm -rf $HOME/.config/kitty
ln -s $DOTFILES/kitty $HOME/.config/kitty

# Removes any existing neovim config and symlinks our config
rm -rf $HOME/.config/nvim
ln -s $DOTFILES/nvim $HOME/.config/nvim

