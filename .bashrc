alias laf='ls -lAF'
#to start pulseaudio on termux which will receive the audio from fedora use the command 'pls'
alias pls='pulseaudio --start --exit-idle-time=-1 && pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1'

#to run fedora with the same home folder of termux and in isolation from the rest of the system you can use the command 'dora' after this
alias dora='proot-distro login fedora --termux-home --isolated'
alias void='proot-distro login void --termux-home --isolated'

# to run the 2 commands
alias plsdora='pls && dora'
alias posu='pls && osu'
PS1='\[\e[0;32m\][\u@\h \w\[]\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '
#PULSE_SERVER=127.0.0.1


