#!/usr/bin/env bash
if pgrep -af '^firefox$' >/dev/null; then
    echo 'firefox running'
else
    firefox &>/dev/null &
fi
