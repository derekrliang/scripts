#!/bin/sh

EFI_DISK=$(diskutil list | grep -i EFI | awk {'print $6'})

echo "Found EFI on $EFI_DISK"

sudo mkdir /Volumes/EFI
sudo mount -t msdos "/dev/$EFI_DISK" "/Volumes/EFI"

echo "Successfully mounted EFI!"
