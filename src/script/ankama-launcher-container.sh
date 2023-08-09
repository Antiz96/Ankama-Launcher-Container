#!/bin/bash

xhost +si:localuser:"${USER}" &>/dev/null ; distrobox-enter -r -n ankama-launcher -- /usr/local/bin/ankama-launcher
