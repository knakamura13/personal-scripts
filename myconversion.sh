#!/bin/bash

# Read input string
#read -p "Choose a file: " input_file
input_file=$1

if [ -z "$input_file" ]; then
	echo "An input_file is required."
	exit
fi

if [ ! -f "$input_file" ]; then
    echo "$input_file does not exist."
    exit
fi

filter="scale='min(1920,iw)':'min(1080,ih)'"
file_name=${input_file%.*}
subs="$file_name.srt"

if [ ! -f "$subs" ]; then
	ffmpeg -i $input_file -map "0:s:m:language:eng?" $subs -c:s hdmv_pgs_subtitle -hide_banner -loglevel panic || {
		# No subtitles found (skipping this step)
		echo "No subtitles found (skipping)"
	}
fi

if [ -f "$subs" ]; then
	filter="$filter,subtitles=$subs:force_style='Fontname=Consolas,Fontsize=26,BackColour=&H80000000,Spacing=0.2,Outline=0,Shadow=0.8'"
fi

ffmpeg -i "$input_file" \
	-c:v libx264 \
	-r 29.97 \
	-vf $filter \
	-crf 22 \
	-c:a aac \
	-b:a 128K \
	-ar 44100 \
	-rc-lookahead 120 \
	-bf 12 \
	-refs 6 \
	-subq 7 \
	-aq-mode 3 \
	-weightb 0 \
	-weightp 0 \
	-coder vlc \
	-psy-rd 1,0.15 \
	-movflags faststart \
	"$file_name [HB].mp4"