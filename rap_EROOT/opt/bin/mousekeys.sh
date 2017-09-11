#!/usr/bin/env bash

#https://askubuntu.com/questions/113171/turn-mousekeys-on-off-from-keyboard
#https://ubuntuforums.org/showthread.php?t=1977588&page=2
#https://help.ubuntu.com/stable/ubuntu-help/mouse-mousekeys.html
#https://en.wikipedia.org/wiki/Mouse_keys
STATUS=$(gsettings get org.gnome.desktop.a11y.keyboard mousekeys-enable) #Are mousekeys on (true or false)

if [[ "x$STATUS" == "xtrue" ]]
then
    # gsettings set org.gnome.desktop.a11y.keyboard mousekeys-enable false 
    # echo "Mousekeys are OFF"
    :

else
    gsettings set org.gnome.desktop.a11y.keyboard mousekeys-enable true
    echo "Mousekeys are ON"
fi
#watch -n 1  xkbset ma 60 10 10 5 10
