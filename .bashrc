# ~/.bashrc: technically executed by bash(1) for non-login shells.
# But I use it for all logins, by sourcing from ~/.bash_profile because that's how I roll

# If zsh exists run it, and it makes the rest of this file moot.  If not, we fall back
# The $SSH_TTY test allows rsync, scp and other non-interactive 
# commands to work/work quickly. Yes, I know this the point of the 
# .bashrc/.bash_profile seperation, but I've been using .bashrc for too many years to 
# go back now.

##
## Whoa. Not ready for zsh yet!
## Also, this is the last remenant of "do something different when non-interactive 
##  (eg, with rsync)"
##
#
#if [ "$SSH_TTY" ]; then
#  if [ -f /usr/bin/zsh ]; then
#    exec /usr/bin/zsh
#  fi
#fi

## ALIASES
# ~/.aliases, instead of adding them here directly.

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

## PATH
# Home bin
PATH=$PATH:$HOME/bin


## HISTORY

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

## COMPLETION

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

## TERMINAL MANAGEMENT

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

## PROMPT

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

##
## This is used to make custom short user and hostnames, but if this .bashrc is reused elsewhere
## then it falls back
# Create a custom short hostname

if [ "$(hostname -f)" = "rigoletto.indythegeek.com" ]; then
    SHORTHOST="rigo"
else
    SHORTHOST="$(hostname)"
fi    

if [ "$(whoami)" = "msiverd" ]; then
    SHORTUSER="me"
else
    SHORTUSER="$(whoami)"
fi    

# Username @ shortened hostname : bold cwd 

PS1="$SHORTUSER@$SHORTHOST:\[\033[1m\]\w\[\033[0m\] $ "

## COLOR

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Now for color support provided by grc, which is newer fangled that dircolors
# I am selectivly turning on the aliases found in /usr/share/grc/conf.*
if $(grc &>/dev/null) && [ "$TERM" != dumb ]
then
    # Generic tailing, grc rexexp will catch log type
    alias tail='grc tail'
    # Direct commants
    alias netstat='grc netstat'
    alias traceroute='grc traceroute'
    alias ifconfig='grc ifconfig'
    alias dig='grc dig'
    alias mtr='grc mtr'
    alias ping='grc ping'
    alias diff='grc diff'
    alias mount='grc mount'
    alias ps='grc ps'
    # Compiler commands
    alias make='grc make'
    alias gcc='grc gcc'
    alias configure='grc configure'
fi

# For the root bashrc, I like to use this in either /root/.bashrc or /etc/bashrc
# I paste it here for reference.  It even if I uncommented it, it won't actually 
# be sourced from this file because using 'sudo -i' or 'su -' nukes the previous 
# shell's variables.  And you are using those, right?  Right?
#
#if [ $USER = "root" ]; then
#    PS1="\[\e[1;31m\]ROOT\[\e[0m\]@\h.compliant:\[\e[1m\]\w\[\e[0m\] $ "
#else
#    PS1='\h:\w \u\$ '
#fi
