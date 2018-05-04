#!/bin/bash
for filename in to_process/*; do
    echo $filename "---> processed/"$( echo $filename | cut -d '/' -f2 | cut -d '.' -f1 ).mp4 
    ffmpeg -loglevel panic -i $filename -vcodec copy -acodec copy processed/$( echo $filename | cut -d '/' -f2 | cut -d '.' -f1 ).mp4
done

rm -r to_process/*
