alias laf='ls -lAF'

alias pls='pulseaudio --start --exit-idle-time=-1 && pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1'
alias dora='proot-distro login fedora --termux-home --isolated'
alias void='proot-distro login void --termux-home --isolated'
PULSE_SERVER=127.0.0.1

PS1='\[\e[0;32m\][\u@\h \w\[]\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

#env vars
export OPCODE6DIR=/usr/lib/csound/plugins64-6.0/
export OPCODE6DIR64=/usr/lib/csound/plugins64-6.0/

 
