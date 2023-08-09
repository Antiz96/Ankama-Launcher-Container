#!/bin/bash

xhost +si:localuser:"${USER}" &>/dev/null ; /usr/bin/distrobox-enter -r -n ankama-launcher -- /usr/local/bin/ankama-launcher
