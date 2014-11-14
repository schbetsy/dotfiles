Eventually, this repo will contain configuraiton files for my bash, git, vim, and other tools. I'm currently learning how it all works, so I'm starting with the bare minimum and borrowed code from other developers. I've tried to include attributions where appropriate. Advice and suggestions are welcome.

Currently, I'm using these by sourcing them from the corresponding dotfiles in my home path.
For instance, in `~/.bashrc`, I have this line (and nothing else):
```
source $HOME/<path to bashrc in this repo>
```

In `~/.vimrc`, I have this line only:
```
source <path to local copy of vimrc in this repo>
```

I'm open to suggestions for better ways to handle these links, too.

See license info in LICENSE.txt
