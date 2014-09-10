export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# get aliases
source $HOME/dev/dotfiles/aliases

# Append to history file
shopt -s histappend

export CLICOLOR=1
export DISPLAY=:0.0
export VISUAL=/usr/bin/vim
export HISTSIZE=10000 # Store 10,000 history entries
export HISTCONTROL=ignoredups # don't add duplicate entries to command history
export EDITOR=vim
export GEMDOC=$(\gem environment gemdir)/doc
export LC_CTYPE=en_US.UTF-8
export LESS="FRX"
export LSCOLORS=cxgxcxdxbxegedabagacad
export PGOPTIONS='-c client_min_messages=WARNING'
export PSQL_EDITOR='vim -c"set syntax=sql"'
export RI="--format ansi --width 80"
export RSPEC=true
export AUTOFEATURE=true
export RUBYOPT=rubygems

# Command prompt setup
source ~/dev/dotfiles/command_prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;34m\]$(_hostname_if_remote) \[\033[01;32m\]\w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\]$(_vc_remote_status_or_blank)\[\033[01;31m\]$(_count_jobs_or_blank) \[\033[01;33m\]\$\[\033[00m\] '
# \[\033[01;30m\] = gray
# \[\033[01;31m\] = salmon
# \[\033[01;32m\] = green
# \[\033[01;33m\] = yellow
# \[\033[01;34m\] = violet
# \[\033[01;35m\] = pink
# \[\033[01;36m\] = cyan
# \[\033[01;37m\] = white
# \[\033[00m\] = default

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
