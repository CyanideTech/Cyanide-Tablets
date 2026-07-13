#!/usr/bin/env bash

options="⏻ Shutdown\n Reboot\n Suspend\n󰤄 Hibernate"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "" \
    -theme ~/.config/rofi/materialpurple.rasi \
    -theme-str '
        window {
            fullscreen: true;
            background-color: rgba(20,15,35,0.92);
        }

        mainbox {
            children: [listview];
            padding: 180px;
        }

        listview {
            columns: 2;
            lines: 2;
            spacing: 60px;
        }

        element {
            padding: 45px;
            border-radius: 28px;
            background-color: rgba(255,255,255,0.06);
            text-color: #ffffff;
            border: 2px;
            border-color: rgba(255,255,255,0.05);
        }

        element selected {
            background-color: #C792EA;
            text-color: #ffffff;
            border: 2px;
            border-color: rgba(255,255,255,0.25);
        }

        element-text {
            horizontal-align: 0.5;
            vertical-align: 0.5;
            font: "JetBrainsMono Nerd Font 22";
        }
    ')

case "$chosen" in
    *Shutdown*) systemctl poweroff ;;
    *Reboot*) systemctl reboot ;;
    *Suspend*) systemctl suspend ;;
    *Hibernate*) systemctl hibernate ;;
esac