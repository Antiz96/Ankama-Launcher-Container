# Ankama-Launcher-Container

## Table of contents

- [Description](#description)
- [Installation](#installation)
- [Uninstallation](#uninstallation)
- [Usage](#usage)
- [Update](#update)
- [Contributing](#contributing)

## Description

A container including every needed files, packages and dependencies to run the [Ankama launcher](https://www.ankama.com/en/launcher) and the related games (Dofus, Dofus-Retro, Wakfu).  
It is meant to be used with [distrobox](https://github.com/89luca89/distrobox), the container won't be able to launch the Ankama launcher with plain old Docker/Podman *as is*.

Supports **SteamDeck/SteamOS** (given you installed `distrobox` and `podman` in a rootless way as described [here](https://github.com/89luca89/distrobox/blob/main/docs/posts/steamdeck_guide.md)).

*"Why would I use this instead of simply running the Ankama Launcher AppImage directly on my system?"*  
Here are a few reasons why one would want to:

- The AppImage itself isn't enough to run the Ankama launcher and the related games. Indeed, multiple packages and dependencies are required for the AppImage to execute as well as for the games to run properly (including [wine](https://www.winehq.org/) and its numerous *32-bit* libraries and dependencies). This container avoids the need to install those packages directly on your system by providing an "all in one" solution (useful to not clutter your system with those numerous additional packages or if you use an immutable distribution such as SteamOS).
- This solution is distro agnostic, meaning you can install it the exact same way and it is guaranteed to work on any Linux distribution.
- The container is based on the [Arch Linux Docker image](https://hub.docker.com/_/archlinux) which, by its bleeding edge/rolling release nature, provides the latest stable version of the necessary packages and the wine compatibility layer needed to run the games so you get the best compatibility and performance possible.
- This solution provides a transparent host integration so that running the Ankama launcher via the AppImage within the container is no different then running any other application directly from your system.

## Installation

### Prerequisite

Install [distrobox](https://github.com/89luca89/distrobox) as well as [docker](https://github.com/docker/cli) or [podman](https://github.com/containers/podman).  
If the Ankama launcher does not launch, you may additionally need to install the X.org [xhost](https://wiki.archlinux.org/title/Xhost) utility.

SteamOS users have to install `distrobox` and `podman` in a rootless way, as described [here](https://github.com/89luca89/distrobox/blob/main/docs/posts/steamdeck_guide.md).

### Install the container

Pull the container image and initialize it in distrobox:  
*Example below with the `latest` tag, but you can use [any other tagged version if you prefer](https://ghcr.io/antiz96/ankama-launcher).*

- With a regular setup:

```bash
distrobox create -r -n ankama-launcher -i ghcr.io/antiz96/ankama-launcher:latest
```

- With a rootless setup or SteamOS:

*Requires a sudoless/rootless [docker](https://docs.docker.com/engine/security/rootless/) or [podman](https://github.com/containers/podman/blob/main/docs/tutorials/rootless_tutorial.md) setup.*

```bash
distrobox create -n ankama-launcher -i ghcr.io/antiz96/ankama-launcher:latest
```

### Install the host integration

To enhance the integration with the host machine, this repo contains a script as well as a ".desktop" file that allows you to launch the Ankama launcher within the container graphically like you would do with any other application (see the [Usage](#usage) chapter for more details).

To install them, download the archive of the [latest stable release](https://github.com/Antiz96/Ankama-Launcher-Container/releases/latest) and extract it *(alternatively, you can clone this repository via `git`)*.  
Then go into the extracted/cloned directory and run the following command:

- With a regular setup:

```bash
sudo make install
```

- With a rootless setup:

```bash
sudo make install-rootless
```

- With SteamOS:

```bash
./steamos.sh install
```

## Uninstallation

### Uninstall the container

To delete the container, run the following command:

- With a regular setup:

```bash
distrobox rm -r -f ankama-launcher
```

- With a rootless setup or SteamOS:

```bash
distrobox rm -f ankama-launcher
```

### Uninstall the host integration

To remove the host integration, go into the previously extracted/cloned directory and run the following command:

- With a regular or a rootless setup:

```bash
sudo make uninstall
```

- With SteamOS:

```bash
./steamos.sh uninstall
```

## Usage

Simply run the following command in order to run the container and launch the Ankama launcher:

```bash
ankama-launcher-container
```

Alternatively, you can run the `Ankama Launcher Container` application graphically via your application finder like you would do with any other application/program.

## Update

### Upgrade the container

The container will be rebuilt periodically to address any significant changes and prevent potentially breaking ones.

To upgrade the container after a [new release](https://github.com/Antiz96/Ankama-Launcher-Container/releases) has been made, pull the container image to get the new version:  
*Example below with the `latest` tag, but you can use [any other tagged version if you prefer](https://ghcr.io/antiz96/ankama-launcher).*

```bash
docker pull ghcr.io/antiz96/ankama-launcher:latest || podman pull ghcr.io/antiz96/ankama-launcher:latest
```

Then delete the running container running in distrobox and recreate it against the new image:

- With a regular setup:

```bash
distrobox rm -r -f ankama-launcher
distrobox create -r -n ankama-launcher -i ghcr.io/antiz96/ankama-launcher:latest #Replace the tag by the one you pulled if you didn't used "latest"
```

- With a rootless setup or SteamOS:

```bash
distrobox rm -f ankama-launcher
distrobox create -n ankama-launcher -i ghcr.io/antiz96/ankama-launcher:latest #Replace the tag by the one you pulled if you didn't used "latest"
```

To delete the old dangling image after the upgrade, run the following command:

```bash
docker image prune -a || podman image prune -a
```

### Update the host integration

*Updating the host integration at each new release isn't generally necessary. If significant changes are made to the related files which would require an update, it will be noted in the release's notes.*

To update the host integration after a [new release](https://github.com/Antiz96/Ankama-Launcher-Container/releases) has been made, repeat the tasks listed in the [Installation/Host integration chapter](#install-the-host-integration).

## Contributing

You can raise your issues, feedbacks and suggestions in the [issues tab](https://github.com/Antiz96/Ankama-Launcher-Container/issues).  
[Pull requests](https://github.com/Antiz96/Ankama-Launcher-Container/pulls) are welcomed as well!
