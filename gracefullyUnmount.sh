#!/bin/bash

# Check if user has root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root"
  exit 1
fi

# Check if a disk name was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 /dev/disk_name"
  exit 1
fi

# Get the mount point of the disk
mount_point=$(mount | grep "$1" | awk '{print $3}')

# If the disk is not mounted, exit
if [ -z "$mount_point" ]; then
  echo "Disk is not mounted"
  exit 1
fi

# Unmount the disk
umount "$1"

# Wait for the disk to be unmounted
while grep -qs "$mount_point" /proc/mounts; do
  echo "Waiting for disk to be unmounted..."
  sleep 1
done

echo "Disk has been unmounted"
