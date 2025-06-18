#!/bin/bash
FOLDER="$1"
[[ ! -d "$FOLDER" ]] && exit 1
mpv --pause --terminal=no --input-terminal=no --idle=yes --force-window=immediate --input-ipc-server=/tmp/mpv-browseB-sock &
sleep 1
LAST_DATE_FILE="./browseDate"
LAST_DATE=$(cat "$LAST_DATE_FILE" 2>/dev/null || echo "1970-01-01")
for FILE in $(find "$FOLDER" -type f -newermt "$LAST_DATE" -printf "%T@ %p\n" | sort -n | cut -d' ' -f2-); do
unset DELETE
FILE=$(realpath "$FILE")
 echo -en "\033[1A\033[2K $FILE Delete? [y/N]"
echo "{ \"command\": [\"loadfile\", \"$FILE\"] }" | socat - /tmp/mpv-browseB-sock > /dev/null
read DELETE
[[ "$DELETE" == "y" ]] && rm "$FILE"
date -r "$FILE" +"%Y-%m-%d %H:%M:%S" > "$LAST_DATE_FILE"
done
