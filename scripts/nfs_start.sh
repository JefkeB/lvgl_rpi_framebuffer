#/bin/sh
echo "nfs start"

source configs

# on host
# create nfs folder to mount source code
mkdir -p $LOCAL_NFS_MOUNT
# mount source code in nfs folder
echo "sudo for mount source on nfs mountpoint"
sudo mount --bind  $LOCAL_SOURCE_ROOT $LOCAL_NFS_MOUNT

# on remote rpi mount nfs
ssh $REMOTE_USER@$TARGET_IP "sudo mount -t nfs $LOCAL_IP:$LOCAL_NFS_PATH $REMOTE_MOUNT"
 