# Birghtness change on Linux
This repository contains two simple scripts for changing the brightness level of a linux-based system.

On my Manjaro linux I had trouble changing the brightness because of the the device compatibility. I changed the brightness in terminal by setting the brightness to a specific percentage using  `xrandr`. Also I found the command to get the current birghtness level, so I decided to use those 2 commands to create decrease/increase scripts in zsh and bind them to keys using Manjaro custom shortcuts. 

This works on X11 systems.

## Brightness Decrease/Increase Scripts

### Description:
`brightness_dec.sh`/`brightness_inc.sh` is a Bash script designed to decrease the brightness level of a display using the `xrandr` utility. The script specifically targets the display interface(in this case `eDP`) and changes the brightness by 5%.

### Usage:
1. Grant execution permissions using `chmod +x brightness_dec.sh` and then `chmod +x brightness_inc.sh`.
2. Run the script in a terminal by executing `./brightness_dec.sh`/`brightness_inc.sh`. Or alternatively bind the script to a key using Custom Shortcuts.

### Prerequisites:
- The script requires the `xrandr` utility to be installed on your system.

### Retrieving Display Interface:
To determine the display interface being used on your system run:
   ```bash
   xrandr -q
```
then change the `eDP` in the script.
