#!/bin/sh

# ---------------------START-install-xDebug----------------------
# remove already installed Homebrew (if it have)
sudo rm -rf /Users/zaczac/Library/Caches/Homebrew/portable-ruby-2.3.7.leopard_64.bottle.tar.gz

# reinstall Homebrew via source
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”

# curl PEAR from source
curl -O http://pear.php.net/go-pear.phar

# install PEAR
sudo php -d detect_unicode=0 go-pear.phar

# find path of "php_dir"
pecl config-get php_dir

# set chown mod for "php_dir" path
sudo chown zaczac /usr/bin/php

# set chown mod for PEAR directory
sudo chown zaczac /usr/local/pear/share/pear

# install missing autoconf in BREW (one of dependencies)
brew install autoconf

# install x-Debug
sudo pecl install xdebug

# ---------------------END-install-xDebug----------------------
