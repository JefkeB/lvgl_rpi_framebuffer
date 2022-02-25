#/bin/sh
echo "debug stop/kill remote"

source configs

ssh $REMOTE_USER@$TARGET_IP 'killall gdbserver; cat /dev/urandom > /dev/fb0  2>/dev/null'

echo "done"