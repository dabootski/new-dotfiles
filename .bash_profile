export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
CLICOLOR=1
#LSCOLORS=gxfxcxdxbxegedabagacad

alias l="ls -ahlG"

# Turn on Vi-mode
set -o vi

bind "set completion-ignore-case on"

# Vi-mode disables control-l screen clearing, this enables it
bind -m vi-insert "\C-l":clear-screen

# Store lots of history
export HISTSIZE=100000

export PATH=/usr/local/bin:$PATH

# Java
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk"
#export PATH="/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk/Contents/Home/bin":$PATH

# RVM
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Cordova Android
export PATH=${PATH}:~/lib/adt/sdk/platform-tools:~/lib/adt/sdk/tools

source ~/.aliases
