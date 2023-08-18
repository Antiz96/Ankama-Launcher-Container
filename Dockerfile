# Build the container from the Arch Linux base image
FROM archlinux:base-20230723.0.166908

# Basic info
LABEL maintainer="Robin Candau <robincandau@protonmail.com>"
LABEL description="A container including every needed files, packages and dependencies to run the Ankama launcher and the related games (meant to be used with distrobox)."

# Enable the multilib repository
RUN printf "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf

# Update the container, install the necessary packages and remove the pacman cache (to reduce the image size)
RUN pacman -Syy && pacman -Syu --noconfirm fuse nss at-spi2-core cups gtk3 alsa-utils lib32-libpulse wine && rm -f /var/cache/pacman/pkg/*

# Download the Ankama Launcher AppImage
ADD https://download.ankama.com/launcher/full/linux /opt/Ankama/Ankama-Launcher-x86_64.AppImage
RUN chmod 755 /opt/Ankama/Ankama-Launcher-x86_64.AppImage

# Create a custom binary to launch the Ankama Launcher
RUN mkdir -p /usr/local/bin && printf "#!/bin/bash\n\n/opt/Ankama/Ankama-Launcher-x86_64.AppImage" > /usr/local/bin/ankama-launcher && chmod 755 /usr/local/bin/ankama-launcher
