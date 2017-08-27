#!/usr/bin/env bash

source "/home/$USER/envmon"
source "/home/prefix/envmon"

exec /usr/bin/notify-send "$@"
