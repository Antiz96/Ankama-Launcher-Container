# Changelog

All notable changes to this project will be documented in this file.

## [v1.3.4](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.3.4) - 2025-01-18

- Update base image to base-20250118.0.299213 by @Antiz96 in #66

## [v1.3.3](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.3.3) - 2025-01-05

- Update base image to base-20250105.0.295189 by @Antiz96 in #65

## [v1.3.2](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.3.2) - 2024-12-07

- Update README by @Antiz96 in #63
- Update image to base-20241207.0.286687 by @Antiz96 in #64

## [v1.3.1](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.3.1) - 2024-10-16

- Switch from firefox to chromium by @Antiz96 in #61

## [v1.3.0](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.3.0) - 2024-10-16

- Install xdg-utils and firefox in the container to fix the initial login to Ankama services by @Antiz96 in #59
- Remove confusing sentences in README by @Antiz96 in #60

## [v1.2.8](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.8) - 2024-10-16

- Fix the curl command to download the Ankama Launcher by @Antiz96 in #58

## [v1.2.7](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.7) - 2024-10-16

- Switch to new Ankama launcher URL by @Antiz96 in #56
- Rebuild container against archlinux:base-20241016.0.270464 by @Antiz96 in #57

## [v1.2.6](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.6) - 2024-09-18

- Periodic Rebuild by @Antiz96 in #55

## [v1.2.5](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.5) - 2024-07-17

- Periodic Rebuild by @Antiz96 in #54

## [v1.2.4](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.4) - 2024-06-16

- Periodic Rebuild by @Antiz96 in #53

## [v1.2.3](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.3) - 2024-04-13

- Add a trust path for users by @Antiz96 in #49
- Periodic rebuild of the container by @Antiz96 in #51

## [v1.2.2](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.2) - 2024-03-30

- Rebuild to address the xz backdoor/security issue + switch to Arch's DockerHub repository by @Antiz96 in #48

## [v1.2.1](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.1) - 2024-02-06

- Periodic rebuild for glibc 2-39 update by @Antiz96 in #46

## [v1.2.0](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.2.0) - 2024-01-22

- Use a proper pacman command to clean cache by @Antiz96 in #37
- Update base image to 20240101.0.204074 by @Antiz96 in #38
- Fix pacman command to clean cache by @Antiz96 in #39
- Ignore DL4006 in Hadolint by @Antiz96 in #42
- Correct download link for the Ankama Launcher AppImage by @Antiz96 in #43

## [v1.1.5](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.1.5) - 2023-12-13

- Switch to a self-hosted runner for CI-CD + Add actionlint to CI by @Antiz96 in #32
- Little optimization to the Dockerfile + Rebuild by @Antiz96 in #33
- Switch to rootless Docker on the runner for CI/CD by @Antiz96 in #34

## [v1.1.4](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.1.4) - 2023-11-11

- Switch to action checkout v4 in CI by @Antiz96 in #29
- Switch to docker/login-action@v3 in CD by @Antiz96 in #30
- Bump image tag to 20231105.0.189722 by @Antiz96 in #31

## [v1.1.3](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.1.3) - 2023-10-11

- Update link for distrobox/podman installation guide for the steamdeck by @Antiz96 in #24
- Remove custom config to accept 2 trailing spaces for mdl by @Antiz96 in #25
- Rebuild to fix curl CVE-2023-38545 by @Antiz96 in #26

## [v1.1.2](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.1.2) - 2023-09-08

- Add more permissive permissions to the /opt/Ankama folder to prevent failing updates by @Antiz96 in #23

## [v1.1.1](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.1.1) - 2023-09-04

- Rebuild to include the latest Ankama Launcher's version @Antiz96 in #20

## [v1.1.0](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.1.0) - 2023-08-24

- Add support for the SteamDeck and SteamOS by @Antiz96 in https://github.com/Antiz96/Ankama-Launcher-Container/pull/16
- Remove the `Terminal` statement for the rootless and SteamOS desktop files by @Antiz96 in https://github.com/Antiz96/Ankama-Launcher-Container/pull/18
## [v1.0.3](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.0.3) - 2023-08-21

- Rebuild to include the new Ankama launcher version by @Antiz96 in #14

## [v1.0.2](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.0.2) - 2023-08-18

- Use a precise tag for the Arch base image by @Antiz96 in #13

## [v1.0.1](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.0.1) - 2023-08-10

- Add basic info to the Dockerfile (Maintainer, Description) and remove the pacman cache during build by @Antiz96 in https://github.com/Antiz96/Ankama-Launcher-Container/pull/11
- Correct the update/upgrade instructions in the README by @Antiz96 in https://github.com/Antiz96/Ankama-Launcher-Container/pull/12

## [v1.0.0](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v1.0.0) - 2023-08-10

- Initial Release

<!-- generated by git-cliff -->
