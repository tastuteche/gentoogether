#!/usr/bin/env bash



win=$(cat ~/.presage_guess_next_window)
active_wid=$(xprop -root | grep _NET_ACTIVE_WINDOW | head -1 | awk '{print $5}' | sed 's/,//' | sed 's/^0x/0x0/')
if [ "x$win" ==  "x" ]; then
    :
elif [ "x$win" ==  "xemacs.Emacs" ]; then
    /r/a/p/opt/bin/wce
else
    wid=$(wmctrl -lpx|grep ' '"$win"' '|awk '{print $1}'|head -1)
    if [[ "x$wid" == "x" ]]; then
        :
    else
        if [[ "x$wid" == "x$active_wid" ]]; then
            #xdotool windowminimize $(xdotool getactivewindow)
            :
        else
            wmctrl -i -a "$wid"
        fi
        
    fi    
fi

