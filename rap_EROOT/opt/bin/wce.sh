#!/usr/bin/env bash



pid=$(pgrep -af 'emacs --daemon'|awk '{print $1}')
if [[ "x$pid" == "x" ]]; then
    :
else
    wid=$(wmctrl -lpx|grep ' '"$pid"' '|awk '{print $1}'|head -1)
    if [[ "x$wid" == "x" ]]; then
        :
    else
        wmctrl -i -a "$wid"
    fi
    
fi

#wmctrl -a 'emacs@sabayon'
