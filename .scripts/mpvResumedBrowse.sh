#!/bin/bash
FOLDER="$1"
[[ ! -d "$FOLDER" ]] && exit 1
mpv --pause --terminal=no --input-terminal=no --idle=yes --force-window=immediate --input-ipc-server=/tmp/mpv-browseB-sock &
sleep 1
LAST_DATE_FILE="./browseDate"
LAST_DATE=$(cat "$LAST_DATE_FILE" 2>/dev/null || echo "0")
IFS= readarray -d '' sorted_files < <(
  find "$FOLDER" -type f -printf "%T@|%p\0" | sort -z -n
)
for TFILE in "${sorted_files[@]}"; do
FILE="${TFILE#*|}"
TIME="${TFILE%%|*}"
[[ "$TIME" < "$LAST_DATE" ]] && continue
unset DELETE
 echo -en "\033[1A\033[2K\033[1A\033[2K  $FILE Delete? [y/N]"
echo "{ \"command\": [\"loadfile\", \"$FILE\"] }" | socat - /tmp/mpv-browseB-sock > /dev/null
read DELETE
[[ "$DELETE" == "y" ]] && rm "$FILE"
echo "$TIME" > "$LAST_DATE_FILE"
done
