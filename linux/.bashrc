#!/bin/bash

# Goal to organize dotfiles
# https://github.com/mathiasbynens/dotfiles
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

cd $HOME

#setting the terminal title to PWD # NOT WORKING if using with tmux
PS1="\[\033]0;\w\007\]";
PS1+="\n[\D{%m/%d/%y - %r}] "; # date and time
PS1+="\[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\]";
PS1+=" $ ";
export PS1;
export TERM=xterm-256color

# My custom aliases
alias ll="ls -la"

# Easier navigation: .., ..., ...., ....., ~ and -
alias \
    ..="cd .." \
    ...="cd ../.." \
    ....="cd ../../.." \
    .....="cd ../../../.." \
    -="cd -"

# Tmux related aliases
alias \
    tn="tmux -u new" \
    tnn="tmux -u new -s" \
    ta="tmux -u attach" \
    tt="vim ~/.tmux.conf"

# bashrc related aliases
alias \
    bb="vim ~/.bashrc"\
    bs="source ~/.bashrc && echo -e 'bashrc sourced'"

# vimrc related aliases
alias \
    vv="vim ~/.vimrc" \
    vs="source ~/.vimrc && echo - 'vimrc sourced'"

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'

#set -o vi
