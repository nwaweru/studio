#!/bin/bash

echo "Starting sync..."

# variables
playlist="https://www.youtube.com/playlist?list=PLRgSHCeagEV4KTedHndOxXLXqZr4okOCA"
options="-i --extract-audio --audio-format mp3"
downloadFolder="/home/$USER/Music/YouTube"

# remove existing songs
rm -rf $downloadFolder && mkdir $downloadFolder

# donwload the entire playlist again (+ new music added)
cd $downloadFolder && youtube-dl $options $playlist

echo "Ready to rock!"