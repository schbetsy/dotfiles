export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Store 10,000 history entries
HISTSIZE=10000
# Don't store duplicates
HISTCONTROL=erasedups

# get aliases
source $HOME/dev/dotfiles/aliases

# Append to history file
shopt -s histappend

CLICOLOR=1
DISPLAY=:0.0
VISUAL=/usr/bin/vim
EDITOR="$VISUAL"
GEMDOC=$(\gem environment gemdir)/doc
LC_CTYPE=en_US.UTF-8
LESS="FRX"
LSCOLORS=cxgxcxdxbxegedabagacad
PGOPTIONS='-c client_min_messages=WARNING'
PSQL_EDITOR='vim -c"set syntax=sql"'
RI="--format ansi --width 80"
RSPEC=true
AUTOFEATURE=true
RUBYOPT=rubygems

# Command prompt setup
GIT_PS1_SHOWDIRTYSTATE=1
PS1=export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

export VISUAL EDITOR LESS RI PSQL_EDITOR CLICOLOR LSCOLORS PGOPTIONS LC_CTYPE DISPLAY GEMDOC RSPEC AUTOFEATURE RUBYOPT HISTSIZE HISTCONTROL GIT_PS1_SHOWDIRTYSTATE PS1

## Auto-completion
sources=(`brew --prefix`/etc/bash_completion
         ~/.git-completion
         `brew --prefix git`/etc/bash_completion.d/git-completion.bash
         `brew --prefix`/Library/Contributions/brew_bash_completion.sh)
for src in ${sources[@]}; do
  [ -f $src ] && . $src
done

# Use VI mode in bash
set -o vi

# define the pair function
source "$HOME/.pair"
# show the previous pairing state
pair

# ClojureScript resources
export CLOJURESCRIPT_HOME="$HOME/code/clojurescript"

[ ! -f "$HOME/.bashrc.local" ] || . "$HOME/.bashrc.local"
eval "$(~/dev/moz/moz-commands/bin/moz init -)"
