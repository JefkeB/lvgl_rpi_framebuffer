#/bin/sh
echo "remote cmake"

source configs

ssh $REMOTE_USER@$TARGET_IP "mkdir -p $REMOTE_PATH/build;cd $REMOTE_PATH/build;cmake .."

echo "done"