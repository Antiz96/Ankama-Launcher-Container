#!/bin/bash

xhost +si:localuser:"${USER}" &>/dev/null ; /usr/bin/distrobox-enter -n ankama-launcher -- /usr/local/bin/ankama-launcher
