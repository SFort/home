if pgrep -x "steam"; then
    echo "beep"
else
    ~/.local/share/applications/steamSFP/SFP_UI &
fi
env PRESSURE_VESSEL_SHARE_HOME=1 /usr/bin/steam-runtime -cef-enable-debugging -console -dev -no-browser "$@"
