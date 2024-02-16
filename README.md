
# Raspberry Pi 400 Media Server

## Current Stack
This project uses images and info from [LinuxServer.io](https://docs.linuxserver.io/)

 - [Dockge](https://dockge.kuma.pet/)
 - [Heimdall](https://heimdall.site/)
 - [Overseerr](https://overseerr.dev/)
 - [Plex](https://www.plex.tv/)
 - [Prowlarr](https://prowlarr.com/)
 - [Radarr](https://radarr.video/)
 - [Sonarr](https://sonarr.tv/)
 - [SABnzbd](https://sabnzbd.org/)

Instead of utilising torrents for downloads, this project make use of newsgroups (Usenet). Tested using [NZBGeek](https://nzbgeek.info/) and [Newshosting](https://www.newshosting.com/).

## OS, SSH and Static IP Setup (Local)
1. Install Ubuntu Server OS using [rpi-imager](https://formulae.brew.sh/cask/raspberry-pi-imager). **MAKE SURE YOU CHOOSE SERVER, NERD!**

2. Enable SSH (Don't be a dweeb, use SSH keys) [Guide here](https://ubuntu.com/server/docs/service-openssh).

3. Setup a static IP on the Pi using netplan. [Guide here](https://ubuntu.com/server/docs/network-configuration). Take note of the IP you choose, we'll use that to connect via SSH.

## Docker, Containers & Updates (Remote via SSH)

 1. Using the keys you generated above SSH into the Pi, and clone this repo into your desired location

 2. Navigate into the repo and use `chmod +x update_and_install_packages.sh`, then execute the script with`./update_and_install_packages.sh` this will update and upgrade system packages along with installing the docker engine and additional required packages.

 3. Next use `chmod +x create_directories.sh` &`./create_directories.sh` this will create the required directory structure. Navigate into `dockge` and start the container using `docker compose up -d`. You'll be able to find the dockge web panel at http://*PI_STATIC_IP*:5501/
    
 4. Navigate out of `dockge` and into the `compose` directory and then into each of the subdirectories using `docker compose up -d`. This will start each of the required containers in deattached mode.

## Service Setup


