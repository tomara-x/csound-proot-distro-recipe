
# Csound on Void proot on Termux on Android
Requires around 700MB of space and Android 7+

1. Install termux (from [fdroid](https://f-droid.org/))
2. Execute `pkg install pulseaudio proot-distro`
3. In `~/.bashrc` file add these aliases: (logout (ctrl+d) and relaunch termux after adding them)
```
#to start pulseaudio on termux which will receive the audio from void use the command 'pls'
alias pls='pulseaudio --start --exit-idle-time=-1 && pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1'

#to run void with the same home folder of termux and in isolation from the rest of the system you can use the command 'void'
alias void='proot-distro login void --termux-home --isolated'

# not useful for termux but since we log into void with the same home directory this will be read by void
PULSE_SERVER=127.0.0.1
```
4. Install void by executing `proot-distro install void` and then clear cache `proot-distro clear-cache`
5. Log into void using the alias `void`
6. update everything: `xbps-install -Su` and install our toys: `xbps-install csound vim git netcat bash-completion alsa-utils alsa-plugins-pulseaudio`
7. Optional. Install [csound-vim](https://github.com/luisjure/csound-vim)

# Notes:
1. You might wanna look into `~/.termux/termux.properties`
2. Pinch in and out to change font size!
3. you can swipe left on the termux special buttons to access the thing, you'll figure it out. I don't know how to describe it!
4. Maybe install the `termux:styling` app for changing fonts and colors.
5. In fx/ghost-commander you can add the termux directory as a storage. That way you can browse your termux and lunix files and copy them back and forth with android.
6. Volume-up+1-0 is F1-F10
7. Volume-up+k show/hide the extra buttons
8. Try unexpected keyboard from f-droid, it takes a bit of getting used to but it's worth it
9. the sessions thing is very powerful! try it! swipe right from the left edge of the screen. (ctrl+alt+c)


# Csound on Fedora proot on Termux on Android
I don't use this anymore (void is smaller) but it's usable

This will take around 1GB of space. And sadly this requires Android 7 or higher.

1. Install termux (from [fdroid](https://f-droid.org/))

2. Execute `pkg install pulseaudio` (you'll need it for realtime audio output)

3. In `~/.bashrc` file add these aliases:
```
#to start pulseaudio on termux which will receive the audio from fedora use the command 'pls'
alias pls='pulseaudio --start --exit-idle-time=-1 && pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1'

#to run fedora with the same home folder of termux and in isolation from the rest of the system you can use the command 'dora' after this
alias dora='proot-distro login fedora --termux-home --isolated'
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

And that's it! You have infinite power! You just start a Termux, start pulseaudio, and then login in fedora.


💜
