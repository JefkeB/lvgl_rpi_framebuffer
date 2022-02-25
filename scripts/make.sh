#/bin/sh
echo "remote make"

source configs

ssh $REMOTE_USER@$TARGET_IP "cd $REMOTE_PATH/build;make -j4"

echo "done"