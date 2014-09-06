echo "Loading .bash_profile"

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad

#
# Shell config
#
alias l="ls -ahlG"

source ~/.aliases # Load aliases file

set -o vi # Turn on Vi-mode

bind -m vi-insert "\C-l":clear-screen # Vi-mode disables control-l screen clearing, this enables it

export HISTSIZE=100000 # Store lots of history

export PATH=/usr/local/bin:$PATH

bind "set completion-ignore-case on"

#
# Java
#
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk"
#export PATH="/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk/Contents/Home/bin":$PATH

#
# RVM
#
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#
# Git
#
# Enable git auto-complete. Also see ~/git-completion.bash file.
source ~/git-completion.bash

