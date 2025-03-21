#!/bin/bash

cd /home/paloma/aur/librewolf-bin

res=$(git pull)

if [[ "$res" != *"Bereits aktuell."* ]]; then
    makepkg -si
fi

cd /home/paloma/aur/visual-studio-code-bin


res=$(git pull)
if [[ "$res" != *"Bereits aktuell."* ]]; then
    makepkg -si
fi

