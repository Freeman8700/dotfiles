# go and GOPATH
export GOPATH=$HOME/workspace/go

# dotfiles export
export DOTFILES=$HOME/dotfiles

# Set prompt to be: host:user dir $
# eg. shire:brett dotfiles $
export PS1='\h:\u \W \$ '

# Set the default editor to vim
export EDITOR='vim'

# bash autocompletion support
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Force tmux to assume 256 colors
alias tmux="tmux -2"

# copy tmux buffer to clipboard - OS X only
alias tmcp="tmux show-buffer | pbcopy"

alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

# move to where my go code is located
alias gosrc="cd $GOPATH/src/github.com/brettchalupa"

alias be="bundle exec "

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH="/usr/local/heroku/bin:$PATH"

export PATH=$PATH:$HOME/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin:$HOME/.meteor

# Shopify themekit
export PATH=~/.themekit:$PATH

# For use of Haxe via Homebrew
export HAXE_STD_PATH="/usr/local/lib/haxe/std"
