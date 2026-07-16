#!/usr/bin/env bash

sudo pacman -S rofi --noconfirm
sudo pacman -S kitty --noconfirm
sudo pacman -S waybar --noconfirm
sudo pacman -S hyprpaper --noconfirm
sudo pacman -S cosmic-files --noconfirm

sudo rm -rf ~/.config/hypr/hyprland.lua
cp rofi ~/.config -f -r
cp hypr ~/.config -f -r
cp waybar ~/.config -f -r
cp kitty ~/.config -f -r
cp wallpapers ~/ -f -r
