#!/bin/bash
# Checks to see if dotfile links are setup properly

# For now this is fairly cut-n-pasted and can be refactored to be more general
# There are better ways to do this. It's in the todo


# .bash_profile
echo "checking .bash_profile"
if [ -L ~/.bash_profile ]; then
  echo " ...good, ~/.bash_profile is a symlink..."
  if [ $(readlink ~/.bash_profile) = ".dotfiles/.bash_profile" ]; then
    echo "  ...and the value is correct: .dotfiles/.bash_profile"
    echo "   ... Great!"
  else
    echo "  ...but the value is not correct, PLEASE FIX."
  fi
else
  if [ -e ~/.bash_profile ]; then
    echo "~/.bash_profile is not a symlink, PLEASE FIX."
  else
    echo "There is no ~/.bash_profile at all, PLEASE FIX."
  fi
fi

# .bashrc
echo "checking .bashrc"
if [ -L ~/.bashrc ]; then
  echo " ...good, ~/.bashrc is a symlink..."
  if [ $(readlink ~/.bashrc) = ".dotfiles/.bashrc" ]; then
    echo "  ...and the value is correct: .dotfiles/.bashrc"
    echo "   ... Great!"
  else
    echo "  ...but the value is not correct, PLEASE FIX."
  fi
else
  if [ -e ~/.bashrc ]; then
    echo "~/.bashrc is not a symlink, PLEASE FIX."
  else
    echo "There is no ~/.bashrc at all, PLEASE FIX."
  fi
fi

# .aliases
echo "checking .aliases"
if [ -L ~/.aliases ]; then
  echo " ...good, ~/.aliases is a symlink..."
  if [ $(readlink ~/.aliases) = ".dotfiles/.aliases" ]; then
    echo "  ...and the value is correct: .dotfiles/.aliases"
    echo "   ... Great!"
  else
    echo "  ...but the value is not correct, PLEASE FIX."
  fi
else
  if [ -e ~/.aliases ]; then
    echo "~/.aliases is not a symlink, PLEASE FIX."
  else
    echo "There is no ~/.aliases at all, PLEASE FIX."
  fi
fi

# .vimrc
echo "checking .vimrc"
if [ -L ~/.vimrc ]; then
  echo " ...good, ~/.vimrc is a symlink..."
  if [ $(readlink ~/.vimrc) = ".dotfiles/.vimrc" ]; then
    echo "  ...and the value is correct: .dotfiles/.vimrc"
    echo "   ... Great!"
  else
    echo "  ...but the value is not correct, PLEASE FIX."
  fi
else
  if [ -e ~/.vimrc ]; then
    echo "~/.vimrc is not a symlink, PLEASE FIX."
  else
    echo "There is no ~/.vimrc at all, PLEASE FIX."
  fi
fi

# .screenrc
echo "checking .screenrc"
if [ -L ~/.screenrc ]; then
  echo " ...good, ~/.screenrc is a symlink..."
  if [ $(readlink ~/.screenrc) = ".dotfiles/.screenrc" ]; then
    echo "  ...and the value is correct: .dotfiles/.screenrc"
    echo "   ... Great!"
  else
    echo "  ...but the value is not correct, PLEASE FIX."
  fi
else
  if [ -e ~/.screenrc ]; then
    echo "~/.screenrc is not a symlink, PLEASE FIX."
  else
    echo "There is no ~/.screenrc at all, PLEASE FIX."
  fi
fi


## Do this later
#
## .vim directory
#echo "checking .vim directory"
#if [ -L ~/.vim ]; then
#  echo " ...good, ~/.vim is a symlink..."
#  if [ $(readlink ~/.vim) = ".dotfiles/.vim" ]; then
#    echo "  ...and the value is correct: .dotfiles/.vim"
#    echo "   ... Great!"
#  else
#    echo "  ...but the value is not correct, PLEASE FIX."
#  fi
#else
#  if [ -e ~/.vim ]; then
#    echo "~/.vim is not a symlink, PLEASE FIX."
#  else
#    echo "There is no ~/.vim at all, PLEASE FIX."
#  fi
#fi
