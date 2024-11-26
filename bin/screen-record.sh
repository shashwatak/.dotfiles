#!/bin/env bash

pgrep -x "wf-recorder" && pkill -INT -x wf-recorder && notify-send -h string:wf-recorder:record -t 1000 "Finished Recording" && exit 0

if [[ -n "$1" ]]; then
  echo "get slurp"
  SLURP_GET="$(slurp)"
  echo "get slurp $SLURP_GET"
fi

notify-send -h string:wf-recorder:record -t 1000 "Recording in:" "<span color='#90a4f4' font='26px'><i><b>3</b></i></span>"

sleep 1

notify-send -h string:wf-recorder:record -t 1000 "Recording in:" "<span color='#90a4f4' font='26px'><i><b>2</b></i></span>"

sleep 1

notify-send -h string:wf-recorder:record -t 950 "Recording in:" "<span color='#90a4f4' font='26px'><i><b>1</b></i></span>"

sleep 1

dateTime=$(date +%m-%d-%Y-%H:%M:%S)

if [[ -n $1 ]]; then
  wf-recorder -g "$SLURP_GET" --bframes max_b_frames -f $HOME/Videos/recording-$dateTime.mp4
else
  wf-recorder --bframes max_b_frames -f $HOME/Videos/recording-$dateTime.mp4
fi

