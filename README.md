# Csound on Fedora proot on Termux on Android

This will take around 1GB of space. And sadly this requires Android 7 or higher.

1. Install termux (from [fdroid](https://f-droid.org/))

2. Execute `pkg install pulseaudio` (you'll need it for realtime audio output)

3. In `~/.bashrc` file add these aliases:
```
#to start pulseaudio on termux which will receive the audio from fedora use the command 'pls'
alias pls='pulseaudio --start --exit-idle-time=-1 && pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1'

#to run fedora with the same home folder of termux and in isolation from the rest of the system you can use the command 'dora' after this
alias dora='proot-distro login fedora --termux-home --isolated'

# to run the 2 commands (starting pulseaudio and logging into fedora) in one command
alias plsdora='pls && dora'
```
(These are totally optional, they're just for easy access. Change them up as you'd like. Also you'll need to logout (ctrl+d) and reopen termux for them to take effect)

4. Install the actual distro by executing:
```
pkg install proot-distro
proot-distro install fedora
```

5. Login to fedora using the alias above or whatever you prefer. (no need to start pulse now as you'll need to logout later)

6. Optional but important if you need manual pages. Remove/comment the line `tsflags=nodocs` in `/etc/dnf/dnf.config`

7. let's update and install stuff (you need the update command at first)
```
dnf up
#Those are just the packages I need. You might want different stuff.
dnf install csound vim git netcat man man-pages bash-completion
```

8. Add the following line to the file `/etc/bashrc` (I'm messy, I know)
```
PULSE_SERVER=127.0.0.1
```

9. Optional. Install [csound-vim](https://github.com/luisjure/csound-vim). There's also a csound mode thing for emacs if you wanna try that.

10. Logout of fedora (ctrl+d) and execute `proot-distro clear-cache`

And that's it! You have infinite power! You just start a Termux, start pulseaudio, and then login in fedora. (the sessions thing is very powerful! try it! swipe right from the left edge of the screen.)

### Notes:
1. You might wanna look into `~/.termux/termux.properties`
2. Pinch in and out to change font size!
3. you can swipe left on the termux special buttons to access the thing, you'll figure it out. I don't know how to describe it!
4. Maybe install the `termux:styling` app for changing fonts and colors.
5. In fx/ghost-commander you can add the termux directory as a storage. That way you can browse your termux and lunix files and copy them back and forth with android.

###### If you're a power user, consider trying void instead of fedora. I think it would be smaller in size, but I'm too lazy to configure it right!
💜
