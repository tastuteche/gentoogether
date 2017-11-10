#!/usr/bin/env bash
if pgrep -af 'tint2$' >/dev/null; then
    echo 'tint2 running'
else
    tint2 &>/dev/null &
fi
