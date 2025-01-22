#!/bin/bash

xhost +si:localuser:"${USER}" &>/dev/null ; distrobox-enter -n ankama-launcher -- /usr/local/bin/ankama-launcher
