dotfiles
========

Indy's dotfile configs, bash, zsh, vim. Largely a merge from different online sources. Each sub source retains it's own license.  My changes outside of those sources should be considered MIT License.

symlinks
--------

    TODO

TODO
====

Incorporate other sources
-------------------------

Merge these in:

My Dotfiles                                       | Original Source                                          | License
------------------------------------------------- | -------------------------------------------------------- | -------
.vim/                                             | https://github.com/puppetlabs/puppet-syntax-vim.git      | Apache
.oh-my-zsh/                                       | https://github.com/robbyrussell/oh-my-zsh.git            | MIT
.oh-my-zsh/custom/plugins/zsh-syntax-highlighting | https://github.com/zsh-users/zsh-syntax-highlighting.git | BSD Custom

Make scripts
------------

Checkout to ~/.dotfiles and run "make-links.sh". This makes symlinks to top level dotfiles and directories. This keeps there from being a ~/.git folder in the top level homedir, confusing any git tools.

Once this is done, use "check-links.sh" to make sure everything is setup right.

update symlinks portion of README.md as they are added to these scripts

TODO Tasks
----------

* checking .vimrc
* checkin "original" mac and linux bashrc
* make .bashrc cross platform
* make .bashrc links
* add zsh call to .bashrc
* checkin .zshrc from oh-my-zsh template
* checkin "current" .zshrc as update to template
* make .zshrc cross platform
* checkin .aliases to host-specific/.../.aliases.local
* add .aliases.local to .bashrc and .zshrc
* distall a cross platform .aliases
* Add local changes to oh-my-zsh theme
* make oh-my-zsh custom theme host aware 
* add oh-my-zsh links
* Rawhide's bell trick
* .vimrc/.vim/
  * wordwrap
  * spelling (in Linux?  MacVim?  Cream?)
  * Figure out to apply vim status config in split windows


Enchancements
-------------

* Add a help to the linking scripts
* Make make-links.sh and check-links.sh use functions rather than the copy/paste mess they currently are
* Make make-links.sh and check-links.sh the same script that use flags.
* Make the host-specific configs a generic system for incorporating any master + host-specific configs.  This will likely need to differ based on program (shells include things well, ssh does not)
* Make an add-not-replace-config.sh for people that aren't me to add these configs to their existing configs, probably using:

> echo "source ~/.dotfiles/.zshrc" >> ~/.zshrc

