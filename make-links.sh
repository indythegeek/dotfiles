#!/bin/bash
# Setting up the links on a clean host

# Yes, I'm going this with relative commands, not absolute ones.  So sue me.
# There are better ways to do this. It's in the todo

cd ~

# .bash_profile
# Once upon a time we wanted to do different things to non-interactive hosts. That time is over
if [ -e ~/.bash_profile ]; then
  echo "whoops, there is something at ~/.bash_profile, PLEASE FIX."
else
  cd ~
  ln -v -s .dotfiles/.bash_profile .bash_profile
fi

cd ~

# .bashrc
if [ -e ~/.bashrc ]; then
  echo "whoops, there is something at ~/.bashrc, PLEASE FIX."
else
  cd ~
  ln -v -s .dotfiles/.bashrc .bashrc
fi

cd ~

# .aliases
if [ -e ~/.aliases ]; then
  echo "whoops, there is something at ~/.aliases, PLEASE FIX."
else
  cd ~
  ln -v -s .dotfiles/.aliases .aliases
fi

cd ~

# .vimrc
if [ -e ~/.vimrc ]; then
  echo "whoops, there is something at ~/.vimrc, PLEASE FIX."
else
  cd ~
  ln -v -s .dotfiles/.vimrc .vimrc
fi

cd ~

# .screenrc
if [ -e ~/.screenrc ]; then
  echo "whoops, there is something at ~/.screenrc, PLEASE FIX."
else
  cd ~
  ln -v -s .dotfiles/.screenrc .screenrc
fi

cd ~

# .gitconfig
if [ -e ~/.gitconfig ]; then
  echo "whoops, there is something at ~/.gitconfig, PLEASE FIX."
else
  cd ~
  ln -v -s .dotfiles/.gitconfig .gitconfig
fi

cd ~

## Do this later:
#
#cd ~
#
## .vim directory
#if [ -e ~/.vim ]; then
#  echo "whoops, there is something at ~/.vim, PLEASE FIX."
#else
#  cd ~
#  ln -v -s .dotfiles/.vim .vim
#fi
#
#cd ~
