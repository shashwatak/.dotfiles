#!/bin/sh
xrandr \
  --output DP-1 \
    --primary \
    --mode 2560x1440 \
    --pos 0x0 \
    --rotate normal \
    --scale 0.7 \
  --output DP-2 --off \
  --output DP-3 --off \
  --output HDMI-1 --off \

  
