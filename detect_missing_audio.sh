#!/bin/bash
MISSING="/Users/kjnakamura/Movies/__missing_audio__/"
FILES="/Users/kjnakamura/Movies/*.mp4"

mkdir -p "$MISSING"

for f in $FILES; do
    contains_audio=$(ffprobe -i "$f" -show_streams -select_streams a -loglevel error | grep 'codec_type=')

    if [ -z "$contains_audio" ]; then
        # Audio is missing
        echo $f
        mv $f $MISSING
    fi
done
