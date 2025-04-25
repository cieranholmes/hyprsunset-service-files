#!/bin/sh

sleep 5

# Kill current hyprsunset session
killall -q hyprsunset

# Get the current hour (in 24-hour format)
current_hour=$(date +%H)

echo "Current hour is $current_hour"

# If it’s 6pm to 7am, hyprsunset -t 5000
# Else hyprsunset -t 6500
if [ "$current_hour" -ge 19 ] || [ "$current_hour" -le 6 ]; then
  echo "Changing to nighttime hyprsunset"
  hyprsunset -t 3400
else
  echo "Changing to default hyprsunset"
  hyprsunset -t 6500
fi
