#/bin/sh
echo "remote clean build"

source configs

ssh $REMOTE_USER@$TARGET_IP "cd $REMOTE_PATH;rm -r build;rm -f -r bin"

echo "done"