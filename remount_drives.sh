#!/bin/sh

SSD1=$(diskutil list | grep -i "SSD" | awk {'print $8'})
LOCALDISK=$(diskutil list | grep -i "Local" | awk {'print $9'})

echo "SSD1 is mounted on: $SSD1"
echo "LOCALDISK is mounted on: $LOCALDISK"

sudo diskutil unmount "/dev/$SSD1"
sudo diskutil unmount "/dev/$LOCALDISK"

sudo mv /Volumes/Local\ Disk* ~/Desktop
sudo mv /Volumes/SSD1* ~/Desktop

sudo diskutil mount "/dev/$SSD1"
sudo diskutil mount "/dev/$LOCALDISK"

