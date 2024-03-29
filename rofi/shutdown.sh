#!/bin/bash

chosen=$(echo -e "Desligar\nReiniciar\nBloquear\nSair" | rofi -dmenu -i)

if [[ $chosen = "Desligar" ]]; then
    shutdown -h 0
elif [[ $chosen = "Reiniciar" ]]; then
	shutdown -r 0
elif [[ $chosen = "Bloquear" ]]; then
	i3lock --color=000000
elif [[ $chosen = "Sair" ]]; then
	i3-msg exit
fi
