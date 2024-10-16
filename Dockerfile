# Build the container from the Arch Linux base image
FROM archlinux/archlinux:base-20241016.0.270464

# Basic info
LABEL maintainer="Robin Candau <robincandau@protonmail.com>"
LABEL description="A container including every needed files, packages and dependencies to run the Ankama launcher and the related games (meant to be used with distrobox)."

# Enable the multilib repository
RUN printf "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf

# Update the container, install the necessary packages and remove the pacman cache (to reduce the image size)
RUN pacman -Syyu --noconfirm fuse nss at-spi2-core cups gtk3 alsa-utils lib32-libpulse wine && yes | pacman -Scc

# Download the Ankama Launcher AppImage
RUN mkdir /opt/Ankama/ && curl -L 'https://download.ankama.com/launcher-dofus/full/linux' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -H 'Accept-Language: fr-FR,en-US;q=0.7,en;q=0.3' -H 'Accept-Encoding: gzip, deflate, br' -H 'Referer: https://www.ankama.com/' -H 'Connection: keep-alive' -H 'Cookie: cf_clearance=_bsXnjXvzk3PSekIekMQpT5suy0EgvfyJOWeB3TA5vs-1703325144-0-2-764d1ac1.535c371.214c4521-0.2.1703325144; GUID=7F9222204488F906E9D6712F6EBF068C01D2C57959FA94E390980B1F7B8A3DA1123B326910E9C2D6EB2274FE1071D436; SID=162ed35e4b7f781615e41ad42cd4d0a6; ADWRF=47401555' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: same-site' -H 'Sec-Fetch-User: ?1' -o /opt/Ankama/Ankama-Launcher-x86_64.AppImage && chmod -R 777 /opt/Ankama/

# Create a custom binary to launch the Ankama Launcher
RUN mkdir -p /usr/local/bin && printf "#!/bin/bash\n\n/opt/Ankama/Ankama-Launcher-x86_64.AppImage" > /usr/local/bin/ankama-launcher && chmod 755 /usr/local/bin/ankama-launcher
