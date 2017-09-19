#!/usr/bin/env bash



pid=$(pgrep -af 'emacs --daemon'|awk '{print $1}')
active_wid=$(xprop -root | grep _NET_ACTIVE_WINDOW | head -1 | awk '{print $5}' | sed 's/,//' | sed 's/^0x/0x0/')
if [[ "x$pid" == "x" ]]; then
    :
else
    wid=$(wmctrl -lpx|grep ' '"$pid"' '|awk '{print $1}'|head -1)
    if [[ "x$wid" == "x" ]]; then
        :
    else
        if [[ "x$wid" == "x$active_wid" ]]; then
            xdotool windowminimize $(xdotool getactivewindow)
        else
            wmctrl -i -a "$wid"
        fi
        
    fi
    
fi

#wmctrl -a 'emacs@sabayon'
