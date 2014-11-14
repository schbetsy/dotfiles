In this repo are my slowly-evolving dotfiles. I'm starting the journey of understanding and customizing my configuration. This repo will reflect the shift from canned and borrowed configuration files to something of my own. The bashrc was originally borrowed heavily from my boss (@bendycode), with bash prompt configuration from @losingkeys. vimrc forked from @begriffs.

Advice, suggestions, and pull requests are welcome.

Installation
------------
Currently, I'm using these by sourcing them from the corresponding dotfiles in my home path.
For instance, in `~/.bashrc`, I have this line (and nothing else):
```
source $HOME/<path to local copy of bashrc in this repo>
```

In `~/.vimrc`, I have this line only:
```
source <path to local copy of vimrc in this repo>
```

I'm open to suggestions for better ways to handle these links, too.

License
-------
See license info in LICENSE.txt
