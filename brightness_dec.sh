#!/bin/zsh

# get current brightness level
current_brightness=$(xrandr --prop --verbose | grep -A10 eDP | grep "Brightness" | awk '{print $2}')

# convert current bright. -> float
current_brightness_float=$(echo "scale=2; $current_brightness" | bc)

# calculate new brightness level with -5%
new_brightness_float=$(echo "$current_brightness_float - 0.05" | bc)

# limit to 1(100%)
if (( $(echo "$new_brightness_float > 1.0" | bc -l) )); then
  new_brightness_float=1.0
fi

# set new brightness level
xrandr --output eDP --brightness $new_brightness_float
