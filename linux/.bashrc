#!/bin/bash

get_git_branch () {
    if git status &>/dev/null && which git &>/dev/null; then
        echo " (`git rev-parse --abbrev-ref HEAD`)"
    fi
}

PS1="[\[\033[01;35m\]\u\[\033[1;33m\]@\[\033[01;31m\]\h: \[\033[01;34m\]\w\[\033[0;36m\]\$(get_git_branch)\[\033[00m\]]\\$ "
