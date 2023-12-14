#!/bin/bash
ulimit -n 32768
asterisk &
echo 'Starting asterisk-server in daemon'
trap : TERM INT; sleep infinity & wait
