#!/usr/bin/env bash



proxy=$(redis-cli -p 36379 get 'proxy')
if [[ "x$proxy" == "x" ]]; then
    echo "redis-cli -p 36379 set 'proxy' 'http://127.0.0.1:xxxx'"
else
    googler -p "$proxy" "$@"
    
fi

