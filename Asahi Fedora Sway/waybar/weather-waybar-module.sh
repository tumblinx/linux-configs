#!/bin/bash

WEATHER_PATH=$HOME/.config/waybar/weather.py
#GEOLOCATOR_PATH=$HOME/src/scripts/geolocateme.py

#LOCATION=$($GEOLOCATOR_PATH)
#LAT=$(echo "$LOCATION" | awk '{split($0,l,";"); print l[1]}')
#LON=$(echo "$LOCATION" | awk '{split($0,l,";"); print l[2]}')

$WEATHER_PATH --lat "39.32529" --lon "-82.10190" --output-format '{"text": "{{current.icon}} {{current.temperature}}°C", "alt": "{{city}}: {{current.temperature}}°C, {{current.description_long}} -> {{next.temperature}}°C, {{next.description_long}}", "tooltip": "{{city}}: {{current.temperature_min}}°C -> {{current.temperature_max}}°C"}'
