#/bin/sh
echo "debug start remote"

source configs

# some clean up to be sure
ssh $REMOTE_USER@$TARGET_IP 'killall -q gdbserver'

# start gdbserver with app
ssh -n -f $REMOTE_USER@$TARGET_IP "sh -c 'nohup gdbserver localhost:'"$TARGET_PORT"' '"$REMOTE_APP_PATH"' > /dev/null 2>&1 &'"

echo "done"