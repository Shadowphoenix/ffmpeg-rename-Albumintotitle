#!/bin/bash
read -p "Enter the sourcedirectory : " SEARCHDIR
echo Searchdirectory is "$SEARCHDIR"

read -p "Enter the targetdirectory : " TARGETDIR
echo Targetdirectory is "$TARGETDIR"

cd "$SEARCHDIR"
touch $SEARCHDIR/Filenames.txt

for f in *.mp3  #for all mp3 files in workingdirectory where f is name of file
do
    ARTIST=$(ffprobe -loglevel error -show_entries format_tags=artist -of default=noprint_wrappers=1:nokey=1 "$f") #Defines variable ARTIST as the output of ffprobe grabbing the Artist-Metadata of file f.
    TITLE=$(ffprobe -loglevel error -show_entries format_tags=title -of default=noprint_wrappers=1:nokey=1 "$f")
    ALBUM=$(ffprobe -loglevel error -show_entries format_tags=album -of default=noprint_wrappers=1:nokey=1 "$f") 
    
    FILENAME = "$ARTIST$ALBUM$TITLE.mp3"
    echo "$FILENAME" >> ./filenames.txt 
    #cp -n "$f" "$TARGETDIR"/"$ARTIST$ALBUM$TITLE.mp3"
   unset ARTIST
   unset TITLE
   unset ALBUM
   unset FILENAME
done
