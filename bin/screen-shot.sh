#!/bin/env bash

dateTime=$(date +%m-%d-%Y-%H:%M:%S)

if [[ -z "$1" ]]; then
  echo "NO SLURP"
  grim $HOME/Pictures/screenshot-$dateTime.png
else
  echo "SLURP: $1"
  grim -g "$(slurp)" $HOME/Pictures/screenshot-$dateTime.png
fi


notify-send -h string:wf-recorder:record -t 1000 "ScreenShot" && exit 0

