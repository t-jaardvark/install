#!/bin/bash
# install.sh
pdir="ls-md5.sh"
bin=""

bin="ls-md5"
[ -f "$HOME/git/repo/mybin/$bin" ] && rm "$HOME/git/repo/mybin/$bin"
ln $HOME/git/repo/myscripts/$pdir/$bin $HOME/git/repo/mybin/$bin
