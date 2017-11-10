#!/usr/bin/env bash
local_start.sh
tint2.sh
sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
firefox.sh
echo "## source /r/a/p/usr/share/autojump/autojump.bash ##"
