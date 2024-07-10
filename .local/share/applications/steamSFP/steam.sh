ls pgrep -x "steam-runtime" > /dev/null || ~/.local/share/applications/steamSFP/SFP_UI &
FILE=`mktemp /tmp/skinSteam.XXXXXXXXXX`
env PRESSURE_VESSEL_SHARE_HOME=1 /usr/bin/steam-runtime -cef-enable-debugging -console -dev -no-browser "$@"
rm "$FILE"
