dotfiles
========

Indy's dotfile configs, bash, zsh, vim. Largely a merge from different online sources. Each sub source retains it's own license.  My changes outside of those sources should be considered MIT License.


Make scripts
------------

 1. Checkout to ~/.dotfiles and run "make-links.sh". This makes symlinks to top level dotfiles and directories. This keeps there from being a ~/.git folder in the top level homedir, confusing any git tools.

 1. Once this is done, use "check-links.sh" to make sure everything is setup right.

 1. update symlinks portion of README.md as they are added to these scripts

These scripts are a bit of a nightmare, but this: http://dotfiles.github.io/ contains some good candidates for replacing hacky linking scripts.

Symlinks Created
----------------

    ~/.bash_profile ->  ~/.dotfiles/.bash_profile
    ~/.bashrc       ->  ~/.dotfiles/.bashrc
    ~/.aliases      ->  ~/.dotfiles/.aliases
    ~/.vimrc        ->  ~/.dotfiles/.vimrc
    ~/.screenrc     ->  ~/.dotfiles/.screenrc
    ~/.gitconfig    ->  ~/.dotfiles/.gitconfig

TODO
====

    ~/.vim/         ->  ~/.dotfiles/.vim/
    ~/.zshrc        ->  ~/.dotfiles/.zshrc
    ~/.oh-my-zsh    ->  ~/.dotfiles/.oh-my-zsh

Incorporate other sources
-------------------------

Merge these in:

My Dotfiles                                       | Original Source                                          | License
------------------------------------------------- | -------------------------------------------------------- | -------
.vim/                                             | https://github.com/elzr/vim-json                         | MIT
.oh-my-zsh/                                       | https://github.com/robbyrussell/oh-my-zsh.git            | MIT
.oh-my-zsh/custom/plugins/zsh-syntax-highlighting | https://github.com/zsh-users/zsh-syntax-highlighting.git | BSD Custom


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
* Add local changes to oh-my-zsh theme while preserving ability to take upstream updates
* make oh-my-zsh custom theme host aware
* add oh-my-zsh links
* Rawhide's bell trick
* .vimrc/.vim/
  * wordwrap
  * spelling (in Linux?  MacVim?  Cream?)
  * Figure out to apply vim status config in split windows


Enchancements
-------------

* Incorporate something from http://dotfiles.github.io/ to replace my hacky linking scripts.
* Make the host-specific configs a generic system for incorporating any master + host-specific configs.  This will likely need to differ based on program (shells include things well, ssh does not)
* Make an add-not-replace-config.sh for people that aren't me to add these configs to their existing configs, probably using:

> echo "source ~/.dotfiles/.zshrc" >> ~/.zshrc

