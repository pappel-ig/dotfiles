#! /bin/bash
pactl set-source-mute "$(pactl get-default-source)" toggle
