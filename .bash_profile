# Aliases
alias mate='open -a "TextMate"'
alias g='git'
alias ll='ls -lah'
alias chrome='open -a "Google Chrome"'

shopt -s nocaseglob
shopt -s histappend
shopt -s cmdhist

export HISTCONTROL=ignoreboth
export HISTSIZE=1000

PS1="\[\033[0;32m\[[\$(date +%H%M)] [\u@\h:\w]\[\033[0m\]\n\$ "

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

export MMS_DB_URL='jdbc:db2://10.16.1.198:50000/testmms:currentSchema=scari;'
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home
source ~/.prompt
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
