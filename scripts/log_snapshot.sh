#!/bin/bash
# make a snapshot of the loginlog and logdbs folders in a directory specified by an argument to this command

# get root dir
rootdir=$1

# get date
date=$(date '+%Y-%m-%d')

# create path
snapdir="${rootdir}/snapshot${date}/"

mkdir -p $snapdir

echo $snapdir

# now run scp to copy folders
scp -r pi@log.local:/home/pi/logdbs $snapdir
scp -r pi@log.local:/var/www/html/features/images/ $snapdir/featuresimages
scp -r pi@log.local:/var/www/html/blog/images/ $snapdir/blogimages

