#!/usr/bin/env bash

proxy=$(redis-cli -p 36379 get 'proxy')
if [[ "x$proxy" == "x" ]]; then
    echo "redis-cli -p 36379 set 'proxy' 'http://127.0.0.1:xxxx'"
    exit 1
fi

#https://hastebin.com/fonowacija.bash
#https://github.com/jarun/googler
action=$(echo close | rofi -dmenu -p "Google: ")

search () {
  query=$1
  index=$2

  sel=$(printf "$(googler -p $proxy -n 15 -s $2 --json $1 | jq '.[].url' | sed -e 's/^"//' -e 's/"$//')\nMore\n" | rofi -dmenu)

  case $sel in
    "") exit ;;
    "More") search "$query" $(expr $index + 15) ;;
    *) google-chrome-beta "$sel"
       exit ;;
  esac
}

search "$action" 0
