#!/bin/bash -eu

source /root/bin/envsetup.sh

if [ -e "/mnt/connectedUSB" ]; then
  if mountpoint -q /mnt/connectedUSB; then
      umount -l /mnt/connectedUSB
  fi
  mount $DATA_DRIVE /mnt/connectedUSB
else
  mkdir /mnt/connectedUSB
  mount $DATA_DRIVE /mnt/connectedUSB
fi